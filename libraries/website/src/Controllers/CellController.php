<?php

// src/Controllers/CellController.php
namespace Atomiclab\GenularApi\Controllers;


use MongoDB\Client as MongoClient;
use Slim\Http\Response as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Container\ContainerInterface;
use OpenApi\Annotations as OA;
use Atomiclab\GenularApi\Helpers\ApiHelper;


class CellController
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
    private $organismType = [];

    /**
     * Constructs the CellController.
     *
     * @param ContainerInterface $container Dependency injection container.
     */
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
        $this->fieldsFilter = [];
    }

    /**
     * @OA\Post(
     *     path="/api/v1/cells/search",
     *     summary="Get information about genes based on cells markerScore query values",
     *     tags={"Cell Search"},
     *     description="Retrieve cells information that matches specific cell expression conditions. Supports pagination, field filtering, and sorting.",
     *     @OA\RequestBody(
     *         required=true,
     *         description="Parameters to query cell information",
     *         @OA\JsonContent(
     *             required={"queryValues"},
     *             @OA\Property(
     *                 property="queryValues",
     *                 type="array",
     *                 description="Array of objects where each object represents a cell ID and its condition.",
     *                 @OA\Items(type="object"),
     *                 example={{"CL0000236": ">= 35"}, {"CL0000235": "< 25"}}
     *             ),
     *             @OA\Property(
     *                 property="fieldsFilter",
     *                 type="array",
     *                 description="Fields to include in the response. If empty or not provided, all fields are included.",
     *                 @OA\Items(type="string"),
     *                 example={"geneID", "symbol", "singleCellExpressions.effectSizes"}
     *             ),
     *             @OA\Property(
     *                 property="orderBy",
     *                 type="string",
     *                 description="Field to sort the results by.",
     *                 example="geneID"
     *             ),
     *             @OA\Property(
     *                 property="sortDirection",
     *                 type="string",
     *                 description="Direction to sort the results, can be 'asc' or 'desc'.",
     *                 example="asc"
     *             ),
     *             @OA\Property(
     *                 property="page",
     *                 type="integer",
     *                 description="Page number for pagination.",
     *                 example=1
     *             ),
     *             @OA\Property(
     *                 property="limit",
     *                 type="integer",
     *                 description="Maximum number of results per page. The maximum is capped at 100.",
     *                 example=10
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Successful operation",
     *         @OA\JsonContent(
     *             type="object",
     *             @OA\Property(
     *                 property="total",
     *                 type="integer",
     *                 description="Total number of records that match the query, disregarding limit and page."
     *             ),
     *             @OA\Property(
     *                 property="totalPages",
     *                 type="integer",
     *                 description="Total number of pages."
     *             ),
     *             @OA\Property(
     *                 property="currentPage",
     *                 type="integer",
     *                 description="Current page number."
     *             ),
     *             @OA\Property(
     *                 property="pageLimit",
     *                 type="integer",
     *                 description="Number of items per page."
     *             ),
     *             @OA\Property(
     *                 property="results",
     *                 type="array",
     *                 @OA\Items(type="object"),
     *                 description="Array of cells that match the query conditions."
     *             )
     *         )
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Invalid input"
     *     ),
     *     security={ {"api_key": {}} }
     * )
     */
    public function getCellsInfo(Request $request, Response $response, array $args) 
    {
        $this->userDetails = $request->getAttribute('userDetails');

        $apiKey = $request->getQueryParams()['api_key'] ?? null;
        $rawBody = (string) $request->getBody();
        $body = json_decode($rawBody, true);

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

        // String
        $searchType = isset($body['searchType']) ? (string) $body['searchType'] : 'and';
        $orderBy = isset($body['orderBy']) ? (string) $body['orderBy'] : 'geneID';
        $sortDirection = isset($body['sortDirection']) ? strtolower((string) $body['sortDirection']) : 'asc';   

        // Extract the responseType from the request body; default to 'json' if not provided
        $this->responseType = $body['responseType'] ?? 'json';
        
        // Integers
        $page = isset($body['page']) ? (int) $body['page'] : 1;
        $limit = isset($body['limit']) ? (int) $body['limit'] : 10;
        $debug = isset($body['debug']) ? (int) $body['debug'] : 0;
        
        $limit = min($limit, $this->userDetails["page_limit"]);

        if (empty($queryValues)) {
            return $response->withJson(['error' => 'Query values are required.'])->withStatus(400);
        }

        // Generate a unique cache key based on request parameters
        $cacheKey = $this->apiHelper->getCacheKey($body);
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

        $filter = $this->buildFilterWithSingleCellExpressions($queryValues, $searchType);

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

        $totalPages = ceil($totalCount / $limit);
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

        // Execute query
        $cursor = $this->collection_genes->find($filter, $options);
        
        $result = [];
        foreach ($cursor as $document) {

            $document = $this->apiHelper->filterAndProcessSingleCellExpressions($document, 
                $this->fieldsFilter, 
                $this->linkedEntitiesDoc['cells'],
                $this->lineagesDoc['cells'],
                $this->markerScoresDoc,
                true, // filterByTreshold
                "both", // filterByCellsLineages
                array_keys($queryValues), // queryValues
                true); // removeOtherCells

            if(isset($document['singleCellExpressions']) && isset($document['singleCellExpressions']['effectSizes'])){
                if (!is_array($document['singleCellExpressions']['effectSizes'])) {
                    $document['singleCellExpressions']['effectSizes'] = json_decode(json_encode($document['singleCellExpressions']['effectSizes']), true);
                }

                // Sort the 'effectSizes' array by 'markerScore' in descending order
                usort($document['singleCellExpressions']['effectSizes'], function($a, $b) {
                    return $b['markerScore'] <=> $a['markerScore'];
                });
            }

            $result[] = $document;
        }

        // Prepare and return the response
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
                ->withHeader('Content-Disposition', 'attachment; filename="cells_gene_data.csv"');
        }

        return $response->withJson($responseData);
    }

    private function buildFilterWithSingleCellExpressions($queryValues, $searchType) {
        $organismCondition = !empty($this->organismType) ? ['tax.id' => ['$in' => $this->organismType]] : [];

        // Initialize the base conditions with organismCondition if it's not empty
        $baseConditions = !empty($organismCondition) ? [$organismCondition] : [];

        $filterConditions = [];
        foreach ($queryValues as $cellId => $condition) {
            $cellId = (string) trim($cellId);
            preg_match('/(<=|>=|<|>|=)\s*(\d+)/', $condition, $matches);

            if ($matches) {
                $operator = $matches[1];
                $value = (float)$matches[2];

                $mongoOperator = match($operator) {
                    '>=' => '$gte',
                    '<=' => '$lte',
                    '>' => '$gt',
                    '<' => '$lt',
                    '=' => '$eq',
                    default => null
                };

                if ($mongoOperator) {
                    $filterConditions[] = [
                        'singleCellExpressions.effectSizes' => [
                            '$elemMatch' => [
                                'i' => $cellId,
                                's' => [$mongoOperator => $value]
                            ]
                        ]
                    ];
                }
            }
        }

        // Combine baseConditions with filterConditions
        if (!empty($filterConditions)) {
            if ($searchType === 'or') {
                // Use $or for filterConditions if searchType is 'or', but always include baseConditions with $and
                $filter = ['$and' => [
                    ['$or' => $filterConditions],
                    ...$baseConditions
                ]];
            } else {
                // Default to $and, combining all conditions
                $filterConditions = array_merge($baseConditions, $filterConditions);
                $filter = ['$and' => $filterConditions];
            }
        } else {
            // If there are no filterConditions, the baseConditions become the filter
            $filter = !empty($baseConditions) ? ['$and' => $baseConditions] : [];
        }

        return $filter;
    }

    /**
     * @OA\Post(
     *     path="/api/v1/cells/suggest",
     *     tags={"Cell Suggest"},
     *     summary="Suggests cell matches and relevant markerScore threshold based on query values",
     *     description="This method finds matching cells based in query values and and sorts them by score, then sorts these cell matches by their lineages.",
     *     @OA\RequestBody(
     *         description="JSON object containing query values",
     *         required=true,
     *         @OA\JsonContent(
     *             type="object",
     *             @OA\Property(
     *                 property="queryValues",
     *                 type="array",
     *                 @OA\Items(type="string"),
     *                 example={"endothelial cell", "T cell"}
     *             ),
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Successful operation",
     *         @OA\JsonContent(
     *             type="object",
     *             @OA\Property(
     *                 property="response",
     *                 type="array",
     *                 @OA\Items(type="object")
     *             ),
     *             @OA\Property(property="total", type="integer"),
     *         )
     *     ),
     *     @OA\Response(
     *         response="400",
     *         description="Invalid input"
     *     ),
     *     security={ {"api_key": {}} }
     * )
     */
    public function suggestCells(Request $request, Response $response, array $args)
    {

        $this->userDetails = $request->getAttribute('userDetails');

        $rawBody = (string) $request->getBody();
        $body = json_decode($rawBody, true);

        // Arrays
        $queryValues = $body['queryValues'] ?? null;
        $this->responseType = isset($body['responseType']) ? $body['responseType'] : 'json';

        // Get 'page' and 'limit' from the body, with default values
        $page = isset($body['page']) ? (int)$body['page'] : 1;
        $limit = isset($body['limit']) ? (int)$body['limit'] : 1000;

        // Validate 'page' and 'limit' values
        $page = max($page, 1);
        $limit = min($limit, $this->userDetails["page_limit"]);

        // Generate a unique cache key based on request parameters, including 'page' and 'limit'
        $cacheKey = $this->apiHelper->getCacheKey($body);

        // Attempt to retrieve cached data
        // $cachedData = $this->apiHelper->getFromCache($cacheKey);
        // if ($cachedData !== null) {
        //     if ($this->responseType === 'csv') {
        //         $csvContent = $this->apiHelper->convertToCSV($cachedData['results']);
        //         $response->getBody()->write($csvContent);
        //         return $response
        //             ->withHeader('Content-Type', 'text/csv')
        //             ->withHeader('Content-Disposition', 'attachment; filename="cell_suggest.csv"');
        //     }
        //     $this->logger->info('====> suggestCells '.$cacheKey.' - serving from cache');
        //     return $response->withJson($cachedData);
        // }

        // Find all matching cells by score and sort them 637
        $cellMatches = $this->scoreAndSortCellMatches($queryValues);


        // Add MarkerScores for each if we have it in our database!
        $cellMatches = $this->addMarkerScores($cellMatches);

    
        // Pagination logic before sorting by lineages
        $totalCount = count($cellMatches);
        $totalPages = (int) ceil($totalCount / $limit);

        // Adjust page if out of bounds
        if ($page > $totalPages && $totalPages > 0) {
            $page = $totalPages;
        }

        $offset = ($page - 1) * $limit;
        $paginatedCellMatches = array_slice($cellMatches, $offset, $limit);

        // Sort the paginated cell matches by Lineages
        $cellLineages = $this->sortByLineages($paginatedCellMatches);

        // Prepare and return the response with total count and documents
        $responseData = [
            'total' => $totalCount,
            'totalPages' => $totalPages,
            'currentPage' => $page,
            'pageLimit' => $limit,
            'results' => $cellLineages,
        ];

        $this->apiHelper->storeInCache($cacheKey, $responseData);

        if ($this->responseType === 'csv') {
            $csvContent = $this->apiHelper->convertToCSV($responseData['results']);
            $response->getBody()->write($csvContent);
            return $response
                ->withHeader('Content-Type', 'text/csv')
                ->withHeader('Content-Disposition', 'attachment; filename="cell_suggest.csv"');
        }

        return $response->withJson($responseData);
    }

    /**
     * Adds marker scores to each cell match from the database.
     *
     * This function retrieves the marker scores from a document in the MongoDB collection
     * that contains score information under the "relevantScoreThreshold" key. It then
     * iterates over the array of cell matches and enriches each cell match with its
     * corresponding marker score, if available. The marker score is added under the
     * "markerScore" key for each cell match.
     *
     * @param array $cellMatches An array of cell matches, each being an associative array
     *                           that should at least contain a "key" representing the cell ID.
     *
     * @return array The enriched array of cell matches, where each match may now include
     *               a "markerScore" key with its associated score. If a cell does not have
     *               a corresponding score, its "markerScore" key will be set to null or another
     *               default value to indicate the absence of a score.
     *
     * Usage:
     * Assuming $cellMatches is an array of cell matches:
     * $cellMatches = [
     *     ['key' => 'CL0000236', 'value' => 'B cell', 'score' => 50],
     *     ['key' => 'CL0000084', 'value' => 'T cell', 'score' => 45]
     * ];
     *
     * After calling addMarkerScores, each match in $cellMatches will have a "markerScore":
     * $enrichedCellMatches = $this->addMarkerScores($cellMatches);
     *
     * Example output:
     * [
     *     ['key' => 'CL0000236', 'value' => 'B cell', 'score' => 50, 'markerScore' => 303],
     *     ['key' => 'CL0000084', 'value' => 'T cell', 'score' => 45, 'markerScore' => null]
     * ]
     */
    public function addMarkerScores($cellMatches) {
        // Retrieve the markerScores document from MongoDB
        $markerScoresDoc = $this->collection_genes_helpers->findOne(['type' => 'markerScores']);

        if ($markerScoresDoc && isset($markerScoresDoc['relevantScoreThreshold'])) {
            $markerScores = $markerScoresDoc['relevantScoreThreshold'];

            // Iterate through the cellMatches and add the marker score if available
            foreach ($cellMatches as &$match) {
                if (isset($markerScores[$match['cell_id']]['overall'])) {
                    $match['marker_score'] = $markerScores[$match['cell_id']]['overall'];
                } else {
                    $match['marker_score'] = null; // Or assign a default/indicator value if preferred
                }
            }
        }
        return $cellMatches;
    }

    /**
     * Sorts cell matches by their lineage associations.
     * 
     * This method organizes cell matches into a hierarchical structure
     * based on their lineage relationships as defined in the database.
     *
     * @param array $cellMatches Array of cell matches to sort.
     * @return array Sorted array of cell matches with lineage-based hierarchy.
     */
    public function sortByLineages($cellMatches, $maxDepth = 3) {
        $lineagesDoc = $this->collection_genes_helpers->findOne(['type' => 'cellLineages']);
        $sortedCellMatches = [];

        if ($lineagesDoc && isset($lineagesDoc['cells'])) {
            $cellLineages = $lineagesDoc['cells'];

            // Convert cellMatches to an associative array for easy lookup
            $cellMatchesAssoc = [];
            foreach ($cellMatches as $match) {
                $cellMatchesAssoc[$match['cell_id']] = $match;
            }

            // Recursive function to process children with depth limit
            function processChildren($parent, &$cellLineages, &$cellMatchesAssoc, $depth, $maxDepth) {
                // Stop recursion if the depth limit is reached or parent not found
                if ($depth >= $maxDepth || !isset($cellMatchesAssoc[$parent])) {
                    return null; // Skip if parent not found in matches
                }

                // Pull the full parent match or skip if not found
                $parentMatch = $cellMatchesAssoc[$parent];

                // Initialize the 'childs' field if children exist
                $parentMatch['childs'] = [];

                // If the parent has children in the lineage, recursively process each child
                if (isset($cellLineages[$parent])) {
                    foreach ($cellLineages[$parent] as $childKey) {
                        // Recursively process the child
                        $childMatch = processChildren($childKey, $cellLineages, $cellMatchesAssoc, $depth + 1, $maxDepth);
                        if ($childMatch) {
                            $parentMatch['childs'][] = $childMatch;
                        }
                    }
                }

                return $parentMatch;
            }

            // Iterate through each lineage and process the children recursively
            foreach ($cellLineages as $parent => $children) {
                if (isset($cellMatchesAssoc[$parent])) {
                    $parentMatch = processChildren($parent, $cellLineages, $cellMatchesAssoc, 0, $maxDepth);
                    if ($parentMatch) {
                        $sortedCellMatches[] = $parentMatch;
                    }
                    unset($cellMatchesAssoc[$parent]);  // Remove processed parent from associative array
                }
            }

            // Append remaining unmatched cellMatches that were not included in lineages
            foreach ($cellMatchesAssoc as $remainingMatch) {
                $sortedCellMatches[] = $remainingMatch;
            }
        }

        return $sortedCellMatches;
    }




    /**
     * Scores and sorts cell matches based on query values.
     * 
     * This method scores cell matches based on the occurrence and relevance of query values
     * within the cell data and sorts them in descending order of their scores.
     *
     * @param array $queryValues Query values to score the cell matches against.
     * @return array Array of scored and sorted cell matches.
     */
    private function scoreAndSortCellMatches($queryValues) {
        // Fetch 'linkedEntities' documents
        $linkedEntitiesDoc = $this->collection_genes_helpers->find(['type' => 'linkedEntities'], [
            'typeMap' => ['root' => 'array', 'document' => 'array', 'array' => 'array'],
        ]);

        $results = [];
        foreach ($linkedEntitiesDoc as $document) {
            if (isset($document['cells']) && is_array($document['cells'])) {
                foreach ($document['cells'] as $key => $cell) {
                    // Normalize key and content
                    $keyProcessed = preg_replace('/\W+/', ' ', strtolower($key)); 
                    $cellString = is_array($cell) || is_object($cell) ? strtolower(json_encode($cell)) : strtolower((string)$cell);
                    $cellName = strtolower($cell['name'] ?? '');

                    // If queryValues is empty, add all cells with default score
                    if (empty($queryValues)) {
                        $results[] = [
                            "cell_id" => $key,
                            "cell_name" => $cell['name'] ?? '', 
                            "search_score" => 0 
                        ];
                    } else {
                        foreach ($queryValues as $queryValue) {
                            $queryValueProcessed = preg_replace('/\W+/', ' ', strtolower(trim($queryValue)));
                            $score = 0;

                            // Prioritize exact match for the query in the cell name
                            if (strcasecmp($cellName, $queryValueProcessed) === 0) {
                                $score += 100;  // Highest score for exact match
                            } elseif (strpos($cellName, $queryValueProcessed) !== false) {
                                $score += 50;  // High score for partial match in the cell name
                            }

                            // Full-text search matching in the key and content
                            if (strpos($keyProcessed, $queryValueProcessed) !== false) {
                                $score += 20;  // Lower score for match in key
                            }
                            if (strpos($cellString, $queryValueProcessed) !== false) {
                                $score += 20;  // Lower score for match in content
                            }

                            // Only add if score > 0
                            if ($score > 0) {
                                $results[] = [
                                    "cell_id" => $key,
                                    "cell_name" => $cell['name'],
                                    "search_score" => $score
                                ];
                            }
                        }
                    }
                }
            }
        }

        // Ensure sorting by search_score in descending order
        usort($results, function ($a, $b) {
            return $b['search_score'] - $a['search_score'];
        });

        return $results;
    }
}
