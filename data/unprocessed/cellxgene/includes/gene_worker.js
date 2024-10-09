import { parentPort, workerData } from 'worker_threads';


import { combineJsonFiles, getPercentile, bootstrapPercentile, median, medianAbsoluteDeviation, standardizeValues, standardizeUsingMeanStdDev, standardizeUsingMedianMAD, mean, standardDeviation, skewness, reduceIfIdentical, getNestedValue, saveGeneData } from './includes/functions.js';
import * as chi2test from "@stdlib/stats-chi2test";
import { alignAndBinData, createContingencyTable, calculateNumberOfBinsRiceRule } from './includes/functions.js';

const { gene_id } = workerData;

let uniqueCells = new Set();
let uniqueTissue = new Set();
let uniqueDisease = new Set();

let cellThresholdsForGene = {};


let inputFilePath = saveGeneData(gene_id, null, "output/genes", false, true, "original")
let geneData = JSON.parse(fs.readFileSync(inputFilePath, 'utf8'));

let shared_cells = [];
let shared_tissues = [];
let expressions = [];


// Loop through each uberon_id (tissue) to construct expressions and shared_cells array
Object.keys(geneData).forEach((uberon_id) => {

    Object.keys(geneData[uberon_id]).forEach((disease_id) => {

        Object.keys(geneData[uberon_id][disease_id]).forEach((experiment_id) => {

            // Update gene data and shared_cells array
            Object.keys(geneData[uberon_id][disease_id][experiment_id]).forEach((cell_id) => {

                let cellValues = geneData[uberon_id][disease_id][experiment_id][cell_id];

                cellValues = reduceIfIdentical(cellValues);

                let minValue = Math.min(...cellValues);
                let maxValue = Math.max(...cellValues);

                // Remove Ultra-low Expression Values
                if (maxValue <= 3) {
                    cellValues = []
                }

                // percentile threshold
                let standardizedData = null;
                let percentileThreshold = null;
                let cellValuesPercentile = null;

                if (cellValues.length > 1) {
                    // Standardize values using mean or median depending on the skewness of the data
                    standardizedData = standardizeValues(cellValues);

                    percentileThreshold = getPercentile(standardizedData, 0.5);
                    cellValuesPercentile = standardizedData.filter((value) => value >= percentileThreshold);
                    minValue = Math.min(...cellValuesPercentile);
                    maxValue = Math.max(...cellValuesPercentile);
                } else {
                    percentileThreshold = maxValue;
                    cellValuesPercentile = cellValues;
                }

                if (cellValues.length < 1) {
                    // console.log("===> DELETED: " + cell_id + " p: " + percentileThreshold + " min: " + minValue + " max: " + maxValue);
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


    console.log("===> INFO: Calculating marker scores for " + gene_id + " (" + i + ") with " + expressions.length + " cells");
    let calc_start = new Date().getTime();

    // TODO: Do not calc if less than 25 cells

    expressions.forEach(selectedCell => {

        // let calc_elipsed = new Date().getTime();
        // if ((calc_elipsed - calc_start) / 1000 > 10) {
        //     console.log("==> " + selectedCell.cell_id)
        // }

        // Add unique stats in global vars
        if (!uniqueCells.has(selectedCell.cell_id)) {
            uniqueCells.add(selectedCell.cell_id);
        }
        if (!uniqueTissue.has(selectedCell.tissue_id)) {
            uniqueTissue.add(selectedCell.tissue_id);
        }
        if (!uniqueDisease.has(selectedCell.disease_id)) {
            uniqueDisease.add(selectedCell.disease_id);
        }

        if (!selectedCell.cell_id || !selectedCell.values || !Array.isArray(selectedCell.values)) {
            console.error('===> ERROR - Invalid data structure for cell:', selectedCell);
            return;
        }
        // To identify marker genes that are universally expressed or enriched across all tissues, diseases, or conditions.
        let selectedCellData = selectedCell.values.map(v => v.values).flat();

        // Calculate 4 different markerScores: across all tissues, diseases, diseases in tissues and across all!
        const cellEffectTissue = selectedCell.tissue_id;
        const cellEffectDisease = selectedCell.disease_id;
        const cellEffectTissueDisease = selectedCell.tissue_id + selectedCell.disease_id;

        if (!cellEffectSizes[selectedCell.cell_id]) {
            cellEffectSizes[selectedCell.cell_id] = {};
        }
        if (!cellEffectSizes[selectedCell.cell_id][cellEffectTissue]) {
            cellEffectSizes[selectedCell.cell_id][cellEffectTissue] = [];
        }
        if (!cellEffectSizes[selectedCell.cell_id][cellEffectDisease]) {
            cellEffectSizes[selectedCell.cell_id][cellEffectDisease] = [];
        }
        if (!cellEffectSizes[selectedCell.cell_id][cellEffectTissueDisease]) {
            cellEffectSizes[selectedCell.cell_id][cellEffectTissueDisease] = [];
        }
        if (!cellEffectSizes[selectedCell.cell_id].overall) {
            cellEffectSizes[selectedCell.cell_id].overall = [];
        }

        expressions.forEach(cellType => {
            if (cellType.cell_id !== selectedCell.cell_id) {
                // console.log('===> INFO: Comparing ' + selectedCell.cell_id + ' with ' + cellType.cell_id);
                // Don t compare if cells are in same lineage
                if (cellLineages[selectedCell.cell_id] && cellLineages[selectedCell.cell_id].includes(cellType.cell_id)) {
                    return;
                }

                let comparisonCellData = cellType.values.map(v => v.values).flat();

                let effectSize;

                // Check if both arrays have only one element
                if (selectedCellData.length === 1 && comparisonCellData.length === 1) {
                    effectSize = Math.abs(selectedCellData[0] - comparisonCellData[0]);

                } else if (selectedCellData.length > 1 && comparisonCellData.length > 1) {

                    // const testResult = welchsTTest(selectedCellData, comparisonCellData);
                    // effectSize = testResult.t;
                    // Perform the chi-square test

                    let [binnedSelectedCellData, binnedComparisonCellData] = alignAndBinData(
                        selectedCellData,
                        comparisonCellData,
                        calculateNumberOfBinsRiceRule([...selectedCellData, ...comparisonCellData])
                    );

                    // Construct contingency table
                    let contingencyTable = createContingencyTable(binnedSelectedCellData, binnedComparisonCellData);

                    let res = chi2test(contingencyTable);

                    let result = res.toJSON();
                    effectSize = result.statistic;

                    // Compare the single value from one array against each value in the other array
                } else if (selectedCellData.length === 1 || comparisonCellData.length === 1) {
                    let singleValue = selectedCellData.length === 1 ? selectedCellData[0] : comparisonCellData[0];
                    let multipleValues = selectedCellData.length === 1 ? comparisonCellData : selectedCellData;

                    let differences = multipleValues.map(value => Math.abs(value - singleValue));
                    effectSize = differences.reduce((a, b) => a + b, 0) / differences.length;
                }

                // effectSize calculation end

                if (cellType.tissue_id === cellEffectTissue && cellType.disease_id === cellEffectDisease) {
                    cellEffectSizes[selectedCell.cell_id][cellEffectTissueDisease].push(effectSize);
                }

                if (cellType.tissue_id === cellEffectTissue) {
                    cellEffectSizes[selectedCell.cell_id][cellEffectTissue].push(effectSize);
                }

                if (cellType.disease_id === cellEffectDisease) {
                    cellEffectSizes[selectedCell.cell_id][cellEffectDisease].push(effectSize);
                }

                cellEffectSizes[selectedCell.cell_id]["overall"].push(effectSize);
            }
        }); // expressions loop

        if (!cellThresholdsForGene[selectedCell.cell_id]) {
            cellThresholdsForGene[selectedCell.cell_id] = {};
        }

        Object.keys(cellEffectSizes[selectedCell.cell_id]).forEach(context => {
            const scores = cellEffectSizes[selectedCell.cell_id][context];
            if (scores.length > 0) {

                let markerScore = getPercentile(scores, 0.1);

                if (Number.isFinite(markerScore)) {
                    if (!cellThresholdsForGene[selectedCell.cell_id][context]) {
                        cellThresholdsForGene[selectedCell.cell_id][context] = [];
                    }
                    cellThresholdsForGene[selectedCell.cell_id][context].push(markerScore);
                    effectSizes.push({ "cell_id": selectedCell.cell_id, "context": context, "markerScore": markerScore });
                }
            }
        });
    });

    let calc_end = new Date().getTime();
    console.log("===> INFO: Calculated marker scores for " + gene_id + " in " + (calc_end - calc_start) / 1000 + " seconds");

    // Send the processed data back to the main thread
    parentPort.postMessage({ gene_id, cellThresholdsForGene });


    // Writing data to file asynchronously using a callback
    fs.writeFile(inputFilePath.replace("original", "final"), JSON.stringify({
        expressions: expressions,
        cells: shared_cells,
        tissues: shared_tissues,
        effectSizes: effectSizes
    }, null, '\t'), (err) => {
        if (err) {
            console.error('Error writing file:', err);
        } else {
            parentPort.postMessage(`Gene ${gene_id} processed`);
        }
    });
}



