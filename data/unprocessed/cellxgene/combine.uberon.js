// Importing required modules.
import * as fs from "fs";
import * as path from "path";
import * as json from "big-json";
import { JsonStreamStringify } from "json-stream-stringify";

// Combine JSON files
import { Transform, pipeline } from 'stream';
import { promisify } from 'util';
import { combineJsonFiles, getPercentile, bootstrapPercentile, median, medianAbsoluteDeviation, standardizeValues, standardizeUsingMeanStdDev, standardizeUsingMedianMAD, mean, standardDeviation, skewness, reduceIfIdentical, getNestedValue, saveGeneData } from './includes/functions.js';

// Custom functions
import { welchsTTest } from './includes/ChicpeaMaths.js';
import { findParentEntries, findChildrenEntries, escapeSolrValue } from './includes/solr.js';

import * as chi2test from "@stdlib/stats-chi2test";
import { alignAndBinData, createContingencyTable, calculateNumberOfBinsRiceRule } from './includes/functions.js';


let cellLinkedEntities = {};

let uniqueCells = {};
let uniqueTissue = {};
let uniqueDisease = {};

let cellThresholds = {}; // Object to store relevantScoreThreshold for each cell
const numBootstrapSamples = 250;

// Score greater than one or two standard deviations above the mean
let relevantScoreThreshold = 0; // Initialize to 0, will be calculated later

//***************************************
// Creating a RegExp to match UUID format
const regexp = new RegExp("[0-9a-f]{8}-[0-9a-f]{4}-[0-5][0-9a-f]{3}-[089ab][0-9a-f]{3}-[0-9a-f]{12}", "gi");
// Read all the .json files in the directory 'bulk'.
const jsonsInDir = fs.readdirSync("./bulk").filter((file) => path.extname(file) === ".json");

let allGenes = {};
let cellLineages = {};

// Experiment counter to iterate over each file
let experiment_counter = 0;

// Collect data from all single cell experiments and construct one global allGenes object
jsonsInDir.forEach((file) => {
    const processingFile = path.join("./bulk", file);

    const uid_matches = processingFile.matchAll(regexp);

    let uid = "";
    for (const match of uid_matches) {
        uid = match[0];
    }

    const fileData = fs.readFileSync(processingFile);
    let json = JSON.parse(fileData.toString());

    console.log("===> INFO: Processing file: " + processingFile + " total genes: " + Object.keys(json).length);

    let uberon = processingFile.substring(processingFile.indexOf("|") + 1, processingFile.lastIndexOf("|"));
    let disease = processingFile.substring(processingFile.lastIndexOf("|") + 1, processingFile.lastIndexOf("."));

    // Fix some UBERON IDs
    if (uid === "12f8c1ba-e357-4f6b-9245-6b3e53a78649") {
        uberon = "UBERON:0000000";
    } else if (uid === "62fa2316-7488-4be6-9d79-2b34e3dfdfc1") {
        uberon = "UBERON:0000000";
    } else if (uid === "77ba68d1-3ef8-4a33-898e-12029537d0e0") {
        uberon = "UBERON:0000000";
    } else if (uid === "99109158-329a-4984-97f1-385edad0da44") {
        uberon = "UBERON:0000000";
    } else if (uid === "a3c9822c-bdb3-44f2-b2ba-434263011fe5") {
        uberon = "UBERON:0000000";
    } else if (uid === "bc2351eb-3004-440d-83ef-1d9e2e7b7f55") {
        uberon = "UBERON:0000000";
    } else if (uid === "db9bf174-33a3-451e-9997-51f834b8975b") {
        uberon = "UBERON:0000000";
    } else if (uid === "f74628eb-d767-436a-8cc6-1bf05b05e0b5") {
        uberon = "UBERON:0000000";
    }
    let uberon_id = uberon;
    let disease_id = disease;

    if (uberon_id.startsWith("UBERON") === false || uberon_id === "UBERON:0000000") {
        console.log("===> ERROR: Not a valid UBERON ID: " + uberon_id);
        return;
    }


    // uberon_id = parseInt(uberon_id.match(/\d/g).join(""));
    // disease_id = parseInt(disease_id.match(/\d/g).join(""));

    console.log("     UBERON ID: " + uberon + " / " + uberon_id);
    console.log("     DISEASE ID: " + disease + " / " + disease_id);


    uberon_id = uberon_id.replace(':', '');
    disease_id = disease_id.replace(':', '');

    experiment_counter++;
    let experiment_id = experiment_counter;

    console.log("     EXPERIMENT ID: " + experiment_id);

    // Loop values from json file and add them to allGenes
    Object.keys(json).forEach((gene_id) => {
        // Process only genes that start with ENSG
        if (!gene_id.startsWith("ENSG")) {
            return;
        }

        const newValues = json[gene_id];
        const updatedValues = {};

        Object.keys(newValues).forEach((cell_id) => {
            const n_cell_id = cell_id.replace(':', '');
            updatedValues[n_cell_id] = [newValues[cell_id]];

            cellLineages[n_cell_id] = cellLineages[n_cell_id] || [];
        });

        // Simplified object property checks
        allGenes[gene_id] = allGenes[gene_id] || {};
        allGenes[gene_id][uberon_id] = allGenes[gene_id][uberon_id] || {};
        allGenes[gene_id][uberon_id][disease_id] = allGenes[gene_id][uberon_id][disease_id] || {};
        let geneData = allGenes[gene_id][uberon_id][disease_id][experiment_id] || {};

        Object.keys(updatedValues).forEach(cell_id => {
            geneData[cell_id] = (geneData[cell_id] || []).concat(updatedValues[cell_id]);
        });

        allGenes[gene_id][uberon_id][disease_id][experiment_id] = geneData;
    });

    // Free up memory
    json = null;
});

const allGeneKeys = Object.keys(allGenes);
// Output the total number of genes before starting the loop
console.log("===> INFO: Total number of genes to process: " + allGeneKeys.length);

// Using a simple for loop for better performance
for (let i = 0; i < allGeneKeys.length; i++) {
    const gene_id = allGeneKeys[i];
    let outputPath = saveGeneData(gene_id, allGenes[gene_id], "output/genes", true, true, "original");

    // Log every 10000 iterations instead of using indexOf
    if (i % 10000 === 0) {
        console.log("===> INFO: Saved gene ("+i+") data to: " + outputPath);
    }
    // Free up memory
    allGenes[gene_id] = null;
}


console.log("===> INFO: All data processed, saved, and memory cleared. Collecting lineage data for each cell");
const batchSize = 100;
const cellLineageIds = Object.keys(cellLineages);


for (let i = 0; i < cellLineageIds.length; i += batchSize) {
    const batch = cellLineageIds.slice(i, i + batchSize);
    const iris = batch.map(id => escapeSolrValue(`http://purl.obolibrary.org/obo/${id}`));
    const curieSearch = batch.map(id => id.replace('CL', 'CL:'));


    let childrenEntries = null;
    let parentEntries = null;

    try {
        childrenEntries = findChildrenEntries(iris);
        parentEntries = findParentEntries(curieSearch);
    } catch (error) {
        console.log("===> ERROR: An error occurred while querying Solr for children entries");
        console.log(error);
        continue;
    }


    // Check if response and docs are defined
    if (!childrenEntries.response || !childrenEntries.response.docs) {
        console.log("===> ERROR: Invalid response structure from findChildrenEntries");
        continue;
    } else {
        console.log("===> INFO: Got response of " + childrenEntries.response.docs.length + " childrenEntries from Solr for " + iris.length + " cells");
    }

    // Loop through each doc in the response
    childrenEntries.response.docs.forEach(doc => {
        // Check if curie and directAncestor are defined
        if (!doc.curie || !doc.directAncestor) {
            console.log("Missing curie or directAncestor in document");
            return; // Skip this iteration
        }

        let curie = doc.curie.map(item => item.replace(":", ""));
        let directAncestors = doc.directAncestor.filter(url => url.includes("CL_")).map(url => url.split('/').pop().replace("CL_", "CL"));

        // Loop through each directAncestor and modify cellLineageIds if necessary
        directAncestors.forEach(directAncestor => {
            if (!cellLineages[directAncestor]) {
                cellLineages[directAncestor] = [];
            }
            // Iterate over each curie in the array
            curie.forEach(curieElement => {
                // Push the curieElement only if it's not already in the array
                if (!cellLineages[directAncestor].includes(curieElement)) {
                    cellLineages[directAncestor].push(curieElement);
                }
            });
        });
    });


    // Process parent cells
    if (!parentEntries.response || !parentEntries.response.docs) {
        console.log("===> ERROR: Invalid response structure from parentEntries");
        continue;
    } else {
        console.log("===> INFO: Got response of " + parentEntries.response.docs.length + " parentEntries from Solr for " + iris.length + " cells");
    }

    parentEntries.response.docs.forEach(doc => {
        let cellJson;
        let linkedEntities;
        let cellName;

        try {
            cellJson = JSON.parse(doc._json);
            linkedEntities = cellJson["linkedEntities"];
        } catch (error) {
            console.error("===> ERROR : Error parsing doc JSON:", error);
            // Handle error or return from function
        }

        let curie = doc.curie.map(item => item.replace(":", ""));

        if (cellJson) {
            cellName = getNestedValue(cellJson, ["http://www.w3.org/2000/01/rdf-schema#label", "value"], null);
        }

        if (cellName && linkedEntities) {
            Object.keys(linkedEntities).forEach(key => {
                let item = linkedEntities[key];

                // Check if item.curie.value and item.label.value exist
                if (!getNestedValue(item, ["curie", "value"]) || !getNestedValue(item, ["label", "value"])) {
                    return; // Skip to the next iteration if these keys do not exist
                }

                if (item.definedBy && (item.definedBy.includes("go") || item.definedBy.includes("uberon"))) {
                    let entity_term = {
                        entity_id: item.curie.value,
                        value: item.label.value,
                    }

                    curie.forEach(c => {
                        if (!cellLinkedEntities[c]) {
                            cellLinkedEntities[c] = {
                                name: cellName,
                                entity_terms: [entity_term]
                            };
                        } else {
                            // Add entity_term only if it's not already in the array
                            if (!cellLinkedEntities[c].entity_terms.some(term => term.entity_id === entity_term.entity_id)) {
                                cellLinkedEntities[c].entity_terms.push(entity_term);
                            }
                        }
                    });
                }
            });
        }
    });
}

try {
    fs.writeFileSync('./output/data.cellLinkedEntities.json', JSON.stringify(cellLinkedEntities, null, 2), 'utf8');
    console.log('===> DONE - Data saved to ./output/data.cellLinkedEntities.json');
    cellLinkedEntities = null;

    fs.writeFileSync('./output/data.cellLineages.json', JSON.stringify(cellLineages, null, 2), 'utf8');
    console.log('===> DONE - Data saved to ./output/data.cellLineages.json');
} catch (err) {
    console.error('===> ERROR - An error occurred:', err);
    process.exit(1);
}

console.log("===> INFO: Processing allGenes data and calculating marker scores");


console.log("===> DONE. Please run processing.js to calculate marker scores and thresholds");
process.exit(1);

// Function to write data to a file asynchronously, returning a promise
function writeFileAsync(filePath, data) {
    return new Promise((resolve, reject) => {
        fs.writeFile(filePath, data, (err) => {
            if (err) {
                reject(err);
            } else {
                resolve(filePath);
            }
        });
    });
}
// Array to hold promises for each writeFile operation
let writePromises = [];

// Loop over keys of allGenes and perform operations on sorted arrays.
let processedGenes = 0;
let processedCells = 0;

for (let i = 0; i < allGeneKeys.length; i++) {
    const gene_id = allGeneKeys[i];

    let inputFilePath = saveGeneData(gene_id, null, "output/genes", false, true, "original")
    let geneData = JSON.parse(fs.readFileSync(inputFilePath, 'utf8'));

    let shared_cells = [];
    let shared_tissues = [];
    let expressions = [];

    if (i % 1000 === 0) {
        console.log("===> INFO: Processing " + processedGenes + " - gene: " + gene_id);
        processedGenes += 1000;
    }

    // Loop through each uberon_id (tissue) to construct expressions and shared_cells array
    Object.keys(geneData).forEach((uberon_id) => {

        Object.keys(geneData[uberon_id]).forEach((disease_id) => {

            Object.keys(geneData[uberon_id][disease_id]).forEach((experiment_id) => {

                // Update gene data and shared_cells array
                Object.keys(geneData[uberon_id][disease_id][experiment_id]).forEach((cell_id) => {

                    let cellValues = geneData[uberon_id][disease_id][experiment_id][cell_id];

                    cellValues = reduceIfIdentical(cellValues);

                    let maxValue = Math.max(...cellValues);

                    // Remove Ultra-low Expression Values
                    if (maxValue <= 3) {
                        cellValues = []
                    }

                    // percentile threshold
                    let standardizedData = null;
                    let percentileThreshold = null;
                    let cellValuesPercentile = null;

                    let totalCellValues = cellValues.length;

                    if (cellValues.length > 1) {
                        processedCells += totalCellValues;
                        // Standardize values
                        standardizedData = standardizeValues(cellValues);

                        percentileThreshold = getPercentile(standardizedData, 0.5);
                        cellValuesPercentile = standardizedData.filter((value) => value >= percentileThreshold);

                    } else {
                        processedCells += 1;
                        percentileThreshold = maxValue;
                        cellValuesPercentile = cellValues;
                    }

                    if (cellValues.length < 1) {
                        delete geneData[uberon_id][cell_id];
                    } else {
                        let cellValueItem = {
                            experiment_id: parseInt(experiment_id),
                            values: cellValuesPercentile // Standardized data or raw counts - cellValues,
                        };

                        // If object already exist by tissue_id disease_id cell_id update it otherwise add a new one in
                        // expressions array
                        let item = {
                            tissue_id: uberon_id,
                            disease_id: disease_id,
                            cell_id: cell_id,
                            values: [cellValueItem],
                        };

                        let index = expressions.findIndex(
                            (element) => element.tissue_id === item.tissue_id && element.disease_id === item.disease_id && element.cell_id === item.cell_id
                        );

                        if (index !== -1) {
                            // If the object already exists in the array
                            let values = expressions[index].values;

                            values = values.map((obj) => {
                                if (obj["experiment_id"] === experiment_id) {
                                    return {
                                        ...obj,
                                        values: [...obj.values, ...cellValueItem.values], // Modify the sum and return the updated object
                                    };
                                }
                                return obj; // Return the original object if the cell_id doesn't match
                            });

                            // Update values by concatenating old and new ones.
                            expressions[index].values = values;
                        } else {
                            // If the object doesn't exist in the array, add a new one.
                            expressions.push(item);
                        }

                        const values_count = cellValuesPercentile.reduce((accumulator, currentValue) => accumulator + currentValue, 0);

                        let cellInfo = { cell_id: cell_id, sum: values_count };
                        const exists = shared_cells.some((obj) => obj["cell_id"] === cell_id);

                        if (!shared_cells.some((obj) => obj["cell_id"] === cell_id)) {
                            shared_cells.push(cellInfo);
                        } else {
                            shared_cells = shared_cells.map((obj) => {
                                if (obj["cell_id"] === cell_id) {
                                    return { ...obj, sum: obj.sum + cellInfo.sum }; // Modify the sum and return the updated object
                                }
                                return obj; // Return the original object if the cell_id doesn't match
                            });
                        }
                    }
                }); // cell end

            }); // experiment end

        }); // disease end

        if (!shared_tissues.includes(uberon_id)) {
            shared_tissues.push(uberon_id);
        }

        if (geneData[uberon_id].length === 0) {
            console.log("===> DELETED: " + gene_id + " because it has no cells");
            delete geneData[uberon_id];
        }
    }); // uberon end for specific gene

    // Delete file if there are no cells
    if (shared_cells.length === 0) {
        // Delete file from filesystem
        fs.unlink(inputFilePath, (err) => {
            if (err) {
                console.error("Error deleting file:", err);
            }
        });
    } else {
        // If there is data calculate enrichment on Gene Level (As Root)
        // and calculate marker scores on Cell Level (As Leaf)
        let effectSizes = [];
        let cellEffectSizes = {};

        let calc_start = new Date().getTime();

        expressions.forEach((selectedCell, index) => {

            const selectedCellId = selectedCell.cell_id;

            if (!selectedCell.cell_id || !selectedCell.values || !Array.isArray(selectedCell.values)) {
                console.error('===> ERROR - Invalid data structure for cell:', selectedCell);
                return;
            }



            // To identify marker genes that are universally expressed or enriched across all tissues, diseases, or conditions.
            let selectedCellData = selectedCell.values.map(v => v.values).flat();

            let numSelectedCellData = selectedCellData.length;
            // Early termination if less than 25 unique cells
            if (numSelectedCellData <= 1) {
                console.log("===> INFO: Skipping gene " + gene_id + " - "+ selectedCellId +" because it has less/or 1 data-point");
                return;
            }

            // Calculate 4 different markerScores: across all tissues, diseases, diseases in tissues and across all!
            const cellEffectTissue = selectedCell.tissue_id;
            const cellEffectDisease = selectedCell.disease_id;
            // const cellEffectTissueDisease = selectedCell.tissue_id + selectedCell.disease_id;

            // Add unique stats in global vars
            if (!uniqueCells[selectedCellId]) {
              uniqueCells[selectedCellId] = true;
            }

            if (!uniqueTissue[cellEffectTissue]) {
                uniqueTissue[cellEffectTissue] = true;
            }
            if (!uniqueDisease[cellEffectDisease]) {
                uniqueDisease[cellEffectDisease] = true;
            }

            if (!cellEffectSizes[selectedCellId]) {
                cellEffectSizes[selectedCellId] = {};
            }
            // if (!cellEffectSizes[selectedCellId][cellEffectTissue]) {
            //     cellEffectSizes[selectedCellId][cellEffectTissue] = [];
            // }
            // if (!cellEffectSizes[selectedCellId][cellEffectDisease]) {
            //     cellEffectSizes[selectedCellId][cellEffectDisease] = [];
            // }
            // if (!cellEffectSizes[selectedCellId][cellEffectTissueDisease]) {
            //     cellEffectSizes[selectedCellId][cellEffectTissueDisease] = [];
            // }
            if (!cellEffectSizes[selectedCellId].overall) {
                cellEffectSizes[selectedCellId].overall = [];
            }

            expressions.forEach((cellType, index2) => {
                if (index !== index2) {
                    // console.log('===> INFO: Comparing ' + selectedCellId + ' with ' + cellType.cell_id);
                    // Don t compare if cells are in same lineage
                    if (index === index2 || cellLineages[selectedCellId].includes(cellType.cell_id)) {
                        return;
                    }

                    let comparisonCellData = cellType.values.map(v => v.values).flat();
                    let effectSize;

                    // Check if both arrays have only one element
                    if (numSelectedCellData === 1 && comparisonCellData.length === 1) {
                        effectSize = Math.abs(selectedCellData[0] - comparisonCellData[0]);

                    } else if (numSelectedCellData > 1 && comparisonCellData.length > 1) {
                        // Example 1. Perform the Welch's t-test
                        // const testResult = welchsTTest(selectedCellData, comparisonCellData);
                        // effectSize = testResult.t;

                        // Example 2. Perform the chi-square test
                        // let [binnedSelectedCellData, binnedComparisonCellData] = alignAndBinData(
                        //     selectedCellData, 
                        //     comparisonCellData, 
                        //     calculateNumberOfBinsRiceRule([...selectedCellData, ...comparisonCellData])
                        // );
                        // // Construct contingency table
                        // let contingencyTable = createContingencyTable(binnedSelectedCellData, binnedComparisonCellData);
                        // let res = chi2test(contingencyTable);
                        // let result = res.toJSON();
                        // effectSize = result.statistic; 
                        try {
                            const median1 = median(selectedCellData);
                            const median2 = median(comparisonCellData);

                            effectSize = median1 - median2;
                        } catch (error) {
                            console.error("Error calculating effect size:", error.message);
                            // Handle the error appropriately - for example, you might set effectSize to null or continue with a default value
                            effectSize = null; // or some other error handling mechanism
                        }

                    }else{
                        return;
                    }

                    // effectSize calculation end
                    // if (cellType.tissue_id === cellEffectTissue && cellType.disease_id === cellEffectDisease) {
                    //     cellEffectSizes[selectedCellId][cellEffectTissueDisease].push(effectSize);
                    // }
                    // if (cellType.tissue_id === cellEffectTissue) {
                    //     cellEffectSizes[selectedCellId][cellEffectTissue].push(effectSize);
                    // }
                    // if (cellType.disease_id === cellEffectDisease) {
                    //     cellEffectSizes[selectedCellId][cellEffectDisease].push(effectSize);
                    // }

                    if (effectSize !== null) {
                        cellEffectSizes[selectedCellId].overall.push(effectSize); 
                    }
                }
            }); // second expressions loop
        }); // main expressions loop

        let calc_end = new Date().getTime();
        let final_calc_time = (calc_end - calc_start) / 1000;
        if(final_calc_time > 3){
            console.log("===> INFO: Calc END marker scores for " + gene_id + " in " + final_calc_time+ " sec\n");
        }

        // Now when we collected all the effectSizes for all selectedCell, we can calculate the markerScore and save results to cellThresholds and effectSizes
        let second_calc_start = new Date().getTime();
        expressions.forEach((selectedCell, index) => {
            if (!cellThresholds[selectedCell.cell_id]) {
                cellThresholds[selectedCell.cell_id] = {};
            }
            
            Object.keys(cellEffectSizes[selectedCell.cell_id]).forEach(context => {
                const scores = cellEffectSizes[selectedCell.cell_id][context];
                if (scores.length > 0) {
                    let markerScore = bootstrapPercentile(scores, numBootstrapSamples, 0.1);

                    // let markerScore = getPercentile(scores, 0.1);
                    // let markerScore = median(scores);

                    if (Number.isFinite(markerScore)) {
                        if (!cellThresholds[selectedCell.cell_id][context]) {
                            cellThresholds[selectedCell.cell_id][context] = [];
                        }
                        cellThresholds[selectedCell.cell_id][context].push(markerScore);
                        effectSizes.push({ "cell_id": selectedCell.cell_id, "context": context, "markerScore": markerScore });
                    }
                }
            });
        });

        if(final_calc_time > 3){
            let second_calc_end = new Date().getTime();
            console.log("===> INFO: Calculated effectSizes in " + (second_calc_end - second_calc_start) + " Nanoseconds");
        }

        writePromises.push(
            writeFileAsync(inputFilePath.replace("original", "final"), JSON.stringify({
                expressions: expressions,
                cells: shared_cells,
                tissues: shared_tissues,
                effectSizes: effectSizes
            }, null, '\t'))
        );
    }
} // end for loop

cellLineages = null;

console.log("===> INFO : Saving cells data to the file 'data.cells.json', this needs to be imported into 'genes_helpers.genes_helpers' as an object with 'type': 'markerScores'");

// Use Promise.all to wait for all writeFile operations to complete
Promise.all(writePromises)
    .then((results) => {

        const uniqueCellsArray = Object.keys(uniqueCells);
        uniqueCells = {};

        const uniqueTissueArray = Object.keys(uniqueTissue);
        uniqueTissue = {};

        const uniqueDiseaseArray = Object.keys(uniqueDisease);
        uniqueDisease = {};

        console.log("===> STAT : Cells: " + uniqueCellsArray.length + " Tissues: " + uniqueTissueArray.length + " Diseases: " + uniqueDiseaseArray.length);

        Object.keys(cellThresholds).forEach(cell_id => {
            // Initialize a new object for storing thresholds per context
            let thresholdsPerContext = {};

            Object.keys(cellThresholds[cell_id]).forEach(context => {
                const scores = cellThresholds[cell_id][context];

                if (scores.length > 0) {
                    // Example 1. Calculates a threshold based on the mean and standard deviation, which is more aligned with parametric data analysis.
                    
                    const meanScore = mean(scores);
                    const stdDevScore = standardDeviation(scores, meanScore);
                    const numStandardDeviations = 1;
                    
                    thresholdsPerContext[context] = meanScore + (numStandardDeviations * stdDevScore);

                    // Using median as a threshold directly for a central value
                    // const medianScore = median(scores);
                    // If you want to define some range based on the median, adjust here
                    // thresholdsPerContext[context] = medianScore;
                } else {
                    // Handle the case where there are no scores for a given context
                    delete cellThresholds[cell_id][context];
                }
            });
            // Assign the calculated thresholds back to the cell_id
            cellThresholds[cell_id] = thresholdsPerContext;
        });

        const unique_stats = { "processedGenes": processedGenes, "processedCells": processedCells, 
        "relevantScoreThreshold": cellThresholds, "cells": uniqueCellsArray, 
        "tissue": uniqueTissueArray, "disease": uniqueDiseaseArray };

        // Stringify the Array
        const jsonData = JSON.stringify(unique_stats, null, 2); // The second argument formats the JSON for readability
        // Write to a File
        fs.writeFile('./output/data.cells.json', jsonData, 'utf8', (err) => {
            if (err) {
                console.error('===> ERROR - An error occurred:', err);
                return;
            }
            console.log('===> DONE - Data saved to ./data.cells.json');
        });

        // // Log that everything is done
        // console.log("===> INFO : Saving data to the file 'data.processed.json'");
        // // Save the output of the task in a .json file.
        // const writeStream = fs.createWriteStream("./output/data.processed.json", { flags: "w", encoding: "utf8" });
        // // Begin writing beautified JSON to file using a stream to handle large volumes of data
        // const stringifyStream = new JsonStreamStringify(allGenes, null, 4);
        // stringifyStream
        //     .pipe(writeStream)
        //     .on("finish", () => {
        //         console.log("===> DONE - Data saved to ./data.processed.json");
        //     })
        //     .on("error", (err) => {
        //         console.error("===> ERROR - An error occurred while writing the JSON file:", err);
        //     });

        // Usage
        // const baseDir = 'output/genes'; // Your base directory
        // const outputFilePath = 'output/data.processed.json'; // Path for the combined JSON file

        // combineJsonFiles(baseDir, outputFilePath)
        //     .then(() => console.log('===> DONE - Data saved to ./data.processed.json (All JSON files have been combined)'))
        //     .catch(error => console.error('An error occurred:', error));

        console.log("===> INFO - Waiting for JSON write to finish..");

    })
    .catch((error) => {
        // An error occurred during writing one of the files
        console.error("Error writing file:", error);
    });


