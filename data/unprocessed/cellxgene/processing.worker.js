import { parentPort, workerData } from 'worker_threads';
import * as fs from "fs/promises";

import { saveGeneData, reduceIfIdentical, standardizeValues, getPercentile, median } from './includes/functions.js';



async function processGene(gene_id, cellLineages) {

    let inputFilePath = saveGeneData(gene_id, null, "output/genes", false, true, "original")
    let geneDataContent = await fs.readFile(inputFilePath, 'utf8');
    let geneData = JSON.parse(geneDataContent);

    let shared_cells = [];
    let shared_tissues = [];
    let expressions = [];

    let totalCellValues = 0;

    // If file is already processed and exist just return values
    // let inputFilePathFinal = saveGeneData(gene_id, null, "output/genes", false, true, "final");
    // if (fs.existsSync(inputFilePathFinal)) {
    //     let geneDataContentFinal = await fs.readFile(inputFilePathFinal, 'utf8');
    //     parentPort.postMessage({
    //         totalCellUpdate: 0,
    //         uniqueCellsUpdate: 0,
    //         uniqueTissueUpdate: 0,
    //         uniqueDiseaseUpdate: 0,
    //         cellThresholdsUpdate: [],
    //         data: {
    //             inputFilePath: inputFilePath,
    //             expressions: geneDataContentFinal.expressions,
    //             cells: shared_cells,
    //             tissues: shared_tissues,
    //             effectSizes: geneDataContentFinal.effectSizes
    //         }
    //     });
    // }


    Object.keys(geneData).forEach((uberon_id) => {
        Object.keys(geneData[uberon_id]).forEach((disease_id) => {
            Object.keys(geneData[uberon_id][disease_id]).forEach((experiment_id) => {
                // Update gene data and shared_cells array
                Object.keys(geneData[uberon_id][disease_id][experiment_id]).forEach((cell_id) => {
                
                    // Skip this cell_id if it matches "CL0000003"
                    if(cell_id === "CL0000003") {
                        return; // Skip the rest of this iteration
                    }

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

                    let cellValuesLength = cellValues.length;
                    if (cellValues.length > 1) {
                        totalCellValues += cellValuesLength;
                        // Standardize values
                        standardizedData = standardizeValues(cellValues);

                        percentileThreshold = getPercentile(standardizedData, 0.5);
                        cellValuesPercentile = standardizedData.filter((value) => value >= percentileThreshold);

                    } else {
                        totalCellValues += 1;
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
    });

    let uniqueCellsLocal = {};
    let uniqueTissueLocal = {};
    let uniqueDiseaseLocal = {};
    let cellThresholdsLocal = {};

    let effectSizes = [];
    let cellEffectSizes = {};

    // Delete file if there are no cells
    if (shared_cells.length === 0) {
        // Delete file from filesystem
        fs.unlink(inputFilePath, (err) => {
            if (err) {
                console.error("Error deleting file:", err);
            }
        });
    } else {
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

            if (!cellEffectSizes[selectedCellId]) {
                cellEffectSizes[selectedCellId] = { overall: [] };
            }
            // Calculate 4 different markerScores: across all tissues, diseases, diseases in tissues and across all!
            const cellEffectTissue = selectedCell.tissue_id;
            const cellEffectDisease = selectedCell.disease_id;

            // Add unique stats in global vars
            if (!uniqueCellsLocal[selectedCellId]) {
                uniqueCellsLocal[selectedCellId] = true;
            }

            if (!uniqueTissueLocal[cellEffectTissue]) {
                uniqueTissueLocal[cellEffectTissue] = true;
            }
            if (!uniqueDiseaseLocal[cellEffectDisease]) {
                uniqueDiseaseLocal[cellEffectDisease] = true;
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
                        try {
                            const median1 = median(selectedCellData);
                            const median2 = median(comparisonCellData);

                            effectSize = median1 - median2;
                        } catch (error) {
                            console.error("Error calculating effect size:", error.message);
                            effectSize = null;
                        }

                    } else {
                        return;
                    }

                    if (effectSize !== null) {
                        cellEffectSizes[selectedCellId].overall.push(effectSize);
                    }
                }
            }); // second expressions loop
        }); // main expressions loop

        // let calc_end = new Date().getTime();
        // let final_calc_time = (calc_end - calc_start) / 1000;
        // if (final_calc_time > 3) {
        //     console.log("===> INFO: Calc END marker scores for " + gene_id + " in " + final_calc_time + " sec\n");
        // }

        let second_calc_start = new Date().getTime();
        expressions.forEach((selectedCell, index) => {
            if (!cellThresholdsLocal[selectedCell.cell_id]) {
                cellThresholdsLocal[selectedCell.cell_id] = {};
            }

            Object.keys(cellEffectSizes[selectedCell.cell_id]).forEach(context => {
                const scores = cellEffectSizes[selectedCell.cell_id][context];
                if (scores.length > 0) {
                    // let markerScore = bootstrapPercentile(scores, numBootstrapSamples, 0.1);
                    let markerScore = median(scores);

                    if (Number.isFinite(markerScore)) {
                        if (!cellThresholdsLocal[selectedCell.cell_id][context]) {
                            cellThresholdsLocal[selectedCell.cell_id][context] = [];
                        }
                        cellThresholdsLocal[selectedCell.cell_id][context].push(markerScore);
                        effectSizes.push({ "cell_id": selectedCell.cell_id, "context": context, "markerScore": markerScore });
                    }
                }
            });
        });

        // if (final_calc_time > 3) {
        //     let second_calc_end = new Date().getTime();
        //     console.log("===> INFO: Calculated effectSizes in " + (second_calc_end - second_calc_start) + " Nanoseconds");
        // }
    }

    parentPort.postMessage({
        totalCellUpdate: totalCellValues,
        uniqueCellsUpdate: uniqueCellsLocal,
        uniqueTissueUpdate: uniqueTissueLocal,
        uniqueDiseaseUpdate: uniqueDiseaseLocal,
        cellThresholdsUpdate: cellThresholdsLocal,
        data: {
            inputFilePath: inputFilePath,
            expressions: expressions,
            //cells: shared_cells,
            //tissues: shared_tissues,
            effectSizes: effectSizes
        }
    }); 
}

// Receive the gene ID sent from the main thread
processGene(workerData.gene_id, workerData.cellLineages);
