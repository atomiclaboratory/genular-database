<?php

require __DIR__ . '/../../vendor/autoload.php';

use Atomiclab\GenularApi\App;
use Dotenv\Dotenv;

// Load environment variables
$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();


ini_set('max_execution_time', 0);
ini_set("memory_limit", "-1");


$app = new App();
$app->run();
