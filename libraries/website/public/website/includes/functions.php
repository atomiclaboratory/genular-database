<?php

function trimArrays(&$array, $limit = 20) {
    foreach ($array as $key => &$value) {
        if (is_array($value)) {
            // Apply limit to all arrays, not just the last one
            $value = array_slice($value, 0, $limit);
            // Recurse to handle nested arrays
            trimArrays($value, $limit);
        }
    }
}

function fetchCellData($pageID, $queryValues = [], $limit = 25) {
    $apiUrl = $_ENV['WEB_URL'] . "/api/v1/cells/suggest?api_key=". $_ENV['API_KEY'];
    $payload = json_encode([
        "queryValues" => $queryValues, 
        "responseType" => "json",
        "page" => $pageID,
        "limit" => $limit
    ]);

    $ch = curl_init($apiUrl);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Content-Type: application/json',
        'Content-Length: ' . strlen($payload)
    ]);

    $response = curl_exec($ch);
    curl_close($ch);

    if ($response) {
        return json_decode($response, true); // Decoding from JSON to associative array
    }

    return null;
}

function searchGenesForCell($queryValues = [], $limit = 1000, $organismType = [9606]) {
    $apiUrl = $_ENV['WEB_URL'] . "/api/v1/cells/search?api_key=" . $_ENV['API_KEY'];
    $payload = json_encode([
        "queryValues" => $queryValues,
        "fieldsFilter" => [
            "geneID", "symbol", "crossReference.enseGeneID", "ontology",
            "singleCellExpressions.effectSizes.i", "singleCellExpressions.effectSizes.s", "singleCellExpressions.effectSizes.c"
        ],
        "searchType" => "or",
        "orderBy" => "geneID",
        "organismType" => $organismType,
        "sortDirection" => "asc",
        "responseType" => "json",
        "page" => 1,
        "limit" => $limit
    ]);

    $ch = curl_init($apiUrl);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Content-Type: application/json',
        'Content-Length: ' . strlen($payload)
    ]);

    $response = curl_exec($ch);
    curl_close($ch);

    if ($response) {
        return json_decode($response, true); // Decoding from JSON to associative array
    }

    return null;
}


function fetchGeneData($pageID) {
    $apiUrl = $_ENV['WEB_URL'] . "/api/v1/gene/search?api_key=". $_ENV['API_KEY'];
    $payload = json_encode([
        "queryFields" => [],
        "queryValues" => [],
        "fieldsFilter" => [],
        "searchType" => "or",
        "orderBy" => "geneID",
        "sortDirection" => "asc",    
        "responseType" => "json",
        "matchType" => "regex",
        "organismType" => [],
        "ontologyCategories" => [],
        "page" => $pageID,
        "limit" => 25
    ]);

    $ch = curl_init($apiUrl);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Content-Type: application/json',
        'Content-Length: ' . strlen($payload)
    ]);

    $response = curl_exec($ch);
    curl_close($ch);

    if ($response) {
        return json_decode($response, true); // Decoding from JSON to associative array
    }

    return null;
}

function fetchGeneDetails($geneID, $excludeFields = ["singleCellExpressions.effectSizes"]) {
    $apiUrl = $_ENV['WEB_URL'] . "/api/v1/gene/search?api_key=". $_ENV['API_KEY'];
    $payload = json_encode([
        "queryFields" => ["geneID"],
        "queryValues" => [$geneID],
        "excludeFields" => $excludeFields,
        "fieldsFilter" => [],
        "searchType" => "or",
        "orderBy" => "geneID",
        "sortDirection" => "asc",
        "responseType" => "json",
        "matchType" => "regex",
        "organismType" => [],
        "page" => 1,
        "limit" => 1
    ]);

    $ch = curl_init($apiUrl);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_POST, true);
    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
    curl_setopt($ch, CURLOPT_HTTPHEADER, [
        'Content-Type: application/json',
        'Content-Length: ' . strlen($payload)
    ]);

    $response = curl_exec($ch);
    curl_close($ch);

    if ($response) {
        return json_decode($response, true);
    }

    return null;
}

function formatCellLLMInput($cellDetails) {
    // Prepare the base information
    $llm_input = "Cell ID: " . ($cellDetails['cell_id'] ?? 'N/A') . "\n";
    $llm_input .= "Cell Name: " . ($cellDetails['cell_name'] ?? 'N/A') . "\n";

    $description = $cellDetails['description'] ?? [];
    if (!empty($description)) {
        $llm_input .= "Description: " .$description . "\n";
    }

    // Prepare synonyms
    $synonyms = $cellDetails['synonyms'] ?? [];
    if (!empty($synonyms)) {
        $llm_input .= "Synonyms: " . implode(", ", array_map('ucfirst', $synonyms)) . "\n";
    }

    // Prepare genes
    $genes = $cellDetails['genes'] ?? [];
    if (!empty($genes)) {
        $genesDescriptions = array_map(function($gene) {
            $geneInfo = "Gene Symbol: " . ($gene['symbol'] ?? 'N/A') . "\n";
            $geneInfo .= "Ensembl ID: " . ($gene['crossReference']['enseGeneID'] ?? 'N/A') . "\n";

            // Prepare pathways/ontology information for each gene
            if (isset($gene['ontology']) && count($gene['ontology']) > 0) {
                $ontologyTerms = array_map(function($ontology) {
                    return ucfirst(strtolower(trim($ontology['term'] ?? '')));
                }, $gene['ontology']);
                $ontologyIds = array_map(function($ontology) {
                    return $ontology['id'] ?? '';
                }, $gene['ontology']);
                $ontology = !empty($ontologyTerms) && !empty($ontologyIds) ? array_combine($ontologyTerms, $ontologyIds) : [];
                if (!empty($ontology)) {
                    uksort($ontology, 'strnatcasecmp');
                    $geneInfo .= "Pathways/Ontology: " . implode(", ", array_keys($ontology)) . "\n";
                }
            }

            return $geneInfo;
        }, array_slice($genes, 0, 10));

        if(count($genesDescriptions) > 1){
            $llm_input .= "Genes:\n" . implode("\n", $genesDescriptions) . "\n";    
        }
    }

    // Combine with a predefined environment variable if needed
    $text = $_ENV['LLM_CELL_DETAILS_INPUT'] . " " . $llm_input;

    // Ensure that the final input does not exceed a word limit
    $llm_input = truncateToWordLimit($text, 1000);

    return $llm_input;
}


function formatLLMInput($geneDetails){
    $ontologyTerms = isset($geneDetails['ontology']) ? array_map(function($ontology) {
                        return ucfirst(strtolower(trim($ontology['term'] ?? '')));
                    }, $geneDetails['ontology']) : [];

    $ontologyIds = isset($geneDetails['ontology']) ? array_map(function($ontology) {
        return $ontology['id'] ?? '';
    }, $geneDetails['ontology']) : [];

    $ontology = !empty($ontologyTerms) && !empty($ontologyIds) ? array_combine($ontologyTerms, $ontologyIds) : [];

    if (!empty($ontology)) {
        // Sort terms alphabetically
        uksort($ontology, 'strnatcasecmp');
    }

    $llm_input = "Gene: " . ($geneDetails['symbol'] ?? 'N/A') . "\n";
    $llm_input .= "Description: " . ($geneDetails['desc'] ?? 'N/A') . "\n";
    $llm_input .= "Ensembl ID: " . ($geneDetails['crossReference']['enseGeneID'] ?? 'N/A') . "\n";

    if(count($ontology) > 0){
        $llm_input .= "Pathways/Ontology: " . implode(", ", array_keys($ontology)) . "\n";
    }

    $cellExpressions = isset($geneDetails['singleCellExpressions']['effectSizes']) ? array_map(function($effectSizes) {
        return $effectSizes['cell_term'] ?? 'N/A';
    }, $geneDetails['singleCellExpressions']['effectSizes']) : [];

    if(count($cellExpressions) > 0){
        $llm_input .= "Significantly expressed cells: " . implode(", ", array_slice($cellExpressions, 0, 10)) . "\n";
    }
    

    $proteinDetails = isset($geneDetails['protein']) ? array_map(function($protein) {
        return $protein['symbol'] . " (" . ($protein['name'] ?? '') . ")";
    }, $geneDetails['protein']) : [];
    
    if(count($proteinDetails) > 0){
        $llm_input .= "Proteins: " . implode(", ", $proteinDetails) . "\n";
    }

    $text = $_ENV['LLM_GENE_DETAILS_INPUT']. " ". $llm_input;
    

    $llm_input = truncateToWordLimit($text, 1000);

    return $llm_input;
}

function truncateToWordLimit($text, $limit = 500) {
    // Split the text into words
    $words = preg_split('/\s+/', $text);

    // If the total word count is within the limit, return the original text
    if (count($words) <= $limit) {
        return $text;
    }

    // Reduce the array of words to the limit
    $words = array_slice($words, 0, $limit);

    // Rejoin the words into a string, adding an ellipsis at the end
    return implode(' ', $words) . "...";
}

function fetchLLMOutput($llm_input, $model = "meta-llama/Llama-3.2-3B-Instruct") {
    
    $curl = curl_init();

    $postData = json_encode([
        "model" => $model,
        "messages" => [
            [
                "role" => "user",
                "content" => $llm_input
            ]
        ],
        "max_tokens" => 2048,
        "n" => 1,
        "temperature" => 0.5
    ]);

    curl_setopt_array($curl, array(
        CURLOPT_URL => $_ENV['LLM_URL'] . "/v1/chat/completions",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => '',
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 0,
        CURLOPT_FOLLOWLOCATION => true,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => 'POST',
        CURLOPT_POSTFIELDS => $postData,
        CURLOPT_HTTPHEADER => array(
            'Content-Type: application/json',
            'Authorization: Bearer ' . $_ENV['LLM_API_KEY']
        ),
    ));

    $response = curl_exec($curl);
    curl_close($curl);


    return json_decode($response, true);

}

function saveToCache($id, $data) {
    $cacheDir = __DIR__ . '/../../../storage/llm_cache/';
    $cacheFile = $cacheDir . $id . '.cache';

    
    // Ensure the cache directory exists
    if (!file_exists($cacheDir)) {
        mkdir($cacheDir, 0755, true);
    }
    
    // Save data to the cache file
    file_put_contents($cacheFile, $data);
}

function retrieveFromCache($id) {
    $cacheDir = __DIR__ . '/../../../storage/llm_cache/';
    $cacheFile = $cacheDir . $id . '.cache';

    // Check if the cache file exists
    if (file_exists($cacheFile)) {
        $details = file_get_contents($cacheFile);


    } else {
       $details = null;
    }

    return $details;
}

function cleanLLMString($details){
    $pattern = '/.*?(\*\*Key Characteristics:?\*\*)/is';
    $details = preg_replace($pattern, '$1', $details);

    // Trim the content
    $details = trim($details);
    return($details);
}


function lastVisitedPageCache($pageType, $info) {
    $cacheDir = __DIR__ . '/../../../storage/';
    $cacheFile = $cacheDir . 'visitors.json';

    // Ensure the cache directory exists
    if (!file_exists($cacheDir)) {
        mkdir($cacheDir, 0755, true);
    }

    // Retrieve existing data if the cache file exists
    $existingData = [];
    if (file_exists($cacheFile)) {
        $existingData = json_decode(file_get_contents($cacheFile), true);
        if (!is_array($existingData)) {
            $existingData = [];
        }
    }

    // Hash the IP to anonymize the visitor
    $hashedIP = hash('sha256', $_SERVER['REMOTE_ADDR']);

    // Create a new entry or update an existing one
    $newEntry = [
        'pageType' => $pageType,  // "gene-details" or "cell-details"
        'info' => $info,          // Gene or cell info to save
        'timestamp' => date('Y-m-d H:i:s'),
        'visits' => 1             // Start with one visit
    ];

    $entryExists = false;

    // Check if an entry for the hashed IP and same page info already exists
    foreach ($existingData as &$entry) {
        if ($entry['hashedIP'] === $hashedIP && $entry['pageType'] === $pageType && $entry['info'] === $info) {
            $entry['visits'] += 1;  // Increment the visit count
            $entry['timestamp'] = date('Y-m-d H:i:s');  // Update the timestamp
            $entryExists = true;
            break;
        }
    }

    // If the entry does not exist, add a new one
    if (!$entryExists) {
        $newEntry['hashedIP'] = $hashedIP;
        $existingData[] = $newEntry;
    }

    // Save the updated data back to the cache file
    file_put_contents($cacheFile, json_encode($existingData, JSON_PRETTY_PRINT));
}

function retrieveLastVisitedPageCache() {
    $cacheDir = __DIR__ . '/../../../storage/';
    $cacheFile = $cacheDir . 'visitors.json';

    // Check if the cache file exists
    if (file_exists($cacheFile)) {
        $data = json_decode(file_get_contents($cacheFile), true);
        if (!is_array($data)) {
            return []; // Return an empty array if the data is invalid
        }
        // Return only the last 50 entries
        return array_slice($data, -50);
    } else {
        return []; // Cache does not exist
    }
}

/**
 * Formats the protein sequence for better readability.
 * - Groups amino acids in blocks of 10.
 * - Inserts line breaks every 60 amino acids.
 * 
 * @param string $sequence The raw protein sequence.
 * @return string The formatted protein sequence.
 */
function formatProteinSequence($sequence) {
    $formattedSequence = '';
    $blockSize = 10;
    $lineLength = 60; // 60 amino acids per line (6 blocks of 10)

    for ($i = 0; $i < strlen($sequence); $i += $blockSize) {
        $formattedSequence .= substr($sequence, $i, $blockSize) . ' ';

        // Add a line break after every 60 amino acids (6 blocks)
        if ((($i / $blockSize) + 1) % ($lineLength / $blockSize) === 0) {
            $formattedSequence .= "\n";
        }
    }

    return htmlspecialchars(trim($formattedSequence));
}
?>
