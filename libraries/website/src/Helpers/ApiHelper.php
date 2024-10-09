<?php

namespace Atomiclab\GenularApi\Helpers;

/**
 * The ApiHelper class provides various utility methods to support API functionality,
 * including caching mechanisms and data format conversions.
 */
class ApiHelper {
    /**
     * Generates a cache key based on the request parameters.
     *
     * @param array $requestParameters The request parameters used to generate the cache key.
     * @return string The generated cache key.
     */
    public function getCacheKey($requestParameters) {
        ksort($requestParameters);
        return md5(json_encode($requestParameters));
    }
    /**
     * Retrieves data from the cache using the provided cache key.
     *
     * @param string $cacheKey The cache key used to retrieve data.
     * @return mixed|null The data retrieved from the cache or null if no data is found.
     */
    public function getFromCache($cacheKey) {
        // Construct the path using substrings of the cache key
        $cacheFilePath = __DIR__ . "/../../storage/" . 
                         substr($cacheKey, 0, 4) . '/' . 
                         substr($cacheKey, 4, 4) . '/' .
                         substr($cacheKey, 8, 4) . '/' .
                         substr($cacheKey, 12, 4) . "/{$cacheKey}.json";

        if (file_exists($cacheFilePath)) {
            $jsonData = file_get_contents($cacheFilePath);
            return json_decode($jsonData, true);
        }
        return null;
    }
    /**
     * Stores data in the cache using the provided cache key.
     *
     * @param string $cacheKey The cache key used for storing data.
     * @param mixed $data The data to be stored in the cache.
     */
    public function storeInCache($cacheKey, $data) {
        // Construct the directory path
        $cacheDirPath = __DIR__ . "/../../storage/" . 
                        substr($cacheKey, 0, 4) . '/' . 
                        substr($cacheKey, 4, 4) . '/' .
                        substr($cacheKey, 8, 4) . '/' .
                        substr($cacheKey, 12, 4);

        // Create the directory if it doesn't exist
        if (!file_exists($cacheDirPath)) {
            mkdir($cacheDirPath, 0777, true);
        }

        // Store the data
        $cacheFilePath = "{$cacheDirPath}/{$cacheKey}.json";
        file_put_contents($cacheFilePath, json_encode($data));
    }
    
    /**
     * Removes duplicate entries from an array based on a specified key.
     *
     * @param array $items The array from which duplicates should be removed.
     * @param string $keyField The key used to determine uniqueness among the items.
     * @return array The array with duplicates removed.
     */
    public function removeDuplicates($items, $keyField) {
        $uniqueItems = [];
        $trackedKeys = [];

        foreach ($items as $item) {
            // Check if the specific key exists and its value hasn't been tracked yet
            if (isset($item[$keyField]) && !in_array($item[$keyField], $trackedKeys)) {
                $trackedKeys[] = $item[$keyField];
                $uniqueItems[] = $item;
            }
        }

        return $uniqueItems;
    }

    /**
     * Checks if any string in an array starts with a specified prefix.
     *
     * This function iterates over each element in the provided array and checks
     * if the element starts with the given prefix. The comparison is case-sensitive.
     *
     * @param array $array The array of strings to be checked.
     * @param string $prefix The prefix to be checked against the beginning of each string in the array.
     *
     * @return bool Returns true if at least one of the strings in the array starts with the prefix; otherwise, false.
     *
     * Example usage:
     *
     * $array = ['singleCellExpressions.effectSizes.someField', 'otherField'];
     * $prefix = 'singleCellExpressions.effectSizes';
     * $result = fieldStartsWith($array, $prefix);
     * // $result would be true because one array item starts with the specified prefix.
     */
    public function fieldStartsWith($array, $prefix) {
        foreach ($array as $item) {
            if (strpos($item, $prefix) === 0) {
                return true;
            }
        }
        return false;
    }

    /**
     * Converts the response data into CSV format.
     *
     * @param array $responseData The response data to be converted into CSV format.
     * @return string The converted CSV data.
     */
    public function convertToCSV($responseData) {
        // Initialize an output buffer
        $output = fopen('php://temp', 'r+b');

        // Process results if they exist
        if (!empty($responseData['results'])) {
            // Flatten the first result to get the headers
            $firstResult = $this->flattenDocument($responseData['results'][0]);
            fputcsv($output, array_keys($firstResult));

            // Write data rows
            foreach ($responseData['results'] as $document) {
                $flatDocument = $this->flattenDocument($document);
                fputcsv($output, $flatDocument);
            }
        }

        // Rewind the buffer and return its contents
        rewind($output);
        $csvContent = stream_get_contents($output);
        fclose($output);

        return $csvContent;
    }
    /**
     * Flattens a nested array or document into a single level array with concatenated keys.
     *
     * @param array|object $document The document or array to flatten.
     * @param string $prefix The prefix to prepend to each key in the flattened array (used for recursion).
     * @return array The flattened document.
     */
    public function flattenDocument($document, $prefix = '') {
        $flattened = [];

        foreach ($document as $key => $value) {
            // Concatenate the prefix and key to create a flattened key
            $flattenedKey = $prefix === '' ? $key : "{$prefix}.{$key}";

            if ($value instanceof \MongoDB\Model\BSONDocument || $value instanceof \MongoDB\Model\BSONArray || is_array($value)) {
                // Recursively flatten nested arrays or documents
                $nested = $this->flattenDocument($value, $flattenedKey);
                foreach ($nested as $nestedKey => $nestedValue) {
                    $flattened[$nestedKey] = $nestedValue;
                }
            } else {
                // Assign simple values directly
                $flattened[$flattenedKey] = $value;
            }
        }

        return $flattened;
    }

/**
     * Filters and processes 'singleCellExpressions.effectSizes' within a document.
     *
     * @param array $document The document to process.
     * @param ApiHelper $apiHelper An instance of the ApiHelper class to access utility functions.
     * @return array The processed document with filtered 'singleCellExpressions.effectSizes'.
     */
    function filterAndProcessSingleCellExpressions($document, 
        $fieldsFilter, 
        $linkedEntitiesDoc, 
        $lineagesDoc,
        $markerScoresDoc,
        $filterByTreshold = true,
        $filterByCellsLineages = "root",
        $queryValues,
        $removeOtherCells = false) {


        // Check for 'singleCellExpressions.effectSizes' and process if required
        if ($this->fieldStartsWith($fieldsFilter, 'singleCellExpressions.effectSizes')) {

            if (isset($document['singleCellExpressions']['effectSizes'])) {
                if (!is_array($document['singleCellExpressions']['effectSizes'])) {
                    $document['singleCellExpressions']['effectSizes'] = json_decode(json_encode($document['singleCellExpressions']['effectSizes']), true);
                }

                $newEffectSizes = []; // Initialize a new array to store processed items

                foreach ($document['singleCellExpressions']['effectSizes'] as $item) {
                    if (isset($item['c']) && $item['c'] === 'A') {
                        $cellId = $item['i'] ?? '';
                        // Check if cell_id starts with "CL", if not prepend "CL" and pad with zeros
                        if (strpos($cellId, 'CL') !== 0) {
                            $cellId = 'CL' . str_pad($cellId, 7, '0', STR_PAD_LEFT);
                        }

                        $newItem = [
                            'cell_id' => $cellId,
                            'context' => $item['c'], // 'c' is already confirmed to be 'A'
                            'markerScore' => isset($item['s']) ? $item['s'] : null,
                        ];
                        $newEffectSizes[] = $newItem;
                    }
                }



                $newEffectSizes = $this->removeDuplicates($newEffectSizes, 'cell_id');
                
                if($removeOtherCells && !empty($queryValues)){
                    $newEffectSizes = array_filter($newEffectSizes, function($item) use ($queryValues){
                        return in_array($item['cell_id'], $queryValues);
                    });
                }


                $newEffectSizes = $this->filterEffectSizes($newEffectSizes, $markerScoresDoc, $filterByTreshold);

 
                if($filterByCellsLineages !== "both"){
                    // filter by lineage
                    $newEffectSizes = $this->filterEffectSizesLineage($newEffectSizes, true, $lineagesDoc, $filterByCellsLineages);
                }

                $newEffectSizes = $this->addNamesToEffectSizes($newEffectSizes, $linkedEntitiesDoc);
                
                $document['singleCellExpressions']['effectSizes'] = $newEffectSizes;

                // Remove the 'singleCellExpressions' field if it's empty
                if (empty($document['singleCellExpressions']['effectSizes'])) {
                    unset($document['singleCellExpressions']);
                }
            }
        }

        return $document;
    }

    /**
     * Adds cell names to each item in the effect sizes array based on the linked entities document.
     *
     * @param array $effectSizes The effect sizes data to be enriched with cell names.
     * @return array The effect sizes data with added cell names as 'term'.
     */
    public function addNamesToEffectSizes($effectSizes, $linkedEntitiesDoc) {
        $newEffectSizes = [];

        // Assuming $linkedEntitiesDoc is available within this context
        $cells =  $linkedEntitiesDoc ?? [];
        $cells = json_decode(json_encode($cells), true);

        foreach ($effectSizes as $item) {
            // Check if the cell ID exists in the linked entities document
            if (isset($item['cell_id']) && isset($cells[$item['cell_id']])) {
                // Add the name from the linked entities as 'term' to the item
                $item['cell_term'] = $cells[$item['cell_id']]['name'] ?? 'Unknown';
            } else {
                // If no name is found, assign a default value or leave as is
                $item['cell_term'] = 'Unknown';
            }

            $newEffectSizes[] = $item;
        }

        return $newEffectSizes;
    }


    /**
     * Filters effect sizes data based on cell lineage, allowing the choice between keeping only root or only child cells.
     *
     * @param array $effectSizes Array of effect sizes data to be filtered.
     * @param bool $only_root Whether to filter out child cells. If true, keeps only root cells; otherwise, keeps only child cells.
     * @return array Filtered array of effect sizes data.
     */
    public function filterEffectSizesLineage($effectSizes, $only_root = true, $lineagesDoc, $cells_lineages = "root") {
        $filteredEffectSizes = [];

        // Assuming $lineagesDoc is available within this context
        $lineages = $lineagesDoc ?? [];
        $lineages = json_decode(json_encode($lineages), true);

        foreach ($effectSizes as $item) {
            if ($cells_lineages === "root") {
                // Keep the item if it's a root cell
                if ($this->isRootCell($item['cell_id'], $lineages)) {
                    $item['cell_lineage'] = 'root';
                    $filteredEffectSizes[] = $item;
                }
            } else if ($cells_lineages === "child") {
                // Keep the item if it's NOT a root cell (i.e., it is a child cell)
                if (!$this->isRootCell($item['cell_id'], $lineages)) {
                    $item['cell_lineage'] = 'child';
                    $filteredEffectSizes[] = $item;
                }
            }else{
                $filteredEffectSizes[] = $item;
            }
        }

        return $filteredEffectSizes;
    }

    /**
     * Checks if a given cell ID is a root cell in its lineage.
     *
     * @param string $cellId The cell ID to check.
     * @param array $lineages The lineage information, mapping root cells to their descendants.
     * @return bool Whether the cell is a root cell.
     */
    private function isRootCell($cellId, $lineages) {
        // A cell is considered a root if it's a key in the lineages array
        return array_key_exists($cellId, $lineages);
    }


    public function filterEffectSizes($effectSizes, $markerScoresDoc, $filterByTreshold) {

        $newEffectSizes = [];
        // Check if markerScoresDoc is set and contains the relevantScoreThreshold data
        if ($markerScoresDoc && isset($markerScoresDoc['relevantScoreThreshold'])) {
            $markerScores = $markerScoresDoc['relevantScoreThreshold'];
            // Iterate through the effectSizes array and filter entries

            foreach ($effectSizes as $item) {


                
                // Ensure the necessary data is available
                if (isset($item['cell_id'], $item['markerScore'])) {
                    $cellId = $item['cell_id'];



                    // Ensure both variables are treated as floats
                    $markerScore = (float)$item['markerScore'];
                    $overallScore = isset($markerScores[$cellId]['overall']) ? (float)$markerScores[$cellId]['overall'] : null;

                    // Check if 'overall' key exists and compare floating-point numbers correctly
                    if ($overallScore !== null && $markerScore > $overallScore && $filterByTreshold === true) {
                        
                        $item['scoreThreshold'] = $markerScores[$cellId]['overall'];
                        $foldChange = $item['markerScore'] / $item['scoreThreshold'];
                        $item['foldChange'] = $foldChange;

                        $newEffectSizes[] = $item;  // Keep this item
                    }else if($filterByTreshold === false){
                       
                        $item['scoreThreshold'] = $markerScores[$cellId]['overall'];
                        $foldChange = $item['markerScore'] / $item['scoreThreshold'];
                        $item['foldChange'] = $foldChange;
                        $newEffectSizes[] = $item;  // Keep this item
                    }
                }
            }
        }
        return $newEffectSizes;
    }
}
