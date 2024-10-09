<?php

// src/Routes/routes.php
use Slim\App;
use Atomiclab\GenularApi\Controllers\GeneController;
use Atomiclab\GenularApi\Controllers\CellController;
use Atomiclab\GenularApi\Controllers\PathwayController;

use Atomiclab\GenularApi\Controllers\OpenApiContoller;


use Psr\Container\ContainerInterface;

return function (App $app) {

    // Retrieve the container
    $container = $app->getContainer();

    // Handle Preflight Requests
    $app->options('/{routes:.+}', function ($request, $response, $args) {
        return $response;
    });

    $app->get('/', function ($request, $response, $args) {
        $response->getBody()->write("Welcome to GENULAR API");
        return $response;
    });

    $app->get('/api/swagger_v1.json', function ($request, $response, $args) use ($container) {

        $openapi = \OpenApi\Generator::scan(['../../src/Controllers'], ['logger' => $container->get('logger')]);
        
        $response->getBody()->write(json_encode($openapi, JSON_PRETTY_PRINT));
        return $response->withHeader('Content-Type', 'application/json');
    });

    $app->get('/api/validate_key', function ($request, $response, $args) use ($container) {

        $apiKeysStoragePath = __DIR__ . '/../../storage/apiKeys.json';
        $apiKey = $request->getQueryParams()['api_key'] ?? null;
        
        $json = file_get_contents($apiKeysStoragePath);
        $apiKeys = json_decode($json, true) ?? [];

        $isValid = false;
        foreach ($apiKeys as $keyData) {
            if ($keyData['api_key'] === $apiKey) {
                $isValid = true;
                break;
            }
        }

        $response->getBody()->write(json_encode(['valid' => $isValid]));

        return $response->withHeader('Content-Type', 'application/json');
    });

    // Define routes for gene information retrieval
    $app->post('/api/v1/gene/search', GeneController::class . ':getGeneInfo');

    // Define routes for cells
    $app->post('/api/v1/cells/search', CellController::class . ':getCellsInfo');
    $app->post('/api/v1/cells/suggest', CellController::class . ':suggestCells');

    // Define routes for pathways
    // $app->post('/pathways/search', PathwayController::class . ':getPathwaysInfo');
    $app->post('/api/v1/pathways/suggest', PathwayController::class . ':suggestPathways');
};
