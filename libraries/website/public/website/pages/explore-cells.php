<?php 

$pageID = $_GET['pageID'] ?? 1;
$pageTitle = null;

$pageID = (int)$pageID;
$cellData = fetchCellData($pageID);

if (!is_null($cellData) && isset($cellData['results'])) {
    $pageTitle = "genular - cells directory (page {$cellData['currentPage']} of {$cellData['totalPages']})";
}

include __DIR__ . '/include/head.php'; 

?>

<main role="main" class="flex-shrink-0">
    <section id="home" class="full-screen-section py-3">
        <div class="container-lg">
            <div class="text-center mb-4">
                <h2>Cell Directory (all taxonomies)</h2>
            </div>
            <?php
                if (!is_null($cellData) && isset($cellData['results'])) {
                    echo "<div class='row'>";
                    foreach ($cellData['results'] as $cell) {
                        if (!isset($cell['cell_id'])) {
                            continue;
                        }

                        // Prepare URLs
                        $detailsUrl = htmlspecialchars($_ENV['WEB_URL'] . "/details-cell/" . $cell['cell_id']);        
                        $downloadUrl = htmlspecialchars($_ENV['WEB_URL'] . "/download-cell/" . $cell['cell_id']);

                        // Check if the cell has child cells
                        $hasChilds = !empty($cell['childs']);
                        $childCount = $hasChilds ? count($cell['childs']) : 0;

				        // Initialize the child cell names and IDs array
				        $childCells = [];
				        if ($hasChilds) {
				            foreach ($cell['childs'] as $child) {
				                $childId = isset($child['cell_id']) ? $child['cell_id'] : 'Unknown ID';
				                $childName = isset($child['cell_name']) ? $child['cell_name'] : 'Unknown Name';
				                $childCells[] = [
				                    'cell_id' => $childId,
				                    'cell_name' => $childName
				                ];
				            }
				        }

                        echo "<div class='col-md-4 mb-3'>";
                        echo "<div class='card h-100 position-relative'>"; // Added position-relative
                        echo "<div class='card-body p-3'>";
                        echo "<a href='{$detailsUrl}' class='card-link text-decoration-none'>";
                        echo "<h5 class='card-title mb-0 d-flex justify-content-between align-items-center'>Cell ID: " . htmlspecialchars($cell['cell_id']) . "</h5>";
                        echo "</a>";
                        echo "<p class='card-text mb-0'>Cell Name: " . htmlspecialchars($cell['cell_name']) . "</p>";
                        echo "<p class='card-text mb-0'>Marker Score: " . htmlspecialchars(round($cell['marker_score'])) . "</p>";
                        echo "</div>";  // Close card-body

				        // Add icon if there are child cells
				        if ($hasChilds) {
				            // Build popover content with child cell names and IDs
				            $popoverContent = '<ul style="padding-left: 1em; margin: 0;">';
				            foreach ($cell['childs'] as $child) {
							    // Generate the details URL for the child cell
							    $childDetailsUrl = htmlspecialchars($_ENV['WEB_URL'] . "/details-cell/" . $childId, ENT_QUOTES, 'UTF-8');

				                $childIdEscaped = htmlspecialchars($child['cell_id'], ENT_QUOTES, 'UTF-8');
				                $childNameEscaped = htmlspecialchars($child['cell_name'], ENT_QUOTES, 'UTF-8');
							    $popoverContent .= '<li>';
							    $popoverContent .= '<a href="' . $childDetailsUrl . '" class="child-cell-link">';
							    $popoverContent .= '<span class="cell-id">ID: ' . $childIdEscaped . '</span><br />';
							    $popoverContent .= '<span class="cell-name">(' . $childNameEscaped . ')</span>';
							    $popoverContent .= '</a>';
							    $popoverContent .= '</li>';
				            }

				            $popoverContent .= '</ul>';

				            // Generate a unique ID for the popover content
				            $popoverContentId = 'popover-content-' . $index;

				            // Output the hidden div with the popover content
				            echo '<div id="' . $popoverContentId . '" class="d-none">';
				            echo $popoverContent;
				            echo '</div>';

				            // Output the icon with data attribute pointing to the popover content ID
				            echo '<i class="fas fa-sitemap position-absolute popover-explore-details" style="bottom: 16px; right: 16px; color: green; cursor: pointer;" data-toggle="popover" data-html="true" data-popover-content="#' . $popoverContentId . '" data-trigger="focus" title="Child cells for: '.$child['cell_id'].'" tabindex="0"></i>';
				        }
                        echo "</div>";  // Close card
                        echo "</div>";  // Close col-md-4
                    }
                    echo "</div>";
                } else {
                    echo "<div class='col'><p>No cell data found.</p></div>";
                }           
            ?>
            <nav aria-label="Page navigation" class="float-right">
                <ul class="pagination flex-wrap">
                    <?php
                        $baseUrl = $_ENV['WEB_URL'].'/explore-cells/';
                        $totalPages = $cellData['totalPages'] ?? 1;
                        $currentPage = $cellData['currentPage'] ?? 1;
                        $range = 5;

                        // First and Previous Page Links
                        if ($currentPage > 1) {
                            echo "<li class='page-item'><a class='page-link' href='{$baseUrl}1'>First</a></li>";
                            $prevPage = $currentPage - 1;
                            echo "<li class='page-item'><a class='page-link' href='{$baseUrl}{$prevPage}'>Prev</a></li>";
                        }

                        // Dynamic Page Links
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
