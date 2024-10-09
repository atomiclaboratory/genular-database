<?php
namespace Atomiclab\GenularApi;

use DI\Container;
use Slim\Factory\AppFactory;
use MongoDB\Client as MongoClient;


use Psr\Http\Message\ServerRequestInterface;
use Psr\Log\LoggerInterface;

use Atomiclab\GenularApi\Middleware\RateLimitMiddleware;
use Atomiclab\GenularApi\Middleware\CorsMiddleware;
use Atomiclab\GenularApi\Middleware\ApiMiddleware;
use Atomiclab\GenularApi\Middleware\StaticFileMiddleware;

use Psr\Http\Message\ResponseInterface;

use Monolog\Logger;
use Monolog\Handler\StreamHandler;

class App
{
    private $app;
    public function __construct()
    {
        // Create Container using PHP-DI
        $container = new Container();

        // Set the container to create the app with PHP-DI
        AppFactory::setContainer($container);
        $this->app = AppFactory::create();

        // Logger setup
        $container->set('logger', function () {
            $logger = new Logger('api_logger');
            $logger->pushHandler(new StreamHandler(__DIR__ . '/../storage/debug.log', Logger::DEBUG));
            return $logger;
        });

        $container->set('MongoClient', function() {
            $host = $_ENV['MONGO_DB_HOST'];
            $port = $_ENV['MONGO_DB_PORT'];
            $user = $_ENV['MONGO_DB_USER'];
            $pass = $_ENV['MONGO_DB_PASS'];
            $dbName = $_ENV['MONGO_DB_NAME'];

            $uri = "mongodb://$user:$pass@$host:$port/?authSource=$dbName";
            return new MongoClient($uri, array("socketTimeoutMS" => 600000));
        });
        // Add error handling middleware (optional)
        $this->addErrorHandling();

        // Set up routes
        $this->setUpRoutes();

    }

    public function customErrorHandler(
        ServerRequestInterface $request,
        \Throwable $exception,
        bool $displayErrorDetails,
        bool $logErrors,
        bool $logErrorDetails
    ): ResponseInterface {
        $response = new \Slim\Psr7\Response(); // Create a new response object directly

        $payload = ['error' => $exception->getMessage()];

        $response->getBody()->write(json_encode($payload, JSON_UNESCAPED_UNICODE));
        return $response->withStatus(500)->withHeader('Content-Type', 'application/json');
    }


    private function addErrorHandling()
    {
        $errorMiddleware = $this->app->addErrorMiddleware(true, true, true);
        $errorMiddleware->setDefaultErrorHandler([$this, 'customErrorHandler']);
    }

    private function setUpRoutes()
    {
        $routes = require __DIR__ . '/Routes/routes.php';
        $routes($this->app);
    }

    private function addMiddleware()
    {
        // Rate limit middleware
        $this->app->add(new RateLimitMiddleware(__DIR__ . '/../storage/apiKeys.json'));
        
        // CORS middleware
        $this->app->add(CorsMiddleware::class);

        // API middleware
        $this->app->add(new ApiMiddleware(__DIR__ . '/../storage/apiKeys.json'));
    }

    public function run()
    {
        $this->addMiddleware();
        $this->app->run();
    }
}
