<?php 

namespace Atomiclab\GenularApi\Middleware;

use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Http\Server\RequestHandlerInterface as RequestHandler;

class ApiMiddleware
{
    private $apiKeysStoragePath;

    public function __construct($apiKeysStoragePath = __DIR__ . '/../storage/apiKeys.json')
    {
        $this->apiKeysStoragePath = $apiKeysStoragePath;
    }

    private function getApiKeyDetails()
    {
        if (!file_exists($this->apiKeysStoragePath)) {
            header('Content-Type: application/json');
            http_response_code(401);
            
            echo json_encode([
                'error' => 'Unauthorized',
                'message' => 'Access denied. API keys storage file not found.'
            ]);
            exit;
        }

        $jsonData = file_get_contents($this->apiKeysStoragePath);
        $data = json_decode($jsonData, true);

        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new \Exception("Error decoding API keys JSON data.");
        }

        return $data;
    }

 public function __invoke(Request $request, RequestHandler $handler)
    {
        $uri = $request->getUri()->getPath();

        // Allow unrestricted access to swagger_v1.json
        if (preg_match('/(swagger_v\d+\.json|validate_key)$/', $uri)) {
            return $handler->handle($request);
        }

        $apiKey = $request->getQueryParams()['api_key'] ?? null;
        $apiKeyDetails = $this->getApiKeyDetails();
        $clientIp = $request->getAttribute('ip_address', $request->getServerParams()['REMOTE_ADDR']);

        $validApiKeys = array_column($apiKeyDetails, 'api_key');
        $isAuthorized = false;

        // Check API key validity and IP restrictions if necessary
        foreach ($apiKeyDetails as $details) {
            if ($details['api_key'] === $apiKey) {
                if (empty($details['restrict_ips']) || in_array($clientIp, $details['restrict_ips'])) {
                    $isAuthorized = true;
                    break;
                }
            }
        }

        // Enforce API key validation and IP restrictions
        if (strpos($uri, 'api/') !== false && !$isAuthorized) {
            header('Content-Type: application/json');
            http_response_code(401);
            echo json_encode([
                'error' => 'Unauthorized',
                'message' => 'Access denied. Please provide a valid API key and ensure your IP address has access.'
            ]);
            exit;
        }

        return $handler->handle($request);
    }
}
