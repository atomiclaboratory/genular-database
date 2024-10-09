<?php

// src/Controllers/PathwayController.php
namespace Atomiclab\GenularApi\Controllers;


use MongoDB\Client as MongoClient;
use Slim\Http\Response as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Container\ContainerInterface;
use OpenApi\Annotations as OA;

class PathwayController
{
    private $mongoClient;
    private $numberFieldMappings;
    private $collection_genes;

    /**
     * Constructs the PathwayController.
     *
     * @param ContainerInterface $container Dependency injection container.
     */
    public function __construct(ContainerInterface $container)
    {
        $this->mongoClient = $container->get('MongoClient');

        $this->collection_genes = $this->mongoClient->genes->genes;
        $this->collection_genes_helpers = $this->mongoClient->genes_helpers->genes_helpers;

        $this->numberFieldMappings = json_decode($_ENV['NUMBER_FIELD_MAPPINGS'], true);
    }
    /**
     * @OA\Post(
     *     path="/api/v1/pathways/suggest",
     *     tags={"Pathway Suggest"},
     *     summary="Suggests pathway matches based on query values and returns their names and IDs that can be used on gene search",
     *     operationId="suggestPathways",
     *     @OA\RequestBody(
     *         description="JSON object containing query values to search pathways",
     *         required=true,
     *         @OA\JsonContent(
     *             required={"queryValues"},
     *             @OA\Property(property="queryValues", type="array", @OA\Items(type="string"), example={"signal transduction", "metabolism"}),
     *         )
     *     ),
     *     @OA\Response(
     *         response=200,
     *         description="Successful retrieval of pathway information",
     *         @OA\JsonContent(
     *             type="object",
     *             @OA\Property(property="response", type="array", @OA\Items(type="object")),
     *             @OA\Property(property="total", type="integer", example=100)
     *         )
     *     ),
     *     @OA\Response(
     *         response=400,
     *         description="Invalid input"
     *     ),
     *     security={ {"api_key": {}} }
     * )
     */
    public function suggestPathways(Request $request, Response $response, array $args)
    {
        $rawBody = (string) $request->getBody();
        $body = json_decode($rawBody, true);

        // Arrays
        $queryValues = $body['queryValues'] ?? null;

        if (empty($queryValues)) {
            return $response->withJson(['error' => 'Query fields and value are required.'])->withStatus(400);
        }

        // If queryFields or queryValues is not an array, output an error
        if (!is_array($queryValues)) {
            return $response->withJson(['error' => 'Query fields and values must be arrays.'])->withStatus(400);
        }

        // Find all matching cells by score and sort them
        $pathwayMatches = $this->searchPathways($queryValues);

        // Prepare and return the response with total count and documents
        $responseData = [
            "results" => $pathwayMatches,
            "total" => count($pathwayMatches)

        ];

        return $response->withJson($responseData);
    }

    public function searchPathways($queryValues) {

        $documentsReactomePathways = $this->collection_genes_helpers->find(['type' => 'reactomePathways'], [
            'typeMap' => ['root' => 'array', 'document' => 'array', 'array' => 'array'],
        ]);

        $results = [];
        foreach ($documentsReactomePathways as $document) {
            if (isset($document['pathways']) && is_array($document['pathways'])) {
                foreach ($queryValues as $queryValue) {
                    $queryValueProcessed = preg_replace('/\W+/', ' ', strtolower(trim($queryValue)));
                    $words = explode(' ', $queryValueProcessed);

                    foreach ($document['pathways'] as $pathway) {
                        $key = strtolower($pathway['id']);
                        $valueString = strtolower($pathway['term']);
                        // Check if $key starts with R-HSA (for Homo sapiens)
                        if (strpos($key, 'r-hsa') !== 0) {
                            continue;
                        }

                        $score = 0;

                        foreach ($words as $word) {
                            // Increase score for exact matches in pathway term
                            if ($word === $valueString) {
                                $score += 50;
                            } elseif (strpos($valueString, $word) === 0) { // Increase score for matches at the start
                                $score += 20;
                            } elseif (strpos($valueString, $word) !== false) { // Increase score for partial matches
                                $score += 10;
                            }

                            // Score for matching in pathway ID (typically lower than matching in term)
                            if ($word === $key) {
                                $score += 25;
                            } elseif (strpos($key, $word) === 0) {
                                $score += 10;
                            } elseif (strpos($key, $word) !== false) {
                                $score += 5;
                            }
                        }

                        if ($score > 0) {
                            $results[] = [
                                "id" => $pathway["id"],
                                "term" => $pathway["term"],
                                "matchScore" => $score
                            ];
                        }
                    }
                }
            }
        }

        // Sort the results by score in descending order
        usort($results, function ($a, $b) {
            return $b['matchScore'] - $a['matchScore'];
        });

        return $results;
    }
}
