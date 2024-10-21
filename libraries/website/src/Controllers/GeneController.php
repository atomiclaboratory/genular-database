<?php

// src/Controllers/GeneController.php
namespace Atomiclab\GenularApi\Controllers;


use MongoDB\Client as MongoClient;
use Slim\Http\Response as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Container\ContainerInterface;
use OpenApi\Annotations as OA;
use Atomiclab\GenularApi\Helpers\ApiHelper;

class GeneController
{
    private $mongoClient;
    private $numberFieldMappings;

    private $logger;

    private $collection_genes;
    private $collection_genes_helpers;


    private $markerScoresDoc;
    private $lineagesDoc;
    private $linkedEntitiesDoc;

    private $apiHelper;

    private $userDetails;

    private $responseType;
    private $organismType;
    private $ontologyCategories;

    public function __construct(ContainerInterface $container)
    {
        $this->mongoClient = $container->get('MongoClient');
        $this->logger = $container->get('logger');

        $this->collection_genes = $this->mongoClient->genes->genes;
        $this->collection_genes_helpers = $this->mongoClient->genes_helpers->genes_helpers;

        // Get cell lineages and marker scores data from the helper collection
        $this->markerScoresDoc = $this->collection_genes_helpers->findOne(['type' => 'markerScores']);
        $this->lineagesDoc = $this->collection_genes_helpers->findOne(['type' => 'cellLineages']);
        $this->linkedEntitiesDoc = $this->collection_genes_helpers->findOne(['type' => 'linkedEntities']);

        $this->apiHelper = new ApiHelper();

        $this->numberFieldMappings = json_decode($_ENV['NUMBER_FIELD_MAPPINGS'], true);

        // Set a default response type
        $this->responseType = 'json';
        $this->organismType = [];
        $this->ontologyCategories = [];
        $this->fieldsFilter = [];
    }

    /**
     * @OA\Post(
     *     path="/api/v1/gene/search",
     *     tags={"Gene Search"},
     *     summary="Retrieves any gene information based on the provided search input criteria",
     *     operationId="getGeneInfo",
     *     @OA\RequestBody(
     *         description="JSON object containing search criteria",
     *         required=true,
     *         @OA\JsonContent(
     *             required={"queryFields", "queryValues"},
     *             @OA\Property(
     *                 property="queryFields",
     *                 type="array",
     *                 @OA\Items(type="string"),
     *                 example=["geneID", "symbol"]
     *             ),
     *             @OA\Property(
     *                 property="queryValues",
     *                 type="array",
     *                 @OA\Items(type="string"),
     *                 example=["920", "CD8A"]
     *             ),
     *             @OA\Property(
     *                 property="fieldsFilter",
     *                 type="array",
     *                 @OA\Items(type="string"),
     *                 example=["geneID", "symbol", "crossReference.enseGeneID", "protein.sequence.sequence"]
     *             ),
     *             @OA\Property(
     *                 property="organismType",
     *                 type="array",
     *                 @OA\Items(type="string"),
     *                 example={"9606"}
     *             ),
     *             @OA\Property(
     *                 property="ontologyCategories",
     *                 type="array",
     *                 @OA\Items(type="string"),
     *                 example={}
     *             ),
     *             @OA\Property(property="searchType", type="string", example="or"),
     *             @OA\Property(property="orderBy", type="string", example="geneID"),
     *             @OA\Property(property="sortDirection", type="string", example="asc"),
     *             @OA\Property(property="page", type="integer", example=1),
     *             @OA\Property(property="limit", type="integer", example=10),
     *             @OA\Property(property="debug", type="integer", example=0),
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Successful retrieval of gene information",
     *         @OA\JsonContent(
     *             type="object",
     *             @OA\Property(property="total", type="integer", example=100),
     *             @OA\Property(property="totalPages", type="integer", example=10),
     *             @OA\Property(property="currentPage", type="integer", example=1),
     *             @OA\Property(property="pageLimit", type="integer", example=10),
     *             @OA\Property(
     *                 property="results",
     *                 type="array",
     *                 @OA\Items(type="object")
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Invalid input"
     *     ),
     *     security={{"api_key": {}}}
     * )
     */ 
    public function getGeneInfo(Request $request, Response $response, array $args)
    {


        $this->userDetails = $request->getAttribute('userDetails');

        $rawBody = (string) $request->getBody();
        $body = json_decode($rawBody, true);

        // Arrays
        $queryFields = $body['queryFields'] ?? null;
        $queryValues = $body['queryValues'] ?? null;
        $this->fieldsFilter = $body['fieldsFilter'] ?? null;

        $excludeFields = $body['excludeFields'] ?? null;

        // Assuming $body['organismType'] is expected to be an array or a single integer
        $organismTypes = isset($body['organismType']) ? (array)$body['organismType'] : [9606];

        if(count($organismTypes) > 0){
            // Filter out any values that are less than 1
            $validOrganismTypes = array_filter($organismTypes, function($type) {
                return $type >= 1;
            });

            // If there are no valid items, use [9606] as the default
            $this->organismType = !empty($validOrganismTypes) ? $validOrganismTypes : [9606];
        }else{
            $this->organismType = [];
        }

        // Similar handling for ontologyCategories as for organismType.
        $ontologyCategories = isset($body['ontologyCategories']) ? (array)$body['ontologyCategories'] : [];

        if (count($ontologyCategories) > 0) {
            // Filter out any invalid values.
            $validOntologyCategories = array_filter($ontologyCategories, function($type) {
                return $type >= 1; // Adjust validation as necessary.
            });

            // Update the class property.
            $this->ontologyCategories = !empty($validOntologyCategories) ? $validOntologyCategories : [];
        } else {
            $this->ontologyCategories = [];
        }

        // String
        $searchType = isset($body['searchType']) ? (string) $body['searchType'] : 'and';
        $orderBy = isset($body['orderBy']) ? (string) $body['orderBy'] : 'geneID';
        $sortDirection = isset($body['sortDirection']) ? strtolower((string) $body['sortDirection']) : 'asc';
        $matchType = isset($body['matchType']) ? (string) $body['matchType'] : 'exact';
        $this->responseType = isset($body['responseType']) ? $body['responseType'] : 'json';

        // Integer
        $page = isset($body['page']) ? (int) $body['page'] : 1;
        $limit = isset($body['limit']) ? (int) $body['limit'] : 10;
        $debug = isset($body['debug']) ? (int) $body['debug'] : 0;
        
        $limit = min($limit, $this->userDetails["page_limit"]);

        // If queryFields or queryValues is not an array, output an error
        if (!is_array($queryFields) || !is_array($queryValues)) {
            return $response->withJson(['error' => 'Query fields and values must be arrays.'])->withStatus(400);
        }

        // Generate a unique cache key based on request parameters
        $cacheKey = $this->apiHelper->getCacheKey($body);

        $this->logger->info('====> getGeneInfo '.$cacheKey, ["api_key" => $this->userDetails["api_key"]]);

        // Attempt to retrieve cached data
        $cachedData = $this->apiHelper->getFromCache($cacheKey);
        if ($cachedData !== null) {
            if ($this->responseType === 'csv') {
                $csvContent = $this->apiHelper->convertToCSV($cachedData);
                $response->getBody()->write($csvContent);
                return $response
                    ->withHeader('Content-Type', 'text/csv')
                    ->withHeader('Content-Disposition', 'attachment; filename="gene_data.csv"');
            }
            $this->logger->info('====> getGeneInfo '.$cacheKey.' - serving from cache');
            return $response->withJson($cachedData);
        }

        // Validate orderBy: it must be in numberFieldMappings or default to "geneID"
        if (empty($this->numberFieldMappings[$orderBy])) {
            $orderBy = 'geneID'; // Default to 'geneID' if an invalid value is provided
        }

        // Validate sortDirection
        if (!in_array($sortDirection, ['asc', 'desc'])) {
            $sortDirection = 'asc';  // Default to 'asc' if an invalid value is provided
        }

        // Validate searchType
        if (!in_array($searchType, ['and', 'or'])) {
            $searchType = 'and';  // Default to 'and' if an invalid value is provided
        }

        // Building the filter based on the searchType
        $filter = $this->buildFilter($queryFields, $queryValues, $searchType, $matchType);


        if ($page === 1) {
            $totalCount = $this->collection_genes->count($filter);
        } else {
            $body['page'] = $body['page'] - 1;
            $cacheKeyCount = $this->apiHelper->getCacheKey($body);
            $cachedData = $this->apiHelper->getFromCache($cacheKeyCount);
            if ($cachedData !== null) {
                $totalCount = $cachedData['total'];
            }else{
                $totalCount = $this->collection_genes->count($filter);
            }
        }
        
        // Calculate total pages
        $totalPages = ceil($totalCount / $limit);

        // Calculate the number of documents to skip
        $skip = ($page - 1) * $limit;

        // Define options for pagination and fields filtering
        $options = [
            'skip' => $skip,
            'limit' => $limit,
            'projection' => ['_id' => 0]  // Exclude _id field by default];
        ];

        // Add sorting to the options if orderBy is specified
        if ($orderBy) {
            // Determine the sort direction based on the sortDirection parameter
            $sortDirection = $sortDirection === 'desc' ? -1 : 1;
            $options['sort'] = [$orderBy => $sortDirection];
        }

        if (!empty($this->fieldsFilter)) {
            // Add requested fields to projection, ensuring _id is still excluded
            $projection = array_fill_keys($this->fieldsFilter, 1);
            $projection['_id'] = 0;
            $options['projection'] = $projection;
        }

        if (!empty($excludeFields)) {
            // Make sure options['projection'] is initialized
            if (!isset($options['projection'])) {
                $options['projection'] = [];
            }
            // Exclude specified fields
            foreach ($excludeFields as $field) {
                $options['projection'][$field] = 0;
            }
        }


        $time_start = microtime(true);
        // Retrieve documents from the MongoDB collection based on filter and options
        $cursor = $this->collection_genes->find($filter, $options);

        // Assuming $time_start was defined earlier and has a microtime(true) value
        $execution_time = microtime(true) - $time_start;

        // Format execution time to show a fixed number of decimal places, e.g., 3
        $formatted_execution_time = number_format($execution_time, 3);

        $this->logger->info('====> getGeneInfo '.$cacheKey.' - responseTime', ["query_time_seconds" => $formatted_execution_time]);

        // Initialize the result array to store the filtered documents
        $result = [];
        // Iterate over each document retrieved from the collection
        foreach ($cursor as $document) {
            // Check if $this->ontologyCategories is not empty and the 'ontology' field exists in the document
            if (!empty($this->ontologyCategories) && isset($document['ontology'])) {
                // Convert BSONArray to a PHP array for array_filter function
                $ontologyArray = json_decode(json_encode($document['ontology']), true);
                // Filter the 'ontology' array in the document based on $this->ontologyCategories
                $filteredOntology = array_filter($ontologyArray, function($item) {
                    // Access $this inside the closure using 'use' keyword to include $this->ontologyCategories context
                    return in_array($item['cat'], $this->ontologyCategories);
                });

                // Assign the filtered ontology array back to the document
                $document['ontology'] = $filteredOntology;
            }

            if(isset($document['ontology'])){
                if(!is_array($document['ontology'])){
                    $document['ontology'] = json_decode(json_encode($document['ontology']), true);
                }
                // Define the custom order for sorting
                $customOrder = array_merge(range(10, 20), range(0, 9));
                // Sort the ontology array based on the custom order
                usort($document['ontology'], function($a, $b) use ($customOrder) {
                    $posA = array_search($a['cat'], $customOrder);
                    $posB = array_search($b['cat'], $customOrder);
                    return $posA - $posB;
                });
            }

            if(empty($this->fieldsFilter)){
                $fieldsFilter = ["singleCellExpressions.effectSizes.i", "singleCellExpressions.effectSizes.c", "singleCellExpressions.effectSizes.s"];

                $filterByTreshold = false;
                $filterByCellsLineages = "both";
                $removeOtherCells = false;

            }else{
                $fieldsFilter = $this->fieldsFilter;
                $filterByTreshold = true;
                $filterByCellsLineages = "root";
                $removeOtherCells = false;
            }

            $document = $this->apiHelper->filterAndProcessSingleCellExpressions($document, 
                $fieldsFilter, 
                $this->linkedEntitiesDoc['cells'],
                $this->lineagesDoc['cells'],
                $this->markerScoresDoc,
                $filterByTreshold, // filterByTreshold
                $filterByCellsLineages, // filterByCellsLineages
                [], // queryValues
                $removeOtherCells); // removeOtherCells

            if(isset($document['singleCellExpressions']) && isset($document['singleCellExpressions']['effectSizes'])){
                if (!is_array($document['singleCellExpressions']['effectSizes'])) {
                    $document['singleCellExpressions']['effectSizes'] = json_decode(json_encode($document['singleCellExpressions']['effectSizes']), true);
                }

                // Sort the 'effectSizes' array by 'foldChange' in descending order
                usort($document['singleCellExpressions']['effectSizes'], function($a, $b) {
                    return $b['foldChange'] <=> $a['foldChange'];
                });
            }

            // Add the potentially modified document to the result array
            $result[] = $document;
        }
        // Prepare and return the response with total count and documents
        $responseData = [
            'total' => $totalCount,
            'totalPages' => $totalPages,
            'currentPage' => $page,
            'pageLimit' => $limit,
            'results' => $result,
        ];

        if($debug === 1){
            $responseData['debug'] = [
                'filter' => $filter,
                'options' => $options
            ];
        }

        $this->apiHelper->storeInCache($cacheKey, $responseData);

        if ($this->responseType === 'csv') {
            $csvContent = $this->apiHelper->convertToCSV($responseData);
            $response->getBody()->write($csvContent);
            return $response
                ->withHeader('Content-Type', 'text/csv')
                ->withHeader('Content-Disposition', 'attachment; filename="gene_data.csv"');
        }

        return $response->withJson($responseData);
    }

    private function buildFilter($queryFields, $queryValues, $searchType, $matchType = 'exact') {
        $organismCondition = !empty($this->organismType) ? ['tax.id' => ['$in' => $this->organismType]] : [];
        $ontologyCondition = !empty($this->ontologyCategories) ? ['ontology.cat' => ['$in' => $this->ontologyCategories]] : [];

        // Check if any field in fieldsFilter starts with "singleCellExpressions.effectSizes" and set the condition
        $singleCellExpressionCondition = [];
        if ($this->apiHelper->fieldStartsWith($this->fieldsFilter, "singleCellExpressions.effectSizes")) {
            $singleCellExpressionCondition = ['singleCellExpressions.effectSizes.c' => 'A'];
        }

        // Use array_filter to remove any null values
        $baseConditions = array_filter([$organismCondition, $ontologyCondition, $singleCellExpressionCondition]);


        if (empty($queryFields) || empty($queryValues)) {
            // Return combined basic conditions or an empty array if none exist
            return !empty($baseConditions) ? ['$and' => array_values($baseConditions)] : [];
        }

        $fieldConditions = [];
        foreach ($queryFields as $index => $field) {
            if (is_array($queryValues)) {
                $valueConditions = array_map(function($value) use ($field, $matchType) {
                    if (isset($this->numberFieldMappings[$field]) && is_numeric($value)) {
                        return +$value;
                    } else if ($matchType === 'regex') {
                        return new \MongoDB\BSON\Regex(preg_quote($value, ''), 'i');
                    }
                    return $value;
                }, $queryValues);

                $fieldConditions[] = [$field => ['$in' => $valueConditions]];
            } else {
                $valueCondition = isset($this->numberFieldMappings[$field]) && is_numeric($queryValues) 
                                  ? (int)$queryValues 
                                  : ($matchType === 'regex' 
                                     ? new \MongoDB\BSON\Regex(preg_quote($queryValues, ''), 'i') 
                                     : $queryValues);

                $fieldConditions[] = [$field => $valueCondition];
            }
        }

        // Merge all conditions, ignoring null values.
        $filterConditions = array_merge($baseConditions, $fieldConditions);
        $filterConditions = array_filter($filterConditions);

        // Avoid using $and if there is only one condition to prevent MongoDB errors.
        if (count($filterConditions) === 1) {
            return array_shift($filterConditions);
        }

        return ['$and' => array_values($filterConditions)];
    }

}
