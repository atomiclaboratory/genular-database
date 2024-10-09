// Require necessary Node.js modules
const fs = require("fs");
const path = require("path");

/**
 * Parses a file into a 2D array based on a given delimiter.
 * @param {string} filePath - The path of the file to be parsed.
 * @param {string} delimiter - The delimiter used for splitting the data. Defaults to a tab character.
 * @returns {Array<Array<string>>} A 2D array of the file's contents.
 */
const parseFile = (filePath, delimiter = "\t") => {
    // console.log(`Parsing file: ${filePath} with delimiter: '${delimiter}'`);
    return fs
        .readFileSync(filePath, "utf8")
        .trim()
        .split("\n")
        .map((line) => line.split(delimiter));
};

/**
 * Builds a hierarchy object from an array of parent-child relations.
 * @param {Array<Array<string>>} relations - An array of parent-child relation pairs.
 * @returns {Object} An object representing the hierarchy.
 */
const buildHierarchy = (relations) => {
    // console.log(`Building hierarchy from relations`);
    let hierarchy = {};

    relations.forEach(([parent, child]) => {
        if (!hierarchy[parent]) {
            hierarchy[parent] = { children: new Set() };
        }
        if (!hierarchy[child]) {
            hierarchy[child] = { children: new Set() };
        }
        hierarchy[parent].children.add(child);
    });

    return hierarchy;
};

/**
 * Assigns levels to each node in the hierarchy recursively.
 * @param {Object} hierarchy - The hierarchy object.
 * @param {string} nodeId - The current node ID being processed.
 * @param {number} level - The current level of hierarchy. Defaults to 0 for the root.
 */
const assignLevels = (hierarchy, nodeId, level = 0) => {
    // console.log(`Assigning level: ${level} to node: ${nodeId}`);
    hierarchy[nodeId].level = level;
    hierarchy[nodeId].children.forEach((childId) => {
        if (!hierarchy[childId].level || hierarchy[childId].level < level + 1) {
            assignLevels(hierarchy, childId, level + 1);
        }
    });
};

// Define file paths using the path module
const ensembl2ReactomePath = path.join("Ensembl2Reactome_All_Levels.txt");
const reactomeRelationsPath = path.join("ReactomePathwaysRelation.txt");
const outputPath = path.join("ReactomePathwaysRelation_With_Hierarchy.txt");
const importPathwaysOutputPath = path.join("import_reactomePathways.json");



// Parse the input files to process them
const ensembl2Reactome = parseFile(ensembl2ReactomePath);
const reactomeRelations = parseFile(reactomeRelationsPath);

let reactomePathwayIds = new Set(ensembl2Reactome.map((line) => line[1]));
let hierarchy = buildHierarchy(reactomeRelations);

// Assign levels to nodes in the hierarchy if they haven't been assigned yet
Object.keys(hierarchy).forEach((nodeId) => {
    if (!hierarchy[nodeId].level) {
        assignLevels(hierarchy, nodeId);
    }
});

console.log(`1/3 - Number of Reactome pathways with hierarchy assigned: ${Object.keys(hierarchy).length}`);
// Prepare the data to be written to the new file
let outputData = ensembl2Reactome
    .map((line) => {
        const pathwayId = line[1];
        return [...line, hierarchy[pathwayId] ? hierarchy[pathwayId].level : "N/A"].join("\t");
    })
    .join("\n");

// Write the output data to a new file
fs.writeFileSync(outputPath, outputData);

console.log('2/3 - Processed data has been written to ReactomePathwaysRelation_With_Hierarchy.txt');
// Create a lookup object for ensembl2Reactome for faster access
const ensembl2ReactomeMap = ensembl2Reactome.reduce((acc, line) => {
    const pathwayId = line[1];
    acc[pathwayId] = line;
    return acc;
}, {});

// Prepare and write the data for import_reactomePathways.json
let pathwaysData = Object.keys(hierarchy).map(nodeId => {
    const line = ensembl2ReactomeMap[nodeId];
    return {
        id: nodeId,
        term: line ? line[3] : 'Unknown Term',
        level: hierarchy[nodeId].level || 'N/A'
    };
});

console.log(`2/3.1 - Number of Reactome pathways with hierarchy assigned: ${pathwaysData.length}`);
let pathwaysJSON = JSON.stringify([{ type: "reactomePathways", pathways: pathwaysData }], null, 2);

// Write to import_reactomePathways.json
fs.writeFileSync(importPathwaysOutputPath, pathwaysJSON);
console.log('3/3 - Processed data has been written to import_reactomePathways.json');
