<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $pageTitle ?? 'genular - gene cell encyclopedia'; ?></title>

    <!-- SEO Meta Tags -->
    <meta name="description" content="Genular is a comprehensive gene and cell reference database that provides insights into gene expressions, protein interactions, cellular activity, and disease connections, all in one place.">
    <meta name="keywords" content="Genular, gene cell encyclopedia, gene database, protein interactions, cell activity, gene research, cellular mapping, gene expressions, human biology, cell atlas">
    <meta name="author" content="aTomic Lab">

    <!-- Open Graph / Facebook Meta Tags -->
    <meta property="og:title" content="genular - building blocks of life">
    <meta property="og:description" content="Database for insights into gene functions and cell expressions.">
    <meta property="og:image" content="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon-150x150.png">
    <meta property="og:url" content="<?php echo $_ENV['WEB_URL']; ?>">
    <meta property="og:type" content="website">

    <!-- Twitter Card Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="genular - building blocks of life">
    <meta name="twitter:description" content="Database for insights into gene functions and cell expressions.">
    <meta name="twitter:image" content="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon-150x150.png">

    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon-16x16.png">
    <link rel="manifest" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/site.webmanifest">
    <link rel="mask-icon" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <link rel="shortcut icon" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon.ico">
    <meta name="msapplication-TileColor" content="#2d89ef">
    <meta name="msapplication-config" content="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/browserconfig.xml">
    <meta name="theme-color" content="#ffffff">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/json-viewer-master/src/json-viewer.css">

    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">


    <!-- Select2 CSS -->
    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" />
    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.jsdelivr.net/npm/@ttskch/select2-bootstrap4-theme@x.x.x/dist/select2-bootstrap4.min.css">

    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/atom-one-dark.min.css">

    <!-- Datatables CSS -->
    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.datatables.net/2.0.1/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<?php echo $_ENV['WEB_URL']; ?>/static/main.css">

    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate">
    <meta http-equiv="Expires" content="0">
    <link rel="preload" href="<?php echo $_ENV['WEB_URL']; ?>/static/images/loading.svg" as="image">

    <script>
        const WEB_URL = "<?php echo $_ENV['WEB_URL']; ?>";
        const API_KEY = "<?php echo $_ENV['API_KEY']; ?>";
    </script>

</head>

<body>

    <div class="loading-bar" id="loading-bar">
        <img src="<?php echo $_ENV['WEB_URL']; ?>/static/images/loading.svg" alt="Loading..." />
        <p class="loading-text">Please wait, the internet hamsters are at work!</p>
    </div>


    <header class="text-white text-center">
        <nav class="navbar navbar-expand-lg navbar-light ">
            <div class="container-lg">
                <!-- Toggle button moved to the left -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Logo with responsive utility classes to hide on mobile -->
                <a class="navbar-brand d-none d-lg-block" title="genular - homepage" href="/">
                    <img src="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon-150x150.png" alt="genular logo" height="75" class="d-inline-block align-text-top">
                </a>
                <div class="collapse navbar-collapse" id="navbarNav">
                   <ul class="navbar-nav">
                        <li class="nav-item <?php echo $pathSegments[0] == '' ? 'active' : ''; ?>">
                            <a class="nav-link" title="Database Access" href="/home#api-documentation">Database Access</a></li>
                        <li class="nav-item">
                            <a class="nav-link" title="API Docs" href="/api-docs" target="_blank">API Docs</a></li>
                            
                        <li class="nav-item <?php echo in_array($pathSegments[0], ['explore-genes', 'details-gene']) ? 'active' : ''; ?>">
                            <a class="nav-link" title="Explore genes" href="/explore-genes/1">Genes</a>
                        </li>

                        <li class="nav-item <?php echo in_array($pathSegments[0], ['explore-cells', 'details-cell']) ? 'active' : ''; ?>">
                            <a class="nav-link" title="Explore cells" href="/explore-cells/1">Cells</a>
                        </li>

                        <li class="nav-item <?php echo $pathSegments[0] == 'contact' ? 'active' : ''; ?>">
                            <a class="nav-link" title="Contact" href="/contact">Contact</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

