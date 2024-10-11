function showLoadingBar() {
    console.log("showLoadingBar");
    document.getElementById("loading-bar").style.display = "flex";
}

function hideLoadingBar() {
    document.getElementById("loading-bar").style.display = "none";
}

$(document).ready(function () {
    updateSearchDescription();

    const jsonViewer = new JSONViewer();
    hljs.highlightAll();

    function updateDataTable(inputData) {
        let data = inputData;

        // Check if there's data to process and the DataTable instance does not already exist
        if (data.length > 0 && !$.fn.DataTable.isDataTable("#data-viewer-table")) {
            var columnKeys = new Set(); // Use a Set to store unique keys

            data.forEach(function (item) {
                Object.keys(item).forEach(function (key) {
                    columnKeys.add(key); // Add each key to the Set
                });
            });

            var columns = Array.from(columnKeys).map(function (key) {
                return { data: key, title: key.charAt(0).toUpperCase() + key.slice(1) }; // Capitalize first letter
            });

            data.forEach(function (item) {
                columnKeys.forEach(function (key) {
                    // Check if the item does not have the key
                    if (!(key in item)) {
                        item[key] = "N/A"; // Assign "N/A" if the key is missing
                    }
                });
            });

            // Initialize DataTable with dynamic columns and data
            $("#data-viewer-table").DataTable({
                data: data,
                columns: columns,
                dom: '<"float-right"B>frtip', // Move buttons to the right
                buttons: [
                    {
                        extend: "csv",
                        text: "Export CSV", // Optional: if you want to change button text
                        filename: function () {
                            var d = new Date();
                            var formattedDate = d.getFullYear() + "-" + ("0" + (d.getMonth() + 1)).slice(-2) + "-" + ("0" + d.getDate()).slice(-2);
                            return "genular_export_" + formattedDate;
                        },
                    },
                ],
            });
        } else if ($.fn.DataTable.isDataTable("#data-viewer-table")) {
            // If the table already exists, clear and repopulate with new data
            var table = $("#data-viewer-table").DataTable();
            table.clear();
            table.rows.add(data);
            table.columns.adjust().draw();
        }
    }

    function formatDropdown(item) {
        var $result = $("<span>").css("margin-right", "5px");
        $result.data("itemId", item.id);
        $result.data("score", item.score); // Store the score for later retrieval

        if (item.isChild) {
            $result.append(document.createTextNode(item.text)).css("padding-left", "20px");
        } else {
            $result.append(document.createTextNode(item.text));
        }

        return $result;
    }

    // Enhance formatDropdownSelection to display the selected items properly
    function formatDropdownSelection(item) {
        return item.text || item.id;
    }

    function adjustTextareaHeight(textarea) {
        textarea.style.height = "auto"; // Reset height to recalculate
        textarea.style.height = textarea.scrollHeight + "px"; // Set new height based on content
    }

    $(".select2-ajax")
        .select2({
            theme: "bootstrap4",
            placeholder: "Enter search query...",
            allowClear: true,
            minimumInputLength: 1,
            maximumSelectionLength: 10,
            templateResult: formatDropdown,
            templateSelection: formatDropdownSelection,
            closeOnSelect: false, // Keep the dropdown open after a selection is made
            ajax: {
                url: function () {
                    var searchType = $("#searchType").val();
                    if (searchType === "cellExpressionProfiles") {
                        return WEB_URL + "/api/v1/cells/suggest?api_key=" + API_KEY;
                    } else if (searchType === "symbol") {
                        return WEB_URL + "/api/v1/gene/search?api_key=" + API_KEY;
                    }
                },
                dataType: "json",
                type: "POST",
                contentType: "application/json",
                delay: 250,
                data: function (params) {
                    var searchType = $("#searchType").val();
                    if (searchType === "symbol") {
                        return JSON.stringify({
                            queryFields: ["symbol"],
                            queryValues: [params.term],
                            fieldsFilter: ["geneID", "symbol", "crossReference.enseGeneID"],
                            searchType: "or",
                            orderBy: "geneID",
                            sortDirection: "asc",
                            responseType: "json",
                            matchType: "regex",
                            organismType: [9606],
                            ontologyCategories: [],
                            page: 1,
                            limit: 10,
                            debug: 1,
                        });
                    } else {
                        return JSON.stringify({
                            queryValues: [params.term],
                        });
                    }
                },
                processResults: function (data) {
                    var results = [];
                    if ($("#searchType").val() === "symbol") {
                        data.results.forEach(function (item) {
                            results.push({
                                id: item.geneID,
                                text: item.symbol,
                                enseGeneID: item.crossReference.enseGeneID,
                            });
                        });
                    } else {
                        data.results.forEach(function (item) {
                            results.push({
                                id: item.cell_id,
                                text: item.cell_name,
                                score: item.marker_score,
                            });

                            if (item.childs) {
                                item.childs.forEach(function (child) {
                                    results.push({
                                        id: child.cell_id,
                                        text: child.cell_name,
                                        score: child.marker_score,
                                        isChild: true,
                                        parentId: item.cell_id,
                                    });
                                });
                            }
                        });
                    }
                    return { results: results };
                },
                cache: true,
            },
        })
        .on("select2:select select2:unselect", function (e) {
            // Blur the Select2 input to ensure the dropdown closes
            $(".select2-selection__rendered").blur();

            setTimeout(function () {
                var selectedItems = $(".select2-ajax").select2("data");

                const firstItem = selectedItems[0];
                var searchType = $("#searchType").val();
                var redirectUrl;

                if (searchType === "symbol") {
                    redirectUrl = WEB_URL + "/details-gene/" + firstItem.id;
                } else {
                    redirectUrl = WEB_URL + "/details-cell/" + firstItem.id;
                }

                showLoadingBar();

                setTimeout(function () {
                    window.location.href = redirectUrl;
                }, 1000);
            }, 200); // Delay of 200ms

            // // Check if there are no selected items
            // if (selectedItems.length === 0) {
            //     // Hide the specific HTML container if nothing is selected
            //     $(".searchResultsTextarea").hide();
            // } else {
            //     // Format selected items into a string representation
            //     var resultsString = selectedItems
            //         .map(function (item) {
            //             // Check if parentId exists; if not, set it to null
            //             var parentId = item.parentId !== undefined ? item.parentId : null;
            //             // Return the item as a string including parentId, defaulting to null if it's undefined
            //             return '{"' + item.id + '": "' + item.text + '", "parentId": ' + JSON.stringify(parentId) + "}";
            //         })
            //         .join(", "); // Join all items with a comma and a space for readability
            //     // Update the textarea with the formatted string and show the container
            //     $("#searchResults").val("[" + resultsString + "]"); // Enclose in square brackets to denote an array
            //     $(".searchResultsTextarea").show(); // Show the specific HTML container when there are selected items
            //     adjustTextareaHeight(document.getElementById("searchResults"));
            // }
        });

    $("#searchButton").click(function () {
        var apiUrl = WEB_URL + "/api/v1/gene/search?api_key=" + API_KEY;

        var searchType = $("#searchType").val();
        var selectedItems = $(".select2-ajax").select2("data");

        var queryValues = {};

        var queryFields = [];
        var fieldsFilter = ["geneID", "symbol"];

        if (!searchType) {
            alert("Please select a search type..");
            return;
        }

        if (searchType === "cellExpressionProfiles") {
            apiUrl = WEB_URL + "/api/v1/cells/search?api_key=" + API_KEY;
            selectedItems.forEach(function (item) {
                if (item.score) {
                    queryValues[item.id] = ">= " + item.score;
                }
            });
        } else if (searchType === "pathways") {
            queryFields = ["ontology.id"];
            queryValues = [];

            selectedItems.forEach(function (item) {
                var id = parseInt(item.id.match(/\d+/), 10);

                if (id) {
                    // TODO: this should be string!
                    queryValues.push(id);
                }
            });
        }

        // If no query values were added, prompt the user to enter a query
        if (!Object.keys(queryValues).length) {
            alert("Please enter a query..");
            return;
        }

        showLoadingBar();

        var ajaxData = {
            queryValues: queryValues,
            fieldsFilter: fieldsFilter,
            searchType: "and",
            orderBy: "geneID",
            sortDirection: "asc",
            page: 1,
            limit: 100,
        };

        // Add queryFields to ajaxData only if it's defined and not empty
        if (queryFields.length > 0) {
            ajaxData.queryFields = queryFields;
        }

        $.ajax({
            url: apiUrl,
            method: "POST",
            contentType: "application/json",
            data: JSON.stringify(ajaxData),
            success: function (data) {
                updateDataTable(data);
                hideLoadingBar();
                // Update the stats div with the total number of items
                $("#stats").html(`<strong>Total Items Found: ${data.total}</strong>`);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error("Error fetching data: " + textStatus, errorThrown);
                hideLoadingBar();
            },
        });
    });

    $('[data-toggle="tooltip"]').tooltip();
    $(".popover-explore-details").popover({
        trigger: "focus",
        html: true,
        content: function () {
            var contentId = $(this).attr("data-popover-content");
            return $(contentId).html();
        },
        customClass: "popover-explore-details",
    });

    if (typeof geneDetailsSchema !== "undefined" && geneDetailsSchema !== false) {
        cellExpressionForGene();

        $("#databaseModal").on("show.bs.modal", function (event) {
            var button = $(event.relatedTarget); // Button that triggered the modal
            var dbName = button.data("dbname"); // Extract info from data-* attributes
            var idsRaw = button.attr("data-ids"); // Get the raw data-ids attribute
            var ids = JSON.parse(idsRaw.replace(/&quot;/g, '"')); // Replace &quot; with " and parse as JSON

            // Update modal content
            var modal = $(this);
            modal.find("#modalDbName").text(dbName);

            var idsContainer = modal.find("#modalDbIds");
            idsContainer.empty(); // Clear previous content

            // Iterate over the IDs and append them as badges
            ids.forEach(function (id) {
                idsContainer.append('<span class="badge badge-info mr-2 mb-2">' + id + "</span>");
            });
        });
    }

    if (typeof effectSizesData !== "undefined" && effectSizesData.length > 0) {
        plotGeneTreemapGroupedDetails();

        $('a[data-toggle="tab"]').on("shown.bs.tab", function (e) {
            const targetId = $(e.target).attr("href");

            if (targetId === "#gene-treemap-grouped-content") {
                plotGeneTreemapGrouped();
                Plotly.Plots.resize(document.getElementById("gene-treemap-grouped"));
            } else if (targetId === "#gene-treemap-grouped-details-content") {
                Plotly.Plots.resize(document.getElementById("gene-treemap-grouped-details"));
            } else if (targetId === "#gene-treemap-single-content") {
                plotGeneTreemapSingle();
                Plotly.Plots.resize(document.getElementById("gene-treemap-single"));
            }
        });

        $("#downloadGeneData").click(function () {
            downloadCSV(effectSizesData, "effect_sizes_data.csv");
        });
    }

    if (typeof genesForCellData !== "undefined" && Array.isArray(genesForCellData) && genesForCellData.length > 0) {
        plotCellTreemapGrouped();

        $('a[data-toggle="tab"]').on("shown.bs.tab", function (e) {
            const targetId = $(e.target).attr("href");

            if (targetId === "#cell-treemap-grouped-content") {
                // plotCellTreemapGrouped();
                Plotly.Plots.resize(document.getElementById("cell-treemap-grouped"));
            } else if (targetId === "#cell-treemap-single-content") {
                plotCellTreemapSingle();
                Plotly.Plots.resize(document.getElementById("cell-treemap-single"));
            }
        });

        $("#downloadCellData").click(function () {
            downloadCSV(genesForCellData, "gene_cell_info.csv", ["ontology"]);
        });
    }

    if (typeof wordCloudData !== "undefined" && Array.isArray(wordCloudData) && wordCloudData.length > 0) {
        // renderWordCloud();
    }
});

function renderWordCloud() {
    // Get the context of the canvas element
    const ctx = document.getElementById("wordCloudCanvas").getContext("2d");

    // Prepare the data for the word cloud
    const data = {
        labels: wordCloudData.map((d) => d.label),
        datasets: [
            {
                label: "",
                data: wordCloudData.map((d) => 10 + d.value * 10),
            },
        ],
    };

    // Define the configuration for the word cloud chart with more options
    const config = {
        type: "wordCloud",
        data: data,
        options: {
            elements: {
                word: {
                    fontSize(context) {
                        return context.dataset.data[context.dataIndex];
                    },
                    color(context) {
                        // Different colors for words based on index
                        const colors = ["#4f8a8b", "#fbd46d", "#f28a30", "#3c6e71", "#d7263d", "#4a47a3", "#ee7674", "#76b39d", "#f9c846", "#7d5ba6"];

                        return colors[context.dataIndex % colors.length];
                    },
                    rotation(context) {
                        // Random rotation for each word
                        return Math.floor(Math.random() * 360);
                    },
                    maxRotation: 45, // Maximum rotation angle for words
                    minRotation: -45, // Minimum rotation angle for words
                    rotationSteps: 4, // Number of steps between min and max rotation
                    padding: 5, // Padding between words to avoid overlapping
                    strokeWidth: 0, // Stroke width around words for better visibility
                },
            },
            autoGrow: {
                maxTries: 5, // More attempts to fit all words
                scalingFactor: 1.1, // Scale factor to adjust word sizes to fit better
            },
            fit: true, // Fit the word cloud to the canvas size
            layout: {
                padding: 10, // Padding to make sure all words are visible on the canvas
                spiral: "rectangular", // Spiral layout for better placement of words
            },
            responsive: true, // Make sure the canvas is responsive
            maintainAspectRatio: false, // Allow changing aspect ratio for better fit
            plugins: {
                tooltip: {
                    enabled: false, // Disable the tooltip to prevent the box from appearing
                },
                legend: {
                    display: false,
                },
            },
            hover: {
                mode: null, // Disable the hover effect
            },
        },
    };

    // Create and render the word cloud chart
    const chartInstance = new Chart(ctx, config);

    // Add event listener to handle click on words
    document.getElementById("wordCloudCanvas").addEventListener("click", (event) => {
        // Get elements at the clicked point
        const activePoints = chartInstance.getElementsAtEventForMode(event, "nearest", { intersect: true }, false);

        if (activePoints.length > 0) {
            const firstPoint = activePoints[0];
            const labelIndex = firstPoint.index;

            // Retrieve the link based on the index
            const link = wordCloudData[labelIndex].link;

            // Redirect to the corresponding link
            window.open(link, "_blank");
        }
    });
}

function plotCellTreemapGrouped() {
    showLoadingBar();

    const rootNode = "All pathways";

    const filteredData = genesForCellData
        .filter((gene) => gene.ontology && Array.isArray(gene.ontology))
        .map((gene) => {
            // Find the ontology entry with the minimum cat where id starts with "R"
            let filteredOntologies = gene.ontology.filter((ont) => ont.id.startsWith("R"));
            let ontologyEntry = null;

            if (filteredOntologies.length > 0) {
                // Sort by cat in ascending order and take the first one (minimum cat value)
                filteredOntologies.sort((a, b) => a.cat - b.cat);
                ontologyEntry = filteredOntologies[0];
            } else {
                // If no entry starts with "R", find the ontology entry with the minimum cat where id starts with "GO"
                filteredOntologies = gene.ontology.filter((ont) => ont.id.startsWith("GO"));
                if (filteredOntologies.length > 0) {
                    // Sort by cat in ascending order and take the first one (minimum cat value)
                    filteredOntologies.sort((a, b) => a.cat - b.cat);
                    ontologyEntry = filteredOntologies[0];
                }
            }

            // If a valid ontology entry is found, return the gene data with the term
            if (ontologyEntry) {
                return {
                    geneID: gene.geneID,
                    symbol: gene.symbol,
                    term: ontologyEntry.term,
                    foldChange: gene.foldChange || 0,
                    crossReference: gene.crossReference,
                };
            }

            return null; // Return null if no matching ontology entry
        })
        .filter((d) => d !== null); // Remove null entries

    // Group data by pathway term to aggregate genes under the same pathway
    const groupedData = {};
    filteredData.forEach((d) => {
        if (!groupedData[d.term]) {
            groupedData[d.term] = {
                term: d.term,
                foldChangeSum: 0,
                genes: [],
            };
        }
        groupedData[d.term].foldChangeSum += d.foldChange;
        groupedData[d.term].genes.push(d);
    });

    // Create labels, parents, and values for treemap
    const rootLabel = rootNode;
    const groupLabels = Object.keys(groupedData); // Pathway labels
    const geneLabels = [];

    const labels = [rootLabel];
    const parents = [""];
    const values = [0];
    const hoverTexts = [rootLabel]; // Root node hover text

    // Add pathways and genes to labels, parents, values, and hoverTexts
    groupLabels.forEach((groupLabel) => {
        const group = groupedData[groupLabel];
        labels.push(groupLabel);
        parents.push(rootLabel);
        values.push(group.foldChangeSum); // Use the sum of fold changes for the group
        hoverTexts.push(`Pathway: ${groupLabel}<br>Sum of Fold Change: ${group.foldChangeSum.toFixed(2)}`);

        group.genes.forEach((gene) => {
            labels.push(gene.symbol);
            parents.push(groupLabel);
            values.push(gene.foldChange);
            hoverTexts.push(
                `Gene ID: ${gene.geneID}<br>Symbol: ${gene.symbol}<br>Ensembl Gene ID: ${gene.crossReference.enseGeneID}<br>Fold Change: ${gene.foldChange.toFixed(2)}`
            );
        });
    });

    // Create the treemap trace
    const trace = {
        type: "treemap",
        labels: labels,
        parents: parents,
        values: values,
        textinfo: "label+value",
        textposition: "middle center",
        marker: {
            colorscale: "Cividis",
            colors: values, // Color based on foldChange
            showscale: true,
            colorbar: {
                title: "Fold Change", // Update colorbar title
                titleside: "right",
            },
        },
        hovertemplate: "%{text}<extra></extra>", // Use custom hover text without extra box
        text: hoverTexts,
    };

    const layout = {
        margin: { l: 0, r: 0, t: 50, b: 0 },
        hovermode: "closest",
        plot_bgcolor: "#FFFFFF",
        paper_bgcolor: "#FFFFFF",
        autosize: true,
        showlegend: false,
    };

    const config = {
        toImageButtonOptions: {
            format: "svg", // one of png, svg, jpeg, webp
            filename: "genular_export",
            height: 1024,
            width: 768,
            scale: 1,
        },
    };

    Plotly.newPlot("cell-treemap-grouped", [trace], layout, config).then(() => {
        hideLoadingBar();
    });
}

function plotCellTreemapSingle() {
    showLoadingBar();
    const rootNode = "All Genes"; // Define a default root
    const labels = [rootNode, ...genesForCellData.map((d) => d.symbol)];
    const parents = ["", ...genesForCellData.map(() => rootNode)]; // All genes are children of the root node
    const values = [0, ...genesForCellData.map((d) => (d.foldChange !== undefined && !isNaN(d.foldChange) ? parseFloat(d.foldChange) : 0))];

    // Extract additional hover information
    const hoverTexts = [
        rootNode, // Root node hover text
        ...genesForCellData.map((d) => `Gene ID: ${d.geneID}<br>Symbol: ${d.symbol}<br>Ensembl Gene ID: ${d.crossReference.enseGeneID}<br>Fold Change: ${d.foldChange}`),
    ];

    // Create trace for treemap with a root node
    const trace = {
        type: "treemap",
        labels: labels,
        parents: parents,
        values: values,
        textinfo: "label+value",
        textposition: "middle center",
        marker: {
            colorscale: "Cividis",
            colors: values, // Color based on foldChange
            showscale: true,
            colorbar: {
                title: "Fold Change", // Update colorbar title
                titleside: "right",
            },
        },
        hovertemplate: "%{text}<extra></extra>", // Use custom hover text without extra box
        text: hoverTexts,
    };

    const layout = {
        margin: { l: 0, r: 0, t: 50, b: 0 },
        hovermode: "closest",
        plot_bgcolor: "#FFFFFF",
        paper_bgcolor: "#FFFFFF",
        autosize: true,
        showlegend: false,
    };

    const config = {
        toImageButtonOptions: {
            format: "svg", // one of png, svg, jpeg, webp
            filename: "genular_export",
            height: 1024,
            width: 768,
            scale: 1,
        },
    };

    Plotly.newPlot("cell-treemap-single", [trace], layout, config).then(() => {
        hideLoadingBar();
    });
}

function copyHoverContent(type) {
    const hoverText = document.getElementById(`hover-content-${type}`).innerText;
    const tempInput = document.createElement("textarea");
    tempInput.value = hoverText;
    document.body.appendChild(tempInput);
    tempInput.select();
    document.execCommand("copy");
    document.body.removeChild(tempInput);
    alert("Copied to clipboard!");
}

function plotGeneTreemapSingle() {
    showLoadingBar();
    if (!Array.isArray(effectSizesData) || effectSizesData.length === 0) {
        return;
    }

    // Extract labels and values from effectSizesData
    const rootNode = "All Cells"; // Define a default root
    const labels = [rootNode, ...effectSizesData.map((d) => d.cell_term)];
    const parents = ["", ...effectSizesData.map(() => rootNode)]; // All cells are children of the root node
    const values = [0, ...effectSizesData.map((d) => (d.foldChange !== undefined && !isNaN(d.foldChange) ? parseFloat(d.foldChange) : 0))];

    // Create trace for treemap with a root node
    const trace = {
        type: "treemap",
        labels: labels,
        parents: parents,
        values: values,
        textinfo: "label+value+percent entry",
        hoverinfo: "label+value+text",
        hovertemplate: "<b>%{label}</b><br>" + "Fold Change: %{value}<br>" + "Marker Score: %{text}<extra></extra>", // Customize hover tooltip
        marker: {
            colorscale: "Cividis",
            colors: values,
            showscale: true,
            colorbar: {
                title: "Fold Change",
                titleside: "right",
            },
        },
        text: effectSizesData.map((d) => d.markerScore), // Include marker score for hover
    };

    const layout = {
        margin: { l: 0, r: 0, t: 50, b: 0 },
        hovermode: "closest",
        plot_bgcolor: "#FFFFFF",
        paper_bgcolor: "#FFFFFF",
        autosize: true,
        showlegend: false,
    };

    const config = {
        responsive: true,
        scrollZoom: true,
        toImageButtonOptions: {
            format: "svg",
            filename: "genular_export",
            height: 1024,
            width: 768,
            scale: 1,
        },
    };

    Plotly.newPlot("gene-treemap-single", [trace], layout, config).then(() => {
        hideLoadingBar();
    });

    // Listen for hover events on the treemap
    const geneTreemapDiv = document.getElementById("gene-treemap-single");
    geneTreemapDiv.on("plotly_hover", function (eventData) {
        const pointData = eventData.points[0];

        // Extract data for hover information
        const cellName = pointData.label;
        const foldChange = pointData.value;
        const markerScore = pointData.text;

        // Update the hover-info div with the hovered data
        const hoverContent = `
            <b>Cell Name:</b> ${cellName}<br>
            <b>Fold Change:</b> ${foldChange}<br>
            <b>Marker Score:</b> ${markerScore}
        `;
        document.getElementById("hover-content-single").innerHTML = hoverContent;
    });
}

function plotGeneTreemapGrouped() {
    showLoadingBar();
    if (!Array.isArray(labels) || labels.length === 0 || !Array.isArray(parents) || parents.length === 0) {
        return;
    }

    // Step 1: Aggregate the effectSizesData by parent to calculate the sum of foldChange for each group
    const groupFoldChangeMap = {};
    effectSizesData.forEach((d) => {
        const parent = d.parent || "All Cells";
        const foldChange = d.foldChange !== undefined ? parseFloat(d.foldChange) : 0;

        if (!groupFoldChangeMap[parent]) {
            groupFoldChangeMap[parent] = 0;
        }
        groupFoldChangeMap[parent] += foldChange;
    });

    // Step 2: Create an array to store values that correspond to labels, taking both groups and individual cells into account
    const values = labels.map((label) => {
        if (label === "All Cells") {
            return 0; // The root node should have a value of 0
        } else if (groupFoldChangeMap[label] !== undefined) {
            return groupFoldChangeMap[label]; // Use the sum of foldChange for the group
        } else {
            // For individual cells, return the foldChange value from effectSizesData
            const cellData = effectSizesData.find((d) => d.label === label);
            return cellData ? parseFloat(cellData.foldChange) : 0;
        }
    });

    // Step 3: Create hover text for each node, including both groups and individual cells
    const hoverTexts = labels.map((label) => {
        if (label === "All Cells") {
            return label; // Root node hover text
        }
        if (groupFoldChangeMap[label] !== undefined) {
            return `Group: ${label}<br>Sum of Fold Change: ${groupFoldChangeMap[label].toFixed(2)}`;
        }
        const cellData = effectSizesData.find((d) => d.label === label);
        if (cellData) {
            return `Cell: ${label}<br>Fold Change: ${cellData.foldChange.toFixed(2)}`;
        }
        return label;
    });

    // Step 4: Create the treemap trace
    const trace = {
        type: "treemap",
        labels: labels,
        parents: parents,
        values: values,
        textinfo: "label+value",
        textposition: "middle center",
        marker: {
            colorscale: "Cividis",
            colors: values, // Color based on foldChange
            showscale: true,
            colorbar: {
                title: "Fold Change", // Update colorbar title
                titleside: "right",
            },
        },
        hovertemplate: "%{text}<extra></extra>", // Use custom hover text without extra box
        text: hoverTexts,
    };

    // Step 5: Create layout and configuration for the plot
    const layout = {
        margin: { l: 0, r: 0, t: 50, b: 0 },
        hovermode: "closest",
        plot_bgcolor: "#FFFFFF",
        paper_bgcolor: "#FFFFFF",
        autosize: true,
        showlegend: false,
    };

    const config = {
        toImageButtonOptions: {
            format: "svg",
            filename: "genular_export",
            height: 1024,
            width: 768,
            scale: 1,
        },
        responsive: true,
        displayModeBar: true,
        scrollZoom: true,
    };

    // Step 6: Render the plot
    Plotly.newPlot("gene-treemap-grouped", [trace], layout, config).then(() => {
        hideLoadingBar();
    });

    const geneTreemapDivGrouped = document.getElementById("gene-treemap-grouped");
    geneTreemapDivGrouped.on("plotly_hover", function (eventData) {
        const pointData = eventData.points[0];
        const groupName = pointData.label;
        const foldChange = pointData.value;

        const hoverContent = `
            <b>Group Name:</b> ${groupName}<br>
            <b>Sum of Fold Change:</b> ${foldChange}
        `;
        document.getElementById("hover-content-grouped").innerHTML = hoverContent;
    });
}

function plotGeneTreemapGroupedDetails() {
    showLoadingBar();
    const trace = {
        type: "treemap",
        labels: labels,
        parents: parents,
        values: effectSizesData.map((d) => (d.foldChange !== undefined ? parseFloat(d.foldChange) : 0)),
        textinfo: "label+value",
        marker: {
            colorscale: "Cividis",
            colors: effectSizesData.map((d) => (d.foldChange !== undefined ? parseFloat(d.foldChange) : 0)), // Color based on foldChange
            showscale: true,
            colorbar: {
                title: "Fold Change", // Update colorbar title
                titleside: "right",
            },
        },
    };

    const layout = {
        margin: { l: 0, r: 0, t: 50, b: 0 },
        hovermode: "closest",
        plot_bgcolor: "#FFFFFF",
        paper_bgcolor: "#FFFFFF",
        autosize: true,
        showlegend: false,
    };

    const config = {
        toImageButtonOptions: {
            format: "svg",
            filename: "genular_export",
            height: 1024,
            width: 768,
            scale: 1,
        },
    };

    Plotly.newPlot("gene-treemap-grouped-details", [trace], layout, config).then(() => {
        hideLoadingBar();
    });

    const geneTreemapDivGroupedDetails = document.getElementById("gene-treemap-grouped-details");
    geneTreemapDivGroupedDetails.on("plotly_hover", function (eventData) {
        const pointData = eventData.points[0];
        const cellName = pointData.label;
        const foldChange = pointData.value;

        const hoverContent = `
            <b>Cell Name:</b> ${cellName}<br>
            <b>Fold Change:</b> ${foldChange}
        `;
        document.getElementById("hover-content-grouped-details").innerHTML = hoverContent;
    });
}

function downloadCSV(data, filename, removeKeys = []) {
    // Utility function to flatten a nested JSON object
    function flattenObject(obj, parentKey = "", result = {}) {
        for (let key in obj) {
            if (obj.hasOwnProperty(key)) {
                const newKey = parentKey ? `${parentKey}.${key}` : key;
                if (typeof obj[key] === "object" && obj[key] !== null && !Array.isArray(obj[key])) {
                    // Recursively flatten the object
                    flattenObject(obj[key], newKey, result);
                } else if (Array.isArray(obj[key])) {
                    // Convert array to a string representation
                    result[newKey] = JSON.stringify(obj[key]);
                } else {
                    result[newKey] = obj[key];
                }
            }
        }
        return result;
    }

    // Flatten each object in the data array
    let flattenedData = data.map((item) => flattenObject(item));

    // Remove specified keys from each flattened object
    if (removeKeys.length > 0) {
        flattenedData = flattenedData.map((item) => {
            removeKeys.forEach((key) => {
                if (key in item) {
                    delete item[key];
                }
            });
            return item;
        });
    }

    // Extract headers from the keys of the first flattened object
    const headers = Object.keys(flattenedData[0]).join(",") + "\n";

    // Map each flattened object to a CSV-compatible string, with each property separated by a comma
    const rows = flattenedData
        .map((row) => {
            return Object.values(row)
                .map((value) => {
                    // Handle null or undefined values
                    if (value === null || value === undefined) {
                        return "";
                    }
                    // Escape any values that contain a comma or quote
                    if (typeof value === "string" && (value.includes(",") || value.includes('"'))) {
                        return `"${value.replace(/"/g, '""')}"`; // Escape quotes by doubling them
                    }
                    return value;
                })
                .join(",");
        })
        .join("\n");

    // Combine headers and rows into the CSV content
    const csvContent = headers + rows;

    // Create a Blob with the CSV content and generate a download link
    const blob = new Blob([csvContent], { type: "text/csv;charset=utf-8;" });
    const url = URL.createObjectURL(blob);

    // Create a temporary link and trigger the download
    const link = document.createElement("a");
    link.href = url;
    link.setAttribute("download", filename);
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
}

function cellExpressionForGene() {
    const geneDetails = JSON.parse(geneDetailsSchema);

    if (geneDetails && geneDetails.singleCellExpressions && geneDetails.singleCellExpressions.effectSizes) {
        // Preparing data for the chart
        const labels = geneDetails.singleCellExpressions.effectSizes.slice(0, 10).map((e) => e.cell_term);
        const foldChanges = geneDetails.singleCellExpressions.effectSizes.slice(0, 10).map((e) => e.foldChange);

        const hasUndefined = labels.some((item) => item === undefined);
        if (hasUndefined) {
            console.log("The labels array contains undefined items.");
            // Select the element with the ID 'expressionChart'
            const expressionChart = document.getElementById("expressionChart");
            // Set its display style to 'none'
            expressionChart.style.display = "none";
            // Also hide the parent div of 'expressionChart'
            expressionChart.parentElement.style.display = "none";
            return;
        }

        // Chart configuration for a polar area chart
        const config = {
            type: "polarArea", // Changed from 'bar' to 'polarArea'
            data: {
                labels: labels,
                datasets: [
                    {
                        label: "Fold Change",
                        data: foldChanges,
                        backgroundColor: [
                            "rgba(255, 99, 132, 0.5)",
                            "rgba(54, 162, 235, 0.5)",
                            "rgba(255, 206, 86, 0.5)",
                            "rgba(75, 192, 192, 0.5)",
                            "rgba(153, 102, 255, 0.5)",
                            "rgba(255, 159, 64, 0.5)",
                        ],
                        borderColor: [
                            "rgba(255, 99, 132, 1)",
                            "rgba(54, 162, 235, 1)",
                            "rgba(255, 206, 86, 1)",
                            "rgba(75, 192, 192, 1)",
                            "rgba(153, 102, 255, 1)",
                            "rgba(255, 159, 64, 1)",
                        ],
                        borderWidth: 1,
                    },
                ],
            },
            options: {
                responsive: true, // Make sure this is true
                maintainAspectRatio: false, // Adding this can help in some layouts
                devicePixelRatio: 4, // This can help with high-resolution displays
                layout: {
                    padding: 0, // Padding around the chart
                },
                plugins: {
                    title: {
                        display: true,
                        text: "Top 10 expressed cells", // Your title text
                        font: {
                            size: 20, // You can adjust the size as needed
                        },
                        position: "left",
                        align: "end",
                    },
                    legend: {
                        position: "bottom", // Positions the legend at the bottom
                        align: "start", // Aligns the legend to the center
                    },
                },
                scales: {
                    r: {
                        beginAtZero: true,
                    },
                },
            },
        };

        // Rendering the chart
        new Chart(document.getElementById("expressionChart"), config);
    } else {
        // Select the element with the ID 'expressionChart'
        const expressionChart = document.getElementById("expressionChart");
        // Set its display style to 'none'
        expressionChart.style.display = "none";
        // Also hide the parent div of 'expressionChart'
        expressionChart.parentElement.style.display = "none";
    }
}

function updateSearchDescription() {
    if (!document.getElementById("searchType")) {
        return;
    }

    var searchType = document.getElementById("searchType").value;
    var description = document.getElementById("searchDescription");
    var inputField = document.getElementById("searchInput");

    switch (searchType) {
        case "geneID":
            description.textContent = "Search by Gene ID (e.g., 920).";
            inputField.placeholder = "Enter Gene ID...";
            inputField.value = "920";
            break;
        case "cellExpressionProfiles":
            description.textContent = 'Search for genes based on their expression in specific cells. (e.g., "B cells")';
            inputField.placeholder = "Enter Cell Name...";
            break;
        case "symbol":
            description.textContent = 'Search for genes based on their symbol. (e.g., "CD8A")';
            inputField.placeholder = "Enter gene symbol";
            break;
        case "pathways":
            description.textContent = 'Search for genes in specific pathways. (e.g., "Adaptive Immune System")';
            inputField.placeholder = "Enter Pathway Name...";
            break;
        default:
            description.textContent = "no description";
            inputField.placeholder = "Enter search query...";
    }
}
