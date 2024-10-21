<?php

$cellID = $_GET['cellID'] ?? false;
$pageTitle = null;

$description = $synonyms = $depiction = null;
$cellDetails = null;
$genesForCell = null;
$genesForCellCount = false;
$cellUnknown = false;

if ($cellID !== false) {

    $cellID = trim($cellID);
    // Validate that $cellID is in the format CL0000066
    if (preg_match('/^CL\d{7}$/', $cellID)) {
        $cellDetails = fetchCellData(1, $queryValues = [$cellID], $limit = 1000);

        if ($cellDetails && isset($cellDetails['results'][0])){
            $cellDetails = $cellDetails['results'][0];
            $pageTitle = $cellDetails['cell_id'] . ' - ' . $cellDetails['cell_name']. " details";
        }else{
            $cellDetails = null;
        }
    }
}

include __DIR__ . '/include/head.php';

if(!is_null($cellDetails)){
    // Modify the cell ID for the API (insert underscore after CL)
    $apiCellID = substr($cellID, 0, 2) . '_' . substr($cellID, 2);
    // Fetch additional data from the JSON API if cell ID is valid
    $apiUrl = "https://www.ebi.ac.uk/ols4/api/ontologies/cl/terms/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252F" . urlencode($apiCellID);
    $context = stream_context_create(['http' => ['timeout' => 4]]);
    $apiResponse = @file_get_contents($apiUrl, false, $context);

    if ($apiResponse !== false) {
        $apiData = json_decode($apiResponse, true);
        $description = $apiData['description'][0] ?? 'No description available';
        $synonyms = $apiData['synonyms'] ?? ['No synonyms available'];
        $depiction = $apiData['annotation']['depiction'][0] ?? null;
    }

    $genesForCell = searchGenesForCell($queryValues = [$cellDetails['cell_id'] => ">= ".$cellDetails['marker_score']], 500);

    if ($genesForCell && isset($genesForCell['results'][0])){
        $genesForCellCount = $genesForCell ? $genesForCell['total'] : 0;
        $genesForCell = $genesForCell['results'];
    }else{
        $genesForCell = null;
    }
}


// Transform the results to sum foldChange from effectSizes and move to the main level
if (!is_null($genesForCell)) {
    foreach ($genesForCell as &$gene) {
        if (isset($gene['singleCellExpressions']['effectSizes']) && is_array($gene['singleCellExpressions']['effectSizes'])) {
            $foldChangeSum = 0;
            foreach ($gene['singleCellExpressions']['effectSizes'] as $effectSize) {
                if (isset($effectSize['foldChange'])) {
                    $foldChangeSum += $effectSize['foldChange'];
                }
            }
            $gene['foldChange'] = $foldChangeSum;
        }
        // Remove singleCellExpressions if you do not need it anymore
        unset($gene['singleCellExpressions']);
    }
    unset($gene); // Break reference to avoid issues

    usort($genesForCell, function ($a, $b) {
        return $b['foldChange'] <=> $a['foldChange'];
    });
}else{
    $cellUnknown = true;
}


if (!is_null($cellDetails)) {
    
    if($cellUnknown === false){
        $llm_output_formatted = retrieveFromCache($cellID);
        if(is_null($llm_output_formatted)){
            $llm_input = formatCellLLMInput(array(
                'cell_id' => $cellDetails['cell_id'],
                'cell_name' => $cellDetails['cell_name'],
                'description' => $description,
                'synonyms' => $synonyms,
                'genes' => array_slice($genesForCell, 0, 100)
            ));
            $llm_output = fetchLLMOutput($llm_input);

            $llm_output_formatted = null;
            if (isset($llm_output["choices"])) {
                if (isset($llm_output["choices"][0])) {
                    if (isset($llm_output["choices"][0]["message"])) {
                        if (isset($llm_output["choices"][0]["message"]["content"])) {
                            $llm_output_formatted = $llm_output["choices"][0]["message"]["content"];

                            $llm_output_formatted = cleanLLMString($llm_output_formatted);
                            
                            saveToCache($cellID, $llm_output_formatted);
                        }
                    }
                }
            }
        }else{
            $llm_output_formatted = cleanLLMString($llm_output_formatted);
        }
    }
}

lastVisitedPageCache('cell-details', [
    'cellID' => $cellDetails['cell_id'],
    'name' => $cellDetails['cell_name']
]);

?>

<main role="main" class="flex-shrink-0">
    <section id="details" class="pt-3 pb-0">
        <div class="container-lg">
            <div class="row">
                <div class="col-md-6 text-left mb-4">
                    <?php if (!is_null($cellDetails)): ?>
                        <h2>Details for: <?= htmlspecialchars($cellDetails['cell_id']) ?></h2>
                        <div class="cell-details">
                            <?php if (isset($cellDetails['cell_id'])): ?>
                            <div class="card mb-3 position-relative border-0">
                                <div class="card-body">
                                    <?php if (!empty($cellDetails['cell_id'])): ?>
                                        <p class="card-text">
                                            <strong>Cell ID:</strong> <span class="text-primary"><?= htmlspecialchars($cellDetails['cell_id']) ?></span>
                                        </p>
                                    <?php endif; ?>

                                    <?php if (!empty($cellDetails['cell_name'])): ?>
                                        <p class="card-text">
                                            <strong>Cell Name:</strong> <span class="text-success"><?= htmlspecialchars($cellDetails['cell_name']) ?></span>
                                        </p>
                                    <?php endif; ?>

                                    <?php if (!empty($cellDetails['marker_score'])): ?>
                                        <p class="card-text" title="Marker Score Threshold (across all tissues)">
                                            <strong>Marker Score Threshold:</strong> <span class="text-info"><?= number_format(round(htmlspecialchars($cellDetails['marker_score']))) ?></span>
                                            <br />
                                            <small>
                                                (Derived using integrated single-cell and genomic data)
                                            </small>
                                        </p>
                                    <?php endif; ?>

                                    <?php if (!empty($description)): ?>
                                        <p class="card-text">
                                            <strong>Description:</strong> <?= htmlspecialchars($description) ?>
                                        </p>
                                    <?php endif; ?>

                                    <?php if (!empty($synonyms) && is_array($synonyms) && count($synonyms) > 0): ?>
                                        <p class="card-text">
                                            <strong>Synonyms:</strong> <?= htmlspecialchars(implode(', ', $synonyms)) ?>
                                        </p>
                                    <?php endif; ?>

                                    <!-- Info icon linking to the external URL -->
                                    <?php if (!empty($cellDetails['cell_id'])): ?>
                                        <a title="Mode details on EBI" href="https://www.ebi.ac.uk/ols4/ontologies/cl/classes/http%253A%252F%252Fpurl.obolibrary.org%252Fobo%252F<?= urlencode('CL_' . substr($cellDetails['cell_id'], 2)) ?>?lang=en" target="_blank" 
                                            class="position-absolute" style="bottom: 16px; right: 16px;">
                                            <i class="fas fa-info-circle" style="font-size: 1.5rem;"></i>
                                        </a>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <?php endif; ?>
                        </div>
                    <?php else: ?>
                        <h2>No details found for cell ID <?= htmlspecialchars($cellID) ?></h2>
                    <?php endif; ?>
                </div>
                <div class="col-md-6 text-left mb-4">
                    <?php if ($depiction): ?>
                        <h2>Image representation</h2>
                        <div class="card mb-3 border-0">
                            <div class="card-body">
                                <img src="<?= htmlspecialchars($depiction) ?>" alt="Depiction of <?= htmlspecialchars($cellDetails['cell_name'] ?? 'the cell') ?>" class="img-fluid">
                                <div class="text-right">
                                    <small><i>Courtesy of <a href="https://www.swissbiopics.org/" target="_blank">SwissBioPics</a></i></small>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>

                    <?php
                    if (!is_null($genesForCell)):
                    ?>
                        <h2>Genes (max top 100)</h2>
                        <p><small>(Marker Score score is uniquely calculated using our advanced thresholding algorithms to reveal cell-specific gene markers)</small></p>
                        <div class="card mb-3 border-0" style="max-height: 250px; overflow-y: scroll;">
                            <div class="card-body">
                                <?php
                                if (count($genesForCell) > 0) {
                                    echo '<ul class="list-unstyled">';
                                    
                                    // Sort the 'results' array by 'foldChange' in descending order
                                    usort($genesForCell, function($a, $b) {
                                        $foldChangeA = isset($a['foldChange']) ? (float)$a['foldChange'] : 0;
                                        $foldChangeB = isset($b['foldChange']) ? (float)$b['foldChange'] : 0;
                                        return $foldChangeB <=> $foldChangeA;
                                    });

                                    // Limit to the top 100 genes
                                    $topGenes = array_slice($genesForCell, 0, 100);

                                    foreach ($topGenes as $gene) {
                                        $geneSymbol = isset($gene['symbol']) ? htmlspecialchars($gene['symbol']) : 'N/A';
                                        $foldChange = isset($gene['foldChange']) ? htmlspecialchars(round($gene['foldChange'], 2)) : 'N/A';
                                        $ensemblId = isset($gene['crossReference']['enseGeneID']) ? htmlspecialchars($gene['crossReference']['enseGeneID']) : 'N/A';
                                        $geneId = isset($gene['geneID']) ? htmlspecialchars($gene['geneID']) : 'N/A';

                                        echo '<li style="padding-bottom: 5px;">';
                                        echo '<strong>Gene Symbol:</strong> ' . $geneSymbol . ' <span style="float: right;"><small>(<a href="'.$_ENV['WEB_URL'] . '/details-gene/' . $geneId . '">' . $ensemblId . '</a>)</small></span><br>';
                                        echo '<i title="Fold Change (across all tissues)">Fold Change:</i> ' . $foldChange . '<br>';
                                        echo '<i>Ensembl ID:</i> ' . $ensemblId;
                                        echo '</li>';
                                    }

                                    echo '</ul>';
                                } else {
                                    echo '<p>No gene expression data available.</p>';
                                }
                                ?>
                            </div>
                        </div>
                    <?php
                    endif;
                    ?>

                </div>
            </div>


            <?php if (!is_null($cellDetails) && $cellUnknown === false): ?>
                <div class="d-flex align-items-center justify-content-between">
                    <ul class="nav nav-tabs" id="cellTreeMapTab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link" id="cell-treemap-single-tab" data-toggle="tab" 
                            href="#cell-treemap-single-content" role="tab" aria-controls="cell-treemap-single-content" 
                            title="Gene representation (across all tissues)"
                            aria-selected="false">Gene representation (<?php echo $genesForCellCount ; ?>)</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" id="cell-treemap-grouped-tab" data-toggle="tab" 
                            href="#cell-treemap-grouped-content" role="tab" aria-controls="cell-treemap-grouped-content" 
                            title="Gene/Pathway representation (across all tissues)"
                            aria-selected="true">Gene/Pathway representation (<?php echo $genesForCellCount ; ?>)</a>
                        </li>
                    </ul>
                    <button id="downloadCellData" class="btn btn-link ml-auto">
                        <i class="fa fa-download"></i> Download CSV
                    </button>
                </div>

                <!-- Tab Content -->
                <div class="tab-content" id="cellTreeMapTabContent">
                    <!-- TAB 1: TREEMAP single -->
                    <div class="tab-pane fade" id="cell-treemap-single-content" role="tabpanel" aria-labelledby="cell-treemap-single-tab">
                        <div id="cell-treemap-single" style="width: 100%;"></div>

                        <div id="hover-info-cell-single">
                            <div class="card-body pl-0 pr-0">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title"></h5>
                                    <button id="copy-button-cell-single" class="btn btn-primary btn-sm" onclick="copyHoverContent('cell-single')">
                                        <i class="fas fa-copy"></i> Copy
                                    </button>
                                </div>
                                <p id="hover-content-cell-single" class="card-text"></p>
                            </div>
                        </div>

                    </div>
                    <!-- TAB 2: TREEMAP grouped -->
                    <div class="tab-pane fade show active" id="cell-treemap-grouped-content" role="tabpanel" aria-labelledby="cell-treemap-grouped-tab">
                        <div id="cell-treemap-grouped" style="width: 100%;"></div>

                        <div id="hover-info-cell-grouped">
                            <div class="card-body pl-0 pr-0">
                                <div class="d-flex justify-content-between">
                                    <h5 class="card-title"></h5>
                                    <button id="copy-button-cell-grouped" class="btn btn-primary btn-sm" onclick="copyHoverContent('cell-grouped')">
                                        <i class="fas fa-copy"></i> Copy
                                    </button>
                                </div>
                                <p id="hover-content-cell-grouped" class="card-text"></p>
                            </div>
                        </div>
                        
                    </div>
                </div>



                <?php if (!is_null($llm_output_formatted) && str_word_count($llm_output_formatted) > 25): ?>
                <div class="row">
                    <div class="col-md-12 watermarked-text">
                        <md-block>
                            <?php echo $llm_output_formatted; ?>
                        </md-block>
                    </div>
                </div>
                <div class="alert alert-warning mt-2" role="alert">
                    <strong>Disclaimer:</strong> This summary is generated by an AI language model and may contain inaccuracies or hallucinations. However, it is cross-referenced with curated gene expression data from major biological sources. Please verify the information before use.
                </div>
                <?php endif; ?>
            <?php endif; ?>
            <?php if ($cellUnknown === true): ?>
                <div class="alert alert-warning" role="alert">
                    The cell details are incomplete or unavailable at the moment.
                </div>
            <?php endif; ?>
        </div>
    </section>
</main>

<script>
    const genesForCellData = <?php echo json_encode($genesForCell, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP); ?>;
</script>

<!-- used for LLM output -->
<script type="module" src="https://md-block.verou.me/md-block.js"></script>

<?php include __DIR__ . '/include/bottom.php'; ?>
