<?php

// Define an array of allowed origins
$allowedOrigins = [
    'https://jsoncrack.com',
    'http://genular.localhost',
    'https://genular.atomic-lab.org',
];

// Set the Access-Control-Allow-Origin header dynamically if the origin is allowed
if (isset($_SERVER['HTTP_ORIGIN'])) {
    $origin = $_SERVER['HTTP_ORIGIN'];
    if (in_array($origin, $allowedOrigins)) {
        header('Access-Control-Allow-Origin: ' . $origin);
    }
}

header('Access-Control-Allow-Methods: GET, POST, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Baggage');

// Respond to the OPTIONS preflight request
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    // Just exit with status 200 for OPTIONS request
    exit(0);
}


require __DIR__ . '/../../vendor/autoload.php';

use Dotenv\Dotenv;


// Load environment variables
$dotenv = Dotenv::createImmutable(__DIR__ . '/../..');
$dotenv->load();

ini_set('max_execution_time', 300);
ini_set('memory_limit', '512M');


require __DIR__ . '/includes/functions.php';

// Get the current request path
$requestPath = $_SERVER['REQUEST_URI'];
// Remove query string from the request path
$requestPath = explode('?', $requestPath)[0];
// Remove leading and trailing slashes
$requestPath = trim($requestPath, '/');

// Split the request path into segments
$pathSegments = explode('/', $requestPath);


if($requestPath === "" || $requestPath === "home"){
    $requestPath = "main";
}

// Check the number of segments and the first segment to determine the routing
if (count($pathSegments) >= 2) {
    switch ($pathSegments[0]) {
        case 'explore-genes':
            // Handle the 'explore-genes' page with a page ID
            $pageId = $pathSegments[1];
            $_GET['pageID'] = $pageId;
            include __DIR__ . "/pages/explore-genes.php";
            break;
        case 'explore-cells':
            // Handle the 'explore-cells' page with a page ID
            $pageId = $pathSegments[1];
            $_GET['pageID'] = $pageId;
            include __DIR__ . "/pages/explore-cells.php";
            break;
        case 'details':
            // Old URLs
            $geneId = $pathSegments[1];
            header("HTTP/1.1 301 Moved Permanently");
            header("Location: /details-gene/{$geneId}");
            exit();
            break;
        case 'details-gene':
            // Handle the 'details-gene' page with a gene ID
            $geneId = $pathSegments[1];
            $_GET['geneID'] = $geneId;
            include __DIR__ . "/pages/details-gene.php";
            break;
        case 'details-cell':
            // Handle the 'details-cell' page with a cell ID
            $cellID = $pathSegments[1];
            $_GET['cellID'] = $cellID;
            include __DIR__ . "/pages/details-cell.php";
            break;
        case 'download':
            // Handle the 'details' page with a gene ID
            $geneId = $pathSegments[1];
            $_GET['geneID'] = $geneId;
            $geneID = (int) $_GET['geneID'];

            $downloadData = null;
            if($geneID > 0){
                $downloadData = fetchGeneDetails($geneID, []);    
            }
            if ($downloadData && isset($downloadData['results'])){
                $data = json_encode($downloadData['results'], JSON_PRETTY_PRINT);
                header('Content-Type: application/json');
                header('Content-Disposition: attachment; filename="gene-details-'.$geneID.'.json"');
                
                $speed = 1024 * 10;
                $chunks = str_split($data, $speed);
                foreach ($chunks as $chunk) {
                    echo $chunk;
                    // Ensure that all output is sent to the client.
                    flush();
                    // Sleep one second to limit the speed
                    sleep(1);
                }
            } else {
                include __DIR__ . '/pages/404.php';
            }
            break;
        case 'show':
            // Handle the 'details' page with a gene ID
            $geneId = $pathSegments[1];
            $_GET['geneID'] = $geneId;
            $geneID = (int) $_GET['geneID'];

            $downloadData = null;
            if ($geneID > 0) {
                $downloadData = fetchGeneDetails($geneID, []);
            }

            if ($downloadData && isset($downloadData['results'])) {

     
                // Check and keep only first two entries for 'effectSizes'
                if (isset($downloadData['results'][0]['singleCellExpressions']['effectSizes'])) {
                    $downloadData['results'][0]['singleCellExpressions']['effectSizes'] = array_slice($downloadData['results'][0]['singleCellExpressions']['effectSizes'], 0, 2);
                }

                // Check and keep only first two entries for 'proteinAtlas'
                if (isset($downloadData['results'][0]['mRNAExpressions']['proteinAtlas'])) {
                    $downloadData['results'][0]['mRNAExpressions']['proteinAtlas'] = array_slice($downloadData['results'][0]['mRNAExpressions']['proteinAtlas'], 0, 2);
                }

                if (isset($downloadData['results'][0]['ontology'])) {
                    $downloadData['results'][0]['ontology'] = array_slice($downloadData['results'][0]['ontology'], 0, 2);
                }

                $data = json_encode($downloadData['results'][0], JSON_PRETTY_PRINT);
                header('Content-Type: application/json');
                echo $data;
                exit();
            } else {
                include __DIR__ . '/pages/404.php';
            }
            break;
        case 'contact':
            include __DIR__ . "/pages/contact.php";
            break;
        default:
            // If no recognized pattern is found, show a 404 page
            include __DIR__ . '/pages/404.php';
    }
} elseif (file_exists(__DIR__ . "/pages/{$requestPath}.php")) {
    
    if($requestPath === "details-gene"){
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: ".$_ENV['WEB_URL']);
        exit();
    }
    if($requestPath === "details-cell"){
        header("HTTP/1.1 301 Moved Permanently");
        header("Location: ".$_ENV['WEB_URL']);
        exit();
    }

    include __DIR__ . "/pages/{$requestPath}.php";
} else {
    // If no matching file is found, include the 404 page
    include __DIR__ . '/pages/404.php';
}
