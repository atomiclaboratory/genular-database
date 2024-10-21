<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $pageTitle ?? 'Genular: Defining Cellular Identity and Function'; ?></title>

    <!-- SEO Meta Tags -->
    <meta name="description" content="Genular is an advanced platform integrating single-cell RNA-seq data, genomics, and proteomics to define cellular identity and function across tissues and immune contexts.">
    <meta name="keywords" content="Genular, cellular identity, single-cell RNA-seq, gene expression, proteomics, cell marker scores, immunology, gene signatures, cell differentiation">
    <meta name="author" content="aTomic Lab">

    <!-- Open Graph / Facebook Meta Tags -->
    <meta property="og:title" content="Genular: Defining Cellular Identity and Function">
    <meta property="og:description" content="Explore a powerful platform for analyzing gene expressions, immune cell functions, and cellular heterogeneity using single-cell RNA-seq data and multi-domain biological information.">
    <meta property="og:image" content="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/web-app-manifest-512x512.png">
    <meta property="og:url" content="<?php echo $_ENV['WEB_URL']; ?>">
    <meta property="og:type" content="website">

    <!-- Twitter Card Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="Genular: Defining Cellular Identity and Function">
    <meta name="twitter:description" content="Discover how Genular integrates gene expression, proteomics, and single-cell RNA-seq data to define cellular functions and states.">
    <meta name="twitter:image" content="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/web-app-manifest-512x512.png">

    <!-- Favicon and Apple Touch Icon -->
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon-48x48.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon-48x48.png">
    <link rel="manifest" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/site.webmanifest">
    <link rel="mask-icon" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon.svg" color="#5bbad5">
    <link rel="shortcut icon" href="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/favicon.ico">

    <!-- Windows-specific and Theme color Meta Tags -->
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
                <a class="navbar-brand d-none d-lg-block" title="Home" href="/">
                    <img src="<?php echo $_ENV['WEB_URL']; ?>/static/favicon/original_small.png" alt="genular logo" height="75" class="d-inline-block align-text-top">
                </a>
                <div class="collapse navbar-collapse" id="navbarNav">
                   <ul class="navbar-nav">
                        <li class="nav-item <?php echo $pathSegments[0] == '' ? 'active' : ''; ?>">
                            <a class="nav-link" title="Home >> Database Access" href="/home#api-documentation">Database Access</a></li>
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

