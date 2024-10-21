<?php

$geneID =  $_GET['geneID'] ?? null;

$pageTitle = null;
$geneDetails = null;
$geneDetailsSchema = null;

$geneUnknown = false;
$proteinData = false;

if ($geneID !== null && is_numeric($geneID) && (int)$geneID == $geneID) {
    $geneID = (int)$geneID;

    $geneDetails = fetchGeneDetails($geneID, []);

    if ($geneDetails && isset($geneDetails['results'][0])){
        $geneDetailsSchema = $geneDetails['results'][0];
    }else{
        $geneDetailsSchema = null;
        $geneUnknown = true;
    }

    $pageTitle = "Gene ".
        (!empty($geneDetailsSchema['symbol']) ? $geneDetailsSchema['symbol'] . " - " : "") . 
        (!empty($geneDetailsSchema['crossReference']['enseGeneID']) ? $geneDetailsSchema['crossReference']['enseGeneID'] . " | " : "") . 
        (empty($geneDetailsSchema['symbol']) && empty($geneDetailsSchema['crossReference']['enseGeneID']) ? "" : "") . 
        "NCBI Gene ID: ". $geneID . " - Details";
}

include __DIR__ . '/include/head.php';

if ($geneDetailsSchema !== null) {
    
    trimArrays($geneDetailsSchema, 100);

    if (empty($geneDetailsSchema['crossReference']['enseGeneID']) || empty($geneDetailsSchema['singleCellExpressions']['effectSizes'])) {
        $geneUnknown = true;
    }
    if(!empty($geneDetailsSchema["protein"])) {
        $proteinData = $geneDetailsSchema["protein"];
    }

    if($geneUnknown === false){
        // Retrieve from cache if exists
        $llm_output_formatted = retrieveFromCache($geneID);
        if(is_null($llm_output_formatted)){
            $llm_input = formatLLMInput($geneDetailsSchema);
            $llm_output = fetchLLMOutput($llm_input);
            $llm_output_formatted = null;
            if (isset($llm_output["choices"])) {
                if (isset($llm_output["choices"][0])) {
                    if (isset($llm_output["choices"][0]["message"])) {
                        if (isset($llm_output["choices"][0]["message"]["content"])) {
                            $llm_output_formatted = $llm_output["choices"][0]["message"]["content"];

                            $llm_output_formatted = cleanLLMString($llm_output_formatted);
                            
                            // Cache content
                            saveToCache($geneID, $llm_output_formatted);
                        }
                    }
                }
            }
        }else{
            $llm_output_formatted = cleanLLMString($llm_output_formatted);
        }
    }
}

lastVisitedPageCache('gene-details', [
    'geneID' => $geneDetailsSchema['geneID'],
    'symbol' => $geneDetailsSchema['symbol']
]);

?>
<main role="main" class="flex-shrink-0">
    <section id="details" class="pt-3 pb-0">
        <div class="container-lg">
            <div class="row">
                <div class="<?php echo empty($geneDetailsSchema) ? 'col-md-12' : 'col-md-6'; ?> text-left mb-4">
                    <!-- Existing Gene Details Card -->
                    <?php if ($geneDetailsSchema): ?>
                        <h2>Details for: <?= htmlspecialchars($geneDetailsSchema['symbol']) ?></h2>
                        <div class="gene-details">
                            <?php if (isset($geneDetailsSchema['geneID'])): ?>
                            <div class="card mb-3">
                                <div class="card-body">
                                    <?php if (!empty($geneDetailsSchema['geneID'])): ?>
                                        <p class="card-text"><strong>Gene ID:</strong> <span class="text-primary"><?= htmlspecialchars($geneDetailsSchema['geneID']) ?></span></p>
                                    <?php endif; ?>

                                    <?php if (!empty($geneDetailsSchema['symbol'])): ?>
                                        <p class="card-text"><strong>Symbol:</strong> <span class="text-success"><?= htmlspecialchars($geneDetailsSchema['symbol']) ?></span></p>
                                    <?php endif; ?>

                                    <?php if (!empty($geneDetailsSchema['crossReference']['enseGeneID'])): ?>
                                        <p class="card-text"><strong>Ensembl ID:</strong> <span class="text-info"><?= htmlspecialchars($geneDetailsSchema['crossReference']['enseGeneID']) ?></span></p>
                                    <?php endif; ?>

                                    <?php if (!empty($geneDetailsSchema['desc'])): ?>
                                        <p class="card-text"><strong>Description:</strong> <?= htmlspecialchars($geneDetailsSchema['desc']) ?></p>
                                    <?php endif; ?>
                                    <?php if (!empty($geneDetailsSchema['geneID'])): ?>
                                        <a title="Download full JSON Object" href="<?php echo $_ENV['WEB_URL'] . '/download/' . $geneDetailsSchema['geneID']; ?>" target="_blank" 
                                            class="position-absolute" style="bottom: 16px; right: 16px;">
                                            <i class="fas fa-download" style="font-size: 1.5rem;"></i> <!-- Download icon -->
                                        </a>
                                    <?php endif; ?>

                                </div>
                            </div>
                            <?php endif; ?>
                            <div style="width:100%; height:400px">
                                <canvas id="expressionChart"></canvas>
                            </div>
                            <div id="chartLabels" class="chart-labels"></div>
                        </div>
                    <?php else: ?>
                        <center>
                            <h2>No details found for requested gene!</h2>
                        </center>

                    <?php endif; ?>
                </div>
                <?php if (!empty($geneDetailsSchema['ontology'])): ?>
                    <div class="col-md-6 text-left mb-4">
                        <?php if (!empty($geneDetailsSchema['ontology'])): ?>
                        <h2>Associated with</h2>
                        <div class="card mb-3" style="max-height: 500px; overflow-y: scroll;">
                            <div class="card-body">
                                <ul class="list-unstyled">
                                <?php 
                                // Extract terms and ids
                                $terms = array_map(function($ontology) {
                                    return ucfirst(strtolower(trim($ontology['term'])));
                                }, $geneDetailsSchema['ontology']);


                                $ids = array_map(function($ontology) {
                                    return $ontology['id'];
                                }, $geneDetailsSchema['ontology']);

                                // Combine terms with their ids to ensure uniqueness
                                $combined = array_combine($terms, $ids);

                                uksort($combined, function($a, $b) use ($combined) {
                                    $idA = $combined[$a];
                                    $idB = $combined[$b];

                                    // Prioritize IDs starting with "R"
                                    $startsWithRA = strpos($idA, 'R') === 0;
                                    $startsWithRB = strpos($idB, 'R') === 0;

                                    if ($startsWithRA && !$startsWithRB) {
                                        return -1; // $a should come before $b
                                    } elseif (!$startsWithRA && $startsWithRB) {
                                        return 1; // $b should come before $a
                                    } else {
                                        // If both or neither start with "R", sort alphabetically
                                        return strnatcasecmp($a, $b);
                                    }
                                });

                                ?>

                                <?php foreach ($combined as $term => $id): ?>
                                    <?php
                                        // Determine the link based on the ID prefix
                                        $link = '';
                                        if (strpos($id, 'GO') === 0) {
                                            $link = 'https://www.ebi.ac.uk/QuickGO/term/' . htmlspecialchars($id);
                                        } elseif (strpos($id, 'R') === 0) {
                                            $link = 'https://reactome.org/content/detail/' . htmlspecialchars($id);
                                        }
                                    ?>
                                    <li title="<?= htmlspecialchars($term) ?> (<?= htmlspecialchars($id) ?>)" style="display: flex; justify-content: space-between; align-items: center; white-space: nowrap; overflow: hidden;">
                                        <div style="flex: 1; overflow: hidden; text-overflow: ellipsis;">
                                            <?php if ($link): ?>
                                                <?= htmlspecialchars($term) ?>
                                            <?php else: ?>
                                                <?= htmlspecialchars($term) ?>
                                            <?php endif; ?>
                                        </div>
                                        <span style="margin-left: 10px; flex-shrink: 0;">
                                            <small>(<a href="<?= $link ?>" target="_blank"><?= htmlspecialchars($id) ?></a>)</small>
                                        </span>
                                    </li>
                                <?php endforeach; ?>
                                </ul>
                            </div>
                        </div>
                    <?php endif; ?>
                    <?php
                        if (isset($geneDetailsSchema['singleCellExpressions']['effectSizes']) && !empty($geneDetailsSchema['singleCellExpressions']['effectSizes'])):
                    ?>
                    <h2>Cells (max top 100)</h2>
                    <p><small>(Marker Score score is uniquely calculated using our advanced thresholding algorithms to reveal cell-specific gene markers)</small></p>
                    <div class="card mb-3" style="max-height: 250px; overflow-y: scroll;">
                        <div class="card-body">
                            <?php
                                echo '<ul class="list-unstyled">';
                                // Sort the 'effectSizes' array by 'foldChange' in descending order
                                usort($geneDetailsSchema['singleCellExpressions']['effectSizes'], function($a, $b) {
                                    $foldChangeA = isset($a['foldChange']) ? (float)$a['foldChange'] : 0;
                                    $foldChangeB = isset($b['foldChange']) ? (float)$b['foldChange'] : 0;
                                    return $foldChangeB <=> $foldChangeA;
                                });
                                $effectSizes = array_slice($geneDetailsSchema['singleCellExpressions']['effectSizes'], 0, 100);
                                foreach ($effectSizes as $effect) {
                                    $cellTerm = isset($effect['cell_term']) ? htmlspecialchars($effect['cell_term']) : 'N/A';
                                    $foldChange = isset($effect['foldChange']) ? htmlspecialchars(round($effect['foldChange'], 2)) : 'N/A';
                                    $markerScore = isset($effect['markerScore']) ? htmlspecialchars(round($effect['markerScore'], 2)) : 'N/A';
                                    $cellId = isset($effect['cell_id']) ? htmlspecialchars($effect['cell_id']) : 'N/A';
                                    
                                    echo '<li style="padding-bottom: 5px;">';
                                    echo '<strong>Cell Name:</strong> ' . $cellTerm . ' <span style="float: right;"><small>(<a href="'.$_ENV['WEB_URL'] . '/details-cell/' . $cellId . '">' . $cellId . '</a>)</small></span><br>';
                                    echo '<i>Fold Change:</i> ' . $foldChange . '<br>';
                                    echo '<i>Marker Score:</i> ' . $markerScore;
                                    echo '</li>';
                                }

                                echo '</ul>';
                            ?>
                        </div>
                    </div>
                    <?php
                        endif;
                    ?>
                </div>
                <?php endif; ?>
            </div>
            <?php 
                if (isset($geneDetailsSchema['singleCellExpressions']['effectSizes']) && !empty($geneDetailsSchema['singleCellExpressions']['effectSizes'])):
            ?>
            <div class="d-flex align-items-center justify-content-between">
                <ul class="nav nav-tabs" id="geneTreeMapTab" role="tablist">
                    <li class="nav-item">
                        <a class="nav-link" title="Cell expressions (across all tissues)" id="gene-treemap-single-tab" data-toggle="tab" href="#gene-treemap-single-content" role="tab" aria-controls="gene-treemap-single-content" aria-selected="false">Cell expressions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" title="Cell expressions by lineages (across all tissues)" id="gene-treemap-grouped-tab" data-toggle="tab" href="#gene-treemap-grouped-content" role="tab" aria-controls="gene-treemap-grouped-content" aria-selected="false">Cell expressions by lineages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" title="Cell expressions by lineage (detail - across all tissues)" id="gene-treemap-grouped-details-tab" data-toggle="tab" href="#gene-treemap-grouped-details-content" role="tab" aria-controls="gene-treemap-grouped-details-content" aria-selected="true">Cell expressions by lineage (detail)</a>
                    </li>
                </ul>
                <button id="downloadGeneData" class="btn btn-link ml-auto">
                    <i class="fa fa-download"></i> Download CSV
                </button>
            </div>
            <!-- Tab Content -->
            <div class="tab-content" id="geneTreeMapTabContent">
                <!-- TAB 1: TREEMAP SINGLE -->
                <div class="tab-pane fade" id="gene-treemap-single-content" role="tabpanel" aria-labelledby="gene-treemap-single-tab">
                    <div id="gene-treemap-single" style="width: 100%;"></div>
                    <!-- Hover Info Section for Single Treemap -->
                    <div id="hover-info-single" class="card shadow-sm mt-4">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <h5 class="card-title"></h5>
                                <button id="copy-button-single" class="btn btn-primary btn-sm" onclick="copyHoverContent('single')">
                                    <i class="fas fa-copy"></i> Copy
                                </button>
                            </div>
                            <p id="hover-content-single" class="card-text">Hover over a box to see details here...</p>
                        </div>
                    </div>

                </div>
                
                <!-- TAB 2: TREEMAP GROUPED -->
                <div class="tab-pane fade" id="gene-treemap-grouped-content" role="tabpanel" aria-labelledby="gene-treemap-grouped-tab">
                    <div id="gene-treemap-grouped" style="width: 100%;"></div>

                    <!-- Hover Info Section for Grouped Treemap -->
                    <div id="hover-info-grouped" class="card shadow-sm mt-4">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <h5 class="card-title"></h5>
                                <button id="copy-button-grouped" class="btn btn-primary btn-sm" onclick="copyHoverContent('grouped')">
                                    <i class="fas fa-copy"></i> Copy
                                </button>
                            </div>
                            <p id="hover-content-grouped" class="card-text"></p>
                        </div>
                    </div>
                </div>

                <!-- TAB 3: TREEMAP GROUPED DETAILS -->
                <div class="tab-pane fade show active" id="gene-treemap-grouped-details-content" role="tabpanel" aria-labelledby="gene-treemap-grouped-details-tab">
                    <div id="gene-treemap-grouped-details" style="width: 100%;"></div>

                    <!-- Hover Info Section for Grouped Details Treemap -->
                    <div id="hover-info-grouped-details" class="card shadow-sm mt-4">
                        <div class="card-body">
                            <div class="d-flex justify-content-between">
                                <h5 class="card-title"></h5>
                                <button id="copy-button-grouped-details" class="btn btn-primary btn-sm" onclick="copyHoverContent('grouped-details')">
                                    <i class="fas fa-copy"></i> Copy
                                </button>
                            </div>
                            <p id="hover-content-grouped-details" class="card-text"></p>
                        </div>
                    </div>
                </div>
            </div>

            <?php endif; ?>


            <?php if($geneUnknown === false || $proteinData !== false && $geneDetailsSchema !== null): ?>
                <div class="container">
                    <h2 class="text-center mt-4 mb-4">Other Information</h2>
                    <!-- Main Tabs Navigation -->
                    <ul class="nav nav-tabs" id="mainTab" role="tablist">
                        <?php 
                        $hasDescription = ($geneUnknown === false && !is_null($llm_output_formatted) && str_word_count($llm_output_formatted) > 25);
                        $hasProteins = ($proteinData !== false);
                        ?>

                        <?php if ($hasDescription): ?>
                            <li class="nav-item">
                                <a class="nav-link <?php echo $hasDescription ? 'active' : ''; ?>" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="<?php echo $hasDescription ? 'true' : 'false'; ?>">
                                    Description
                                </a>
                            </li>
                        <?php endif; ?>

                        <?php if ($hasProteins): ?>
                            <li class="nav-item">
                                <a class="nav-link <?php echo !$hasDescription && $hasProteins ? 'active' : ''; ?>" id="proteins-tab" data-toggle="tab" href="#proteins" role="tab" aria-controls="proteins" aria-selected="<?php echo !$hasDescription && $hasProteins ? 'true' : 'false'; ?>">
                                    Proteins
                                </a>
                            </li>
                        <?php endif; ?>
                    </ul>

                    <!-- Main Tabs Content -->
                    <div class="tab-content" id="mainTabContent">
                        <!-- Description Tab -->
                        <?php if ($hasDescription): ?>
                            <div class="tab-pane fade <?php echo $hasDescription ? 'show active' : ''; ?>" id="description" role="tabpanel" aria-labelledby="description-tab">
                                <div class="card mt-0 border-0">
                                    <div class="card-body p-0">
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
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                        
                        <?php if ($hasProteins): ?>
                            <!-- Proteins Tab -->
                            <div class="tab-pane fade <?php echo !$hasDescription && $hasProteins ? 'show active' : ''; ?>" id="proteins" role="tabpanel" aria-labelledby="proteins-tab">
                                <div class="container mt-4 p-0">
                                    <!-- Proteins Sub-tabs Navigation -->
                                    <ul class="nav nav-tabs" id="proteinSubTab" role="tablist">
                                        <?php foreach ($proteinData as $index => $protein): ?>
                                            <li class="nav-item">
                                                <a class="nav-link <?php echo $index === 0 ? 'active' : ''; ?>" id="protein-sub-tab-<?php echo $index; ?>" data-toggle="tab" href="#protein-sub-<?php echo $index; ?>" role="tab" aria-controls="protein-sub-<?php echo $index; ?>" aria-selected="<?php echo $index === 0 ? 'true' : 'false'; ?>">
                                                    <?php echo htmlspecialchars($protein['name'] ?? $protein['symbol']); ?>
                                                </a>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>

                                    <!-- Proteins Sub-tabs Content -->
                                    <div class="tab-content" id="proteinSubTabContent">
                                        <?php foreach ($proteinData as $index => $protein): ?>
                                            <div class="tab-pane fade <?php echo $index === 0 ? 'show active' : ''; ?>" id="protein-sub-<?php echo $index; ?>" role="tabpanel" aria-labelledby="protein-sub-tab-<?php echo $index; ?>">
                                                <div class="card mt-2 border-0">
                                                    <div class="card-body p-0">
                                                        <p class="font-weight-bold">
                                                            Genular Protein ID: <span class="font-weight-normal">
                                                            <?php echo htmlspecialchars($protein['proteinID'] ?? 'N/A'); ?></span>
                                                        </p>
                                                        <p class="font-weight-bold">
                                                            Symbol: <span class="font-weight-normal">
                                                            <?php echo htmlspecialchars($protein['symbol'] ?? 'N/A'); ?></span>
                                                        </p>
                                                        <p class="font-weight-bold">
                                                            Name: <span class="font-weight-normal">
                                                            <?php echo htmlspecialchars($protein['name'] ?? 'N/A'); ?></span>
                                                        </p>
                                                        <p class="font-weight-bold">UniProtKB Accession Codes:</p>
                                                        <div class="mb-3">
                                                            <?php foreach ($protein['accession'] as $accession): ?>
                                                                <span class="badge badge-primary mr-2 mb-2">
                                                                    <a href="https://www.uniprot.org/uniprot/<?php echo htmlspecialchars($accession); ?>" target="_blank" class="text-white">
                                                                        <?php echo htmlspecialchars($accession); ?>
                                                                        <i class="fas fa-external-link-alt"></i> 
                                                                    </a>
                                                                </span>
                                                            <?php endforeach; ?>
                                                        </div>
                                                        <?php if (!empty($protein['databaseIDs']) && count($protein['databaseIDs']) > 0): ?>
                                                            <p class="font-weight-bold">Database IDs:</p>
                                                            <div class="dropdown mb-3">
                                                                <button class="btn btn-secondary dropdown-toggle" type="button" id="databaseDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                    Select Database
                                                                </button>
                                                                <div class="dropdown-menu" aria-labelledby="databaseDropdown">
                                                                    <?php 
                                                                        // Sort the databaseIDs array by the keys (dbName) alphabetically
                                                                        ksort($protein['databaseIDs']);
                                                                    ?>
                                                                    <?php foreach ($protein['databaseIDs'] as $dbName => $ids): ?>
                                                                        <?php 
                                                                            $idCount = count($ids);
                                                                            $badgeClass = 'badge-primary'; // Default blue color
                                                                            if ($idCount > 5) {
                                                                                $badgeClass = 'badge-danger'; // Red color
                                                                            } elseif ($idCount > 1) {
                                                                                $badgeClass = 'badge-warning'; // Yellow color
                                                                            }
                                                                        ?>
                                                                        <a class="dropdown-item d-flex justify-content-between align-items-center" href="#" data-toggle="modal" 
                                                                            data-target="#databaseModal" 
                                                                            data-dbname="<?php echo htmlspecialchars($dbName); ?>" 
                                                                            data-ids="<?php echo htmlspecialchars(json_encode($ids)); ?>">
                                                                            <?php echo htmlspecialchars($dbName); ?>
                                                                            <span class="badge badge-pill <?php echo $badgeClass; ?> ml-2"><?php echo $idCount; ?></span>
                                                                        </a>
                                                                    <?php endforeach; ?>
                                                                </div>
                                                            </div>

                                                            <!-- Modal for Displaying Database IDs -->
                                                            <div class="modal fade" id="databaseModal" tabindex="-1" role="dialog" aria-labelledby="databaseModalLabel" aria-hidden="true">
                                                                <div class="modal-dialog" role="document">
                                                                    <div class="modal-content">
                                                                        <div class="modal-header">
                                                                            <h5 class="modal-title" id="databaseModalLabel">Database IDs</h5>
                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                <span aria-hidden="true">&times;</span>
                                                                            </button>
                                                                        </div>
                                                                        <div class="modal-body">
                                                                            <h6 id="modalDbName"></h6>
                                                                            <div id="modalDbIds" class="badge-container mt-2" style="max-height: 200px; overflow-y: auto;">
                                                                                <!-- IDs will be populated here via JavaScript -->
                                                                            </div>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        <?php endif; ?>
                                                        <?php if (!empty($protein['citations'])): ?>
                                                            <p class="font-weight-bold">Citations:</p>
                                                            <div id="citationsAccordion">
                                                                <?php foreach ($protein['citations'] as $index => $citation): ?>
                                                                    <div class="card mb-3">
                                                                        <div class="card-header" id="citation-heading-<?php echo $index; ?>">
                                                                            <h6 class="mb-0 d-flex justify-content-between align-items-center">
                                                                                <button class="btn btn-link collapsed" style="text-align: left;" data-toggle="collapse" data-target="#citation-<?php echo $index; ?>" aria-expanded="false" aria-controls="citation-<?php echo $index; ?>">
                                                                                    <?php echo htmlspecialchars($citation['title']); ?>
                                                                                </button>
                                                                                <span class="badge badge-info"><?php echo isset($citation['pubmedID']) ? 'PubMed ID: ' . htmlspecialchars($citation['pubmedID']) : ''; ?></span>
                                                                            </h6>
                                                                        </div>

                                                                        <div id="citation-<?php echo $index; ?>" class="collapse" aria-labelledby="citation-heading-<?php echo $index; ?>" data-parent="#citationsAccordion">
                                                                            <div class="card-body">
                                                                                <p><strong>Title:</strong> <?php echo htmlspecialchars($citation['title']); ?></p>
                                                                                <?php if (isset($citation['pubmedID'])): ?>
                                                                                    <p><strong>PubMed ID:</strong> <span class="badge badge-secondary"><?php echo htmlspecialchars($citation['pubmedID']); ?></span></p>
                                                                                <?php endif; ?>
                                                                                <?php if (isset($citation['doi'])): ?>
                                                                                    <p><strong>DOI:</strong> <a href="https://doi.org/<?php echo htmlspecialchars($citation['doi']); ?>" target="_blank" class="btn btn-sm btn-outline-primary">
                                                                                        <i class="fas fa-external-link-alt"></i> <?php echo htmlspecialchars($citation['doi']); ?>
                                                                                    </a></p>
                                                                                <?php endif; ?>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                <?php endforeach; ?>
                                                            </div>
                                                        <?php endif; ?>


                                                        <p class="font-weight-bold">Sequence Information:</p>
                                                         <ul>
                                                            <li><strong>Length:</strong> <?php echo htmlspecialchars($protein['sequence']['length']); ?></li>
                                                            <li><strong>Mass:</strong> <?php echo htmlspecialchars($protein['sequence']['mass']); ?></li>
                                                            <li><strong>Checksum:</strong> <?php echo htmlspecialchars($protein['sequence']['checksum']); ?></li>
                                                            <li><strong>Sequence:</strong></li>
                                                            <pre class="formatted-sequence"><?php echo formatProteinSequence($protein['sequence']['sequence']); ?></pre>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            <?php endif; ?>

            <?php if ($geneUnknown === true): ?>
                <div class="alert alert-warning" role="alert">
                    The gene details are incomplete or unavailable at the moment.
                </div>
            <?php endif; ?>
        </div>
    </section>

    <?php if ($geneDetailsSchema !== null): ?>
        <section id="details_schema" class="full-screen-section-details"> 
            <!-- Loader Overlay -->
            <div id="loaderOverlay">
                <div class="loader"></div> <!-- This will be your spinner or loading animation -->
            </div>
            <div class="container-lg">
                <div class="text-left">
                    <h2>Database document:</h2>
                    <p id="searchDescription" class="mt-2" style="text-align: left;">
                        This is <strong>a preview</strong> of the gene's schema. Only a few entries are kept for 'singleCellExpressions,' 'mRNAExpressions,' and other large data arrays for visualization purposes. 
                        For the full schema, <a href="<?php echo $_ENV['WEB_URL'] . '/download/' . $geneID; ?>" target="_blank">download it here</a>.
                    </p>
                </div>
            </div>

            <script>
                function sendPostMessage() {
                    // Check if the 'geneDetailsSchema' variable is defined and not false.
                    if (typeof geneDetailsSchema !== "undefined" && geneDetailsSchema !== false) {

                        if(geneDetailsSchemaLarge === false){
                            const jsonCrackEmbed = document.getElementById("jsoncrackEmbed");
                            const options = {
                                theme: "light", // "light" or "dark"
                                direction: "RIGHT", // "UP", "DOWN", "LEFT", "RIGHT"
                            };
                            // Now that the iframe is loaded, post the message.
                            jsonCrackEmbed.contentWindow.postMessage(
                                {
                                    json: geneDetailsSchema, // Make sure this is the correct property to send
                                    options,
                                },
                                "*"
                            );
                        }else{
                            // Hide the loader overlay
                            document.getElementById("details_schema").style.display = "none";
                        }
                    }

                    // Hide the loader overlay
                    document.getElementById("loaderOverlay").style.display = "none";
                }
            </script>

            <iframe id="jsoncrackEmbed" src="https://jsoncrack.com/widget" 
                width="100%" 
                height="100%" 
                onload="sendPostMessage()"></iframe>
        </section>
    <?php endif; ?>
</main>

<script>
<?php
// Function to sanitize group names to prevent URI issues
function sanitizeGroup($groupName) {
    return htmlspecialchars($groupName, ENT_QUOTES, 'UTF-8');
}

// Check if 'effectSizes' data exists
if (isset($geneDetailsSchema['singleCellExpressions']['effectSizes']) && !empty($geneDetailsSchema['singleCellExpressions']['effectSizes'])):
    // Retrieve effectSizes data
    $effectSizes = $geneDetailsSchema['singleCellExpressions']['effectSizes'];

    // Extract all unique cell_ids from effectSizes using array_column
    $queryValues = array_column($effectSizes, 'cell_id');

    // Fetch cell lineages based on cell_ids
    $cellLineagesResponse = fetchCellData($pageID, $queryValues, 1000);

    // Initialize arrays for labels and parents
    $labels = [];
    $parents = [];
    $cellToParentMap = [];
    $rootNode = 'All Cells';

    // Add root node
    $labels[] = $rootNode;
    $parents[] = '';

    // Process the cellLineagesResponse to build the mapping
    if (isset($cellLineagesResponse['results']) && is_array($cellLineagesResponse['results'])) {
        foreach ($cellLineagesResponse['results'] as $parentCell) {
            $parent_id = $parentCell['cell_id'];
            $parent_name = sanitizeGroup($parentCell['cell_name']);

            // Add parent cell to labels and map it to rootNode
            if (!in_array($parent_name, $labels)) {
                $labels[] = $parent_name;
                $parents[] = $rootNode;
            }

            // Map each child to its parent group
            if (isset($parentCell['childs']) && is_array($parentCell['childs'])) {
                foreach ($parentCell['childs'] as $childCell) {
                    $child_id = $childCell['cell_id'];
                    $child_name = sanitizeGroup($childCell['cell_name']);
                    $cellToParentMap[$child_id] = $parent_name;

                    // Add child to labels and map it to its parent
                    $labels[] = $child_name;
                    $parents[] = $parent_name;
                }
            }

            // Optionally, map parent cells to themselves or a special group
            $cellToParentMap[$parent_id] = $parent_name;
        }
    }

    // Enrich effectSizes data with labels and parents information
    foreach ($effectSizes as &$cellExpression) {
        $cell_id = $cellExpression['cell_id'];
        if (isset($cellToParentMap[$cell_id])) {
            $cellExpression['parent'] = $cellToParentMap[$cell_id];
            $cellExpression['label'] = sanitizeGroup($cellExpression['cell_term']);
        } else {

            $cellExpression['parent'] = $rootNode;
            $cellExpression['label'] = sanitizeGroup($cellExpression['cell_term']);
        }
    }
    unset($cellExpression); // Break the reference

    // Encode the labels and parents arrays for JavaScript
    $labelsJS = json_encode($labels, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP);
    $parentsJS = json_encode($parents, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP);

    // Encode the effectSizes data to pass to JavaScript
    $effectSizesDataJS = json_encode($effectSizes, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP);

    ?>
    const labels = <?php echo $labelsJS; ?>;
    const parents = <?php echo $parentsJS; ?>;
    const effectSizesData = <?php echo $effectSizesDataJS; ?>;
    
    <?php else: ?>
    const labels = [];
    const parents = [];
    const effectSizesData = [];
    <?php endif; ?>


    <?php if (isset($geneDetailsSchema) && $geneDetailsSchema !== ''): ?>
        <?php

            $schemaToLarge = 20000;

            if (strlen(json_encode($geneDetailsSchema)) > $schemaToLarge) {
                trimArrays($geneDetailsSchema, 10);
            }

            echo 'const geneDetailsSchema = ' . json_encode(json_encode($geneDetailsSchema)) . ';';

            if (strlen(json_encode($geneDetailsSchema)) > $schemaToLarge) {
                echo 'const geneDetailsSchemaLarge = true;';
            } else {
                echo 'const geneDetailsSchemaLarge = false;';
            }
        ?>
    <?php else: ?>
        // Define geneDetailsSchema as false if the PHP variable isn't set or is empty.
        const geneDetailsSchema = false;
    <?php endif; ?>
</script>

<!-- used for LLM output -->
<script type="module" src="https://md-block.verou.me/md-block.js"></script>

<?php include __DIR__ . '/include/bottom.php'; ?>
