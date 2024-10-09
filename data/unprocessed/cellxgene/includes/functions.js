import fs from 'fs';
import path from 'path';
import { promisify } from 'util';

export async function combineJsonFiles(baseDir, outputFilePath) {
    const readFileAsync = promisify(fs.readFile);
    const fileWriteStream = fs.createWriteStream(outputFilePath);
    
    fileWriteStream.write("{"); // Start of JSON object

    let isFirstFile = true;

    async function processDirectory(dir) {
        const files = fs.readdirSync(dir, { withFileTypes: true });
        for (const file of files) {
            const fullPath = path.join(dir, file.name);
            if (file.isDirectory()) {
                await processDirectory(fullPath);
            } else if (file.isFile() && path.extname(file.name) === '.json' && file.name.includes('final')) {
                if (!isFirstFile) {
                    fileWriteStream.write(',');
                }
                isFirstFile = false;

                let filenameWithoutExt = path.basename(file.name, '.json');
                filenameWithoutExt = filenameWithoutExt.replace('.final', '');

                const fileContent = await readFileAsync(fullPath, 'utf8');

                const jsonContent = `\n\t"${filenameWithoutExt}":${fileContent}`;
                fileWriteStream.write(jsonContent);
            }
        }
    }

    await processDirectory(baseDir);

    fileWriteStream.write("}"); // End of JSON object
    fileWriteStream.end();
}


// Function to return the x-th percentile of an array
export function getPercentile(arr, p) {
    // Convert the array to a typed array for efficient sorting
    const typedArray = Float64Array.from(arr);
    typedArray.sort();

    const index = (typedArray.length - 1) * p;
    const lowerIndex = Math.floor(index);
    const upperIndex = Math.ceil(index);

    if (lowerIndex === upperIndex) {
        return typedArray[index];
    } else {
        return (typedArray[lowerIndex] + typedArray[upperIndex]) / 2;
    }
}


// Creates several bootstrap samples of the effect sizes data, 
// computes the 10th percentile for each sample, and then averages these percentiles to get 
// a more robust estimate of the marker score.
export function bootstrapPercentile(data, numBootstrapSamples, percentile) {
    let bootstrapPercentiles = [];

    for (let i = 0; i < numBootstrapSamples; i++) {
        let bootstrapSample = [];
        for (let j = 0; j < data.length; j++) {
            let randomIndex = Math.floor(Math.random() * data.length);
            bootstrapSample.push(data[randomIndex]);
        }
        // const k = Math.floor(percentile * bootstrapSample.length);
        // let percentileValue = quickSelect(bootstrapSample, 0, bootstrapSample.length - 1, k);
        let percentileValue = getPercentile(bootstrapSample, percentile);
        bootstrapPercentiles.push(percentileValue);
    }

    return bootstrapPercentiles.reduce((a, b) => a + b, 0) / numBootstrapSamples;
}


// Function to calculate the median of an array
export function median(arr) {
    // Convert to a typed array for efficient sorting
    const typedArray = Float64Array.from(arr);
    typedArray.sort();

    const mid = Math.floor(typedArray.length / 2);

    return typedArray.length % 2 !== 0 
        ? typedArray[mid] 
        : (typedArray[mid - 1] + typedArray[mid]) / 2;
}


// Function to calculate median absolute deviation
export function medianAbsoluteDeviation(arr, medianValue) {
    const deviations = arr.map((value) => Math.abs(value - medianValue));
    return median(deviations);
}

// Function to standardize data values for the cells
export function standardizeValues(cellValues) {
    const skewnessValue = skewness(cellValues);

    if (Math.abs(skewnessValue) < 0.5) {
        //console.log('The data is approximately symmetric. Using mean and standard deviation: ' + skewnessValue);
        return standardizeUsingMeanStdDev(cellValues);
    } else {
        //console.log('The data is skewed. Using median and MAD: ' + skewnessValue);
        return standardizeUsingMedianMAD(cellValues);
    }
}

// Function to standardize data values using mean and standard deviation
export function standardizeUsingMeanStdDev(cellValues) {
    const meanValue = mean(cellValues);
    const stdDev = standardDeviation(cellValues, meanValue);
    const epsilon = 1e-8; // Add a small constant to avoid division by zero

    const standardizedData = cellValues.map((value) => {
        const standardizedValue = (value - meanValue) / (stdDev + epsilon);
        return Number.parseFloat(standardizedValue);
    });

    return standardizedData;
}

// Function to standardize data values using median and MAD
export function standardizeUsingMedianMAD(cellValues) {
    const medianValue = median(cellValues);
    const mad = medianAbsoluteDeviation(cellValues, medianValue);
    const epsilon = 1e-8; // Add a small constant to avoid division by zero

    const standardizedData = cellValues.map((value) => {
        const standardizedValue = (value - medianValue) / (mad + epsilon);
        return Number.parseFloat(standardizedValue);
    });

    return standardizedData;
}

// Function to calculate the mean/average value of an array 
export function mean(arr) {
    return arr.reduce((acc, value) => acc + value, 0) / arr.length;
}

// Function to calculate the standard deviation of an array 
export function standardDeviation(arr, meanValue) {
    if (arr.length === 0 || typeof meanValue !== 'number') {
        return NaN; // or return 0, or any other appropriate value
    }

    const variance = arr.reduce((acc, value) => {
        return typeof value === 'number' ? acc + (value - meanValue) ** 2 : acc;
    }, 0) / arr.length;

    return Math.sqrt(variance);
}


// Function to calculate the skewness of the dataset
export function skewness(arr) {
    const n = arr.length;
    const meanValue = mean(arr);
    const stdDev = standardDeviation(arr, meanValue);

    if (stdDev === 0) {
        return 0;
    }

    const sumCubedDeviations = arr.reduce((acc, value) => acc + ((value - meanValue) / stdDev) ** 3, 0);

    return (n / ((n - 1) * (n - 2))) * sumCubedDeviations;
}

// Function to reduce an array to one element if all elements are identical
export function reduceIfIdentical(arr) {
    const firstValue = arr[0];
    const allIdentical = arr.every((value) => value === firstValue);

    return allIdentical ? [firstValue] : arr;
}

// Safely accessing nested properties
export function getNestedValue(obj, path, defaultValue) {
    return path.reduce((acc, key) => {
        if (acc !== null && typeof acc === 'object' && key in acc) {
            return acc[key];
        } else {
            return defaultValue;
        }
    }, obj);
}

export function saveGeneData(geneId, geneData, outputBasePath = "output/genes", write = true, cache = true, append = "original") {
    // Function to split the geneId into three parts
    function splitGeneId(id) {
        const partLength = Math.ceil(id.length / 3);
        const parts = [id.slice(0, partLength), id.slice(partLength, 2 * partLength), id.slice(2 * partLength)];

        // Pad the parts array to ensure it always has 3 elements
        while (parts.length < 3) {
            parts.push('00000');
        }

        return parts;
    }

    const parts = splitGeneId(geneId);
    const subDirPath = path.join(outputBasePath, ...parts);
    const filePath = path.join(subDirPath, `${geneId}.${append}.json`);

    if(write === true){
        // Create directories if they do not exist
        fs.mkdirSync(subDirPath, { recursive: true });

        if(cache === true){
            // Write a file only if does not exist already
            if (!fs.existsSync(filePath)) {
                try {
                    fs.writeFileSync(filePath, JSON.stringify(geneData, null, 2));
                } catch (err) {
                    console.error('===> ERROR: Saving gene data:', err);
                    return null;
                }
            }
        }else{
            try {
                fs.writeFileSync(filePath, JSON.stringify(geneData, null, 2));
            } catch (err) {
                console.error('===> ERROR: Saving gene data:', err);
                return null;
            }
        }
    }

    return filePath;
}


export function alignAndBinData(data1, data2, numberOfBins) {
    // Determine the global min and max
    const allData = data1.concat(data2);
    const min = Math.min(...allData);
    const max = Math.max(...allData);

    // Re-bin both datasets with the global min and max
    const binnedData1 = binData(data1, numberOfBins, min, max);
    const binnedData2 = binData(data2, numberOfBins, min, max);

    return [binnedData1, binnedData2];
}

export function binData(data, numberOfBins, min, max) {
    const binSize = (max - min) / numberOfBins;
    let binnedData = new Array(numberOfBins).fill(0);

    data.forEach(value => {
        const binIndex = Math.min(
            numberOfBins - 1, 
            Math.floor((value - min) / binSize)
        );
        binnedData[binIndex]++;
    });

    return binnedData;
}

export function createContingencyTable(data1, data2) {
    let table = [];
    for (let i = 0; i < data1.length; i++) {
        table.push([data1[i], data2[i]]);
    }
    return table;
}

export function calculateNumberOfBinsRiceRule(dataPoints) {
    return Math.ceil(2 * Math.pow(dataPoints.length, 1/3));
}


