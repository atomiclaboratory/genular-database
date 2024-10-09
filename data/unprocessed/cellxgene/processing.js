import { Worker } from 'worker_threads';
import * as fs from "fs/promises";
import * as path from "path";
import * as os from "os";
import { promisify } from "util";

import { combineJsonFiles, mean, standardDeviation } from './includes/functions.js';

const writeFileAsync = promisify(fs.writeFile);

async function readGeneKeysFromDirectory(dir) {
    let geneKeys = [];
    const filesAndDirectories = await fs.readdir(dir, { withFileTypes: true });

    for (let f of filesAndDirectories) {
        const fullPath = path.join(dir, f.name);
        if (f.isDirectory()) {
            geneKeys = geneKeys.concat(await readGeneKeysFromDirectory(fullPath));
        } else if (f.isFile() && f.name.endsWith('.original.json')) {
            geneKeys.push(f.name.split('.')[0]);
        }
    }

    return geneKeys;
}


async function main() {
    const startTime = Date.now(); // Start timing

    const allGeneKeys = await readGeneKeysFromDirectory('./output/genes');
    const numWorkers = os.cpus().length - 2;
    let currentGeneIndex = 0;

    // Initialize workers up to the maximum concurrency limit
    const workerPromises = [];

    console.log(`Processing ${allGeneKeys.length} genes using ${numWorkers} workers...`);

    let uniqueCells = {};
    let uniqueTissue = {};
    let uniqueDisease = {};
    let cellThresholds = {};

    let processedGenes = 0;
    let processedCells = 0;

    let cellLineages = await fs.readFile('./output/data.cellLineages.json', 'utf8');
    cellLineages = JSON.parse(cellLineages);

    const spawnWorker = (geneIndex) => {

        let geneID = allGeneKeys[geneIndex];
        // check if  allGeneKeys[geneIndex] is undefined
        if (!geneID) {
            return Promise.resolve();
        }
        
        const worker = new Worker('./processing.worker.js', {
            workerData: {
                gene_id: geneID,
                cellLineages: cellLineages
            },
        });

        return new Promise((resolve, reject) => {
            worker.on('message', async (msg) => {

                Object.assign(uniqueCells, msg.uniqueCellsUpdate);
                Object.assign(uniqueTissue, msg.uniqueTissueUpdate);
                Object.assign(uniqueDisease, msg.uniqueDiseaseUpdate);

                for (const [cellId, data] of Object.entries(msg.cellThresholdsUpdate)) {
                    if (!cellThresholds[cellId]) {
                        cellThresholds[cellId] = data;
                    } else {
                        for (const [context, scores] of Object.entries(data)) {
                            if (!cellThresholds[cellId][context]) {
                                cellThresholds[cellId][context] = scores;
                            } else {
                                cellThresholds[cellId][context].push(...scores);
                            }
                        }
                    }
                }
                processedCells += msg.totalCellUpdate;
                processedGenes += 1;

                // Log every 1000 processed genes
                if (processedGenes % 1000 === 0) {
                    console.log(`==> Processed ${processedGenes} out of ${allGeneKeys.length} genes.`);
                }

                try { 
                    await fs.writeFile(msg.data.inputFilePath.replace("original", "final"), JSON.stringify({
                        expressions: msg.data.expressions,
                        //cells: msg.data.shared_cells,
                        //tissues: msg.data.shared_tissues,
                        effectSizes: msg.data.effectSizes
                    }, null, '\t'));

                    if (currentGeneIndex < allGeneKeys.length) {
                        // Spawn a new worker for the next gene
                        currentGeneIndex = currentGeneIndex + 1;
                        workerPromises.push(spawnWorker(currentGeneIndex));  // Push the next worker without resolving it here
                        resolve();  // Resolve the current promise without any value
                    } else {
                        resolve();
                    }
                } catch (error) {
                    console.error("Error during file write:", error);
                    reject(error);
                }
            });

            worker.on('error', (err) => {
                console.error("Worker Error:", err);
                reject(err);
            });

            worker.on('exit', (code) => {
                if (code !== 0) {
                    console.error(`Worker stopped with exit code ${code}`);
                    reject(new Error(`Worker stopped with exit code ${code}`));
                }
            });
        });
    };

    for (let i = 0; i < numWorkers && i < allGeneKeys.length; i++) {
        currentGeneIndex = i;
        workerPromises.push(spawnWorker(i));
    }

    try {
        await Promise.all(workerPromises);

        console.log('All initial workers have completed their tasks. Waiting for all others..');


        // wait until currentGeneIndex is equal to allGeneKeys.length and than process the uniqueCells, uniqueTissue, uniqueDisease, and cellThresholds
        while (currentGeneIndex < allGeneKeys.length) {
            await new Promise((resolve) => {
                setTimeout(resolve, 10000);
            });
        }

        // Now you can process the uniqueCells, uniqueTissue, uniqueDisease, and cellThresholds
        const uniqueCellsArray = Object.keys(uniqueCells);
        uniqueCells = {};

        const uniqueTissueArray = Object.keys(uniqueTissue);
        uniqueTissue = {};

        const uniqueDiseaseArray = Object.keys(uniqueDisease);
        uniqueDisease = {};

        console.log("STAT: Cells:", uniqueCellsArray.length, "Tissues:", uniqueTissueArray.length, "Diseases:", uniqueDiseaseArray.length);

        // Process the cellThresholds as you did before
        Object.keys(cellThresholds).forEach(cell_id => {
            let thresholdsPerContext = {};
            Object.keys(cellThresholds[cell_id]).forEach(context => {
                const scores = cellThresholds[cell_id][context];
                if (scores.length > 0) {
                    // Calculate the threshold based on your chosen statistical method
                    const meanScore = mean(scores);
                    const stdDevScore = standardDeviation(scores, meanScore);
                    thresholdsPerContext[context] = meanScore + stdDevScore;
                } else {
                    delete cellThresholds[cell_id][context];
                }
            });
            cellThresholds[cell_id] = thresholdsPerContext;
        });

        const unique_stats = {
            processedGenes: processedGenes,
            processedCells: processedCells,
            relevantScoreThreshold: cellThresholds,
            cells: uniqueCellsArray,
            tissue: uniqueTissueArray,
            disease: uniqueDiseaseArray
        };

        await fs.writeFile('./output/data.cells.json', JSON.stringify(unique_stats, null, 2));
        console.log('Data successfully saved to ./output/data.cells.json');

        // Once all the files are written and the aggregated data is saved, combine the JSON files.
        await combineJsonFiles('output/genes', 'output/data.processed.json');
        console.log('===> DONE - Data saved to ./output/data.processed.json (All JSON files have been combined)');

        const endTime = Date.now(); // End timing
        const processingTimeSeconds = (endTime - startTime) / 1000;
        console.log(`Total processing time: ${processingTimeSeconds} seconds`);

    } catch (error) {
        console.error("An error occurred during processing:", error);
    }
}

main().then(() => {
    console.log('Processing completed.');
});
