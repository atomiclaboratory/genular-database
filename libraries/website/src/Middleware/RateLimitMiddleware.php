<?php

namespace Atomiclab\GenularApi\Middleware;

use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Server\RequestHandlerInterface as RequestHandler;

class RateLimitMiddleware
{
    private $apiKeysStoragePath;

    public function __construct($apiKeysStoragePath)
    {
        $this->apiKeysStoragePath = $apiKeysStoragePath;
    }

    public function __invoke(Request $request, RequestHandler $handler)
    {
        $apiKey = $request->getQueryParams()['api_key'] ?? $request->getHeaderLine('X-API-Key');
        $uri = $request->getUri()->getPath();

        // Allow unrestricted access to swagger_v1.json
        if (preg_match('/swagger_v\d+\.json$/', $uri)) {
            return $handler->handle($request);
        }
        
        // Load API keys and rate limits
        $apiKeysData = $this->loadApiKeysData();
        $rateLimitInfo = $this->getRateLimitInfo($apiKey, $apiKeysData);

        // Allow unrestricted access to swagger_v1.json
        // http://genular.localhost/api/swagger_v1.json
        // http://genular.localhost/api/validate_key
        if (strpos($uri, 'api/') !== false && !$rateLimitInfo && !preg_match('/(swagger_v\d+\.json|validate_key)$/', $uri)) {
            // API key is not valid or not found; you may choose to handle this differently
            header('Content-Type: application/json');
            http_response_code(401);
            echo json_encode(['error' => 'Invalid API key.']);
            exit;
        }


        $currentTime = time();
        $rateLimitDetails = $rateLimitInfo['rate_limit_details'];

        
        // Check if rate limit exceeded
        if ($currentTime - $rateLimitDetails['timestamp'] <= $rateLimitInfo['rate_limit_period']) {
            if ($rateLimitDetails['count'] >= $rateLimitInfo['rate_limit']) {
                header('Content-Type: application/json');
                http_response_code(429);
                echo json_encode([
                    'error' => 'Rate limit exceeded',
                    'message' => 'Please wait before making new requests.'
                ]);
                exit;
            }
            $rateLimitDetails['count']++;
        } else {
            $rateLimitDetails = ['count' => 1, 'timestamp' => $currentTime];
        }

        // Update and save rate limit data
        $this->updateRateLimitDetails($apiKey, $rateLimitDetails, $apiKeysData);


        $userDetails = $this->getRateLimitInfo($apiKey, $apiKeysData);
        $request = $request->withAttribute('userDetails', $userDetails);

        return $handler->handle($request);
    }

    private function loadApiKeysData()
    {
        if (!file_exists($this->apiKeysStoragePath)) {
            throw new \Exception("API keys storage file not found.");
        }

        $json = file_get_contents($this->apiKeysStoragePath);
        return json_decode($json, true) ?? [];
    }

    private function getRateLimitInfo($apiKey, $apiKeysData)
    {
        foreach ($apiKeysData as $keyData) {
            if ($keyData['api_key'] === $apiKey) {
                return $keyData;
            }
        }

        return null;
    }

    private function updateRateLimitDetails($apiKey, $newDetails, &$apiKeysData)
    {

        foreach ($apiKeysData as &$keyData) {
            if ($keyData['api_key'] === $apiKey) {



                $keyData['rate_limit_details'] = $newDetails;
                break;
            }
        }
        $encodedData = json_encode($apiKeysData, JSON_PRETTY_PRINT);
        
        if ($encodedData === false) {
            // Handle JSON encoding error
            throw new \Exception('JSON encoding error: ' . json_last_error_msg());
        }

        $result = file_put_contents($this->apiKeysStoragePath, $encodedData);
        if ($result === false) {
            // Handle file write error
            throw new \Exception('Failed to write to ' . $this->apiKeysStoragePath . '. Check file permissions and path.');
        }
    }
}
