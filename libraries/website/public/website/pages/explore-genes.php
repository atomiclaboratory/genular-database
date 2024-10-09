<?php 

$pageID = $_GET['pageID'] ?? 1;
$pageTitle = null;

$pageID = (int)$pageID;
$geneData = fetchGeneData($pageID);

if (!is_null($geneData) && isset($geneData['results'])) {
	$pageTitle = "genular - genes directory (page {$geneData['currentPage']} of {$geneData['totalPages']})";
}

include __DIR__ . '/include/head.php'; 
?>

<main role="main" class="flex-shrink-0">
    <section id="home" class="full-screen-section py-3">
        <div class="container-lg">
            <div class="text-center mb-4">
                <h2>Genes Directory (all taxonomies)</h2>
            </div>
            <?php
                if (!is_null($geneData) && isset($geneData['results'])) {
	                echo "<div class='row'>";
	                foreach ($geneData['results'] as $gene) {
	                    if (!isset($gene['geneID'])) {
	                        continue;
	                    }
	                    // Check if crossReference and its specific ID are available
	                    $enseGeneID = isset($gene['crossReference']['enseGeneID']) ? $gene['crossReference']['enseGeneID'] : 'Not available';

	                    $detailsUrl = htmlspecialchars($_ENV['WEB_URL'] . "/details-gene/" . $gene['geneID']);        
	                    $downloadUrl = htmlspecialchars($_ENV['WEB_URL'] . "/download/" . $gene['geneID']);

	 
	                    if(isset($gene["singleCellExpressions"])){
	                    	if(isset($gene["singleCellExpressions"]["effectSizes"])){
	                    		$singleCellExpressions = count($gene["singleCellExpressions"]["effectSizes"]);	
	                    	}
	                    }else{
	                    	$singleCellExpressions = 0;
	                    }
	                    

						echo "<div class='col-md-4 mb-3'>";
						echo "<a href='{$detailsUrl}' class='card-link text-decoration-none'>";
						echo "<div class='card h-100 position-relative'>"; // Added position-relative
						echo "<div class='card-body p-3'>";
						echo "<h5 class='card-title mb-0 d-flex justify-content-between align-items-center'>Gene ID: " . htmlspecialchars($gene['geneID']) . "<a href='{$downloadUrl}' class='fas fa-download' style='text-decoration: none;'></a></h5>";
						echo "</a>";
						echo "<p class='card-text mb-0'>Symbol: " . htmlspecialchars($gene['symbol']) . "</p>";
						echo "<p class='card-text mb-0'>Ensembl Gene ID: " . htmlspecialchars($enseGeneID) . "</p>";
						echo "</div>";  // Close card-body

						// Add icon if there are singleCellExpressions
						if ($singleCellExpressions > 0) {
						    echo "<i class='fas fa-disease position-absolute' style='bottom: 16px; right: 16px; color: green; cursor: help;' title='Total cells: {$singleCellExpressions}'></i>";
						}

						echo "</div>";  // Close card
						echo "</div>";  // Close col-md-4

	                }
	                echo "</div>";
	            } else {
	                echo "<div class='col'><p>No gene data found.</p></div>";
	            }           
            ?>
            <nav aria-label="Page navigation" class="float-right">
			    <ul class="pagination flex-wrap">
			        <?php
			            $baseUrl = $_ENV['WEB_URL'].'/explore-genes/';
			            $totalPages = $geneData['totalPages'];
			            $currentPage = $geneData['currentPage'];
			            $range = 5; // Reduced range for mobile view

			            // First and Previous Page Links
			            if ($currentPage > 1) {
			                echo "<li class='page-item'><a class='page-link' href='{$baseUrl}1'>First</a></li>";
			                $prevPage = $currentPage - 1;
			                echo "<li class='page-item'><a class='page-link' href='{$baseUrl}{$prevPage}'>Prev</a></li>";
			            }

			            // Dynamic Page Links (Limited for mobile)
			            for ($i = max(1, $currentPage - $range); $i <= min($currentPage + $range, $totalPages); $i++) {
			                $activeClass = $i == $currentPage ? ' active' : '';
			                echo "<li class='page-item$activeClass'><a class='page-link' href='{$baseUrl}{$i}'>{$i}</a></li>";
			            }

			            // Ellipses and Last Page Link
			            if ($currentPage + $range < $totalPages) {
			                echo "<li class='page-item'><span class='page-link'>...</span></li>";
			                echo "<li class='page-item'><a class='page-link' href='{$baseUrl}{$totalPages}'>Last</a></li>";
			            }

			            // Next Page Link
			            if ($currentPage < $totalPages) {
			                $nextPage = $currentPage + 1;
			                echo "<li class='page-item'><a class='page-link' href='{$baseUrl}{$nextPage}'>Next</a></li>";
			            }
			        ?>
			    </ul>
			</nav>
        </div>
    </section>
</main>

<?php include __DIR__ . '/include/bottom.php'; ?>
