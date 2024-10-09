var mongo = require('mongodb');
var beautify = require('xml-beautifier');

var fs = require('fs'),
    path = require('path')
    mkdirp = require('mkdirp'),
    help = require('../../lib/helpers');
    
var resolve = path.resolve;


const parseStringSync = require('xml2js-parser').parseStringSync;
    
/**
 * [parser description]
 * @param  {[type]}   options  [description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
var parser = function(options, callback) {
    var self = this;

    self.options = options;

    self.bulkCounter = 0;
    self.testCounter = 0;
    // One Item per call since its XML
    self.itemCounter = 0;
    // Bulk MongoDB APi placeholder
    if (self.options.type === 1) {
        // If we will insert in database this is only placeholder for initializeUnorderedBulkOp operations
        self.bulkQuery = null;
    } else if (self.options.type === 0) {
        // If we are inserting in file-system this will be array of objects
        self.bulkQuery = [];
    }
    // MongoDB Collection Placeholder
    self.collection = null;
    // MongoDB Database placeholder
    self.database = null;
    // MongoDB Connection Client
    self.client = null;

    // http://jsfiddle.net/byjvxexs/
    self.regex = {
        geneID: new RegExp('<xref id="([0-9]+)" db="NCBI GeneID"\\/>', "m"),
        immuneCellRNAExpression: new RegExp('<rnaExpression source="HPA" technology="RNAseq" assayType="immuneCell">(.*?)</rnaExpression>', "gs")
    }

    self.cItem = [];
    self.geneID = null; 

    if (self.options.insert === true && self.options.type === 1) {
        mongo.MongoClient.connect(self.options.dbPath, help.o.dbConnect, function(err, client) {

            if (self.options.debug === true) {
                console.log("\r\nMongoDB connected.");

                // let profileSavePath = resolve('./debugdump');
                // require('../../lib/cpu-profile.js').init(profileSavePath);
            } 

            if (err) {
                throw err;
            }

            self.client = client;
            
            self.database = self.client.db('genes');

            if (self.options.dropOnInit === true) {
                if (self.options.debug === true) console.log("\r\nDropping entire genes collection!");
                self.database.dropDatabase();
            }

            self.collection = self.database.collection('genes');
            self.bulkQuery = self.collection.initializeUnorderedBulkOp();

            return callback.call(self, true);
        });
    } else {
        return callback.call(self, true);
    }
};

parser.prototype.processLine = function(nodeXML, callback) {
    var self = this;
    var bulkInsert = false;

    // Do we have new Protein record? If yes reset our current Protein variable and add him to bulk query
    if (self.geneID !== null && typeof self.cItem[self.geneID] !== 'undefined') {

        if (self.options.insert === true && typeof self.cItem[self.geneID].mRNAExpressions !== 'undefined') {

            if (Array.isArray(self.cItem[self.geneID].mRNAExpressions.proteinAtlas) && 
                self.cItem[self.geneID].mRNAExpressions.proteinAtlas.length > 0) {

                self.bulkQuery
                    .find({
                        geneID: self.cItem[self.geneID].geneID,
                    })
                    .upsert() // Indicate that an insert should happen if the document doesn't exist.
                    .updateOne({
                        $set: { 
                            "mRNAExpressions.proteinAtlas": self.cItem[self.geneID].mRNAExpressions.proteinAtlas 
                        },
                    });

                if (self.options.debug === true) {
                    var last_test = self.cItem[self.geneID];
                }

                self.bulkCounter++; 
                self.itemCounter++;
            }


        }

        // Clear object reference
        delete self.cItem[self.geneID];

        // Insert records when limit is reached
        if (self.bulkCounter !== 0 && self.bulkCounter % self.options.perInsert === 0) {
            bulkInsert = true;

            self.bulkCounter = self.bulkCounter - self.options.perInsert;
            if (self.options.debug === true) {
                self.testCounter++;
                var last_counter = self.testCounter;
            }
            // Copy reference to temp var
            var bulkTemp = self.bulkQuery;
            // Re-initialize bulk query
            self.bulkQuery = self.collection.initializeUnorderedBulkOp();
            // Execute the operations
            bulkTemp.execute({
                w: 0
            }, function(err, result) {
                if (self.options.debug === true) {
                    console.log("-----> " + last_counter);
                    console.log(last_test);
                }
                // Just in case delete closure var
                bulkTemp = null;
                return callback({
                    type: 1,
                    count: self.options.perInsert
                });
            });
        }
    }

    // 1. Add nodeXML to current
    self.extractLineData(nodeXML);

    if (bulkInsert === false) {
        return callback({
            type: 2
        });
    } else {
        return callback({
            type: 3
        });
    }
};

parser.prototype.extractLineData = function(nodeXML) {
    var match = {
        geneID: null,
        mRNAExpressions: {},
    };

    match.geneID = this.regex.geneID.exec(nodeXML);
    this.regex.geneID.lastIndex = 0;

    if (match.geneID !== null && typeof match.geneID[1] !== 'undefined') {
        var geneID = match.geneID[1];
        if (geneID.length > 0) {
            geneID = parseInt(geneID);
            if (geneID !== this.geneID) {
                this.geneID = geneID;
                if (typeof this.cItem[geneID] !== 'object') {
                    this.cItem[geneID] = {};
                    this.cItem[geneID].geneID = geneID;
                    this.cItem[geneID].mRNAExpressions = {};
                    this.cItem[geneID].mRNAExpressions.proteinAtlas = [];
                }
            } else {
                return;
            }
        }
    } else {
        return;
    }

    // Extract the specific rnaExpression content using regular expressions
    this.regex.immuneCellRNAExpression.lastIndex = 0;
    match.rnaExpressionMatch = this.regex.immuneCellRNAExpression.exec(nodeXML);

    if (match.rnaExpressionMatch !== null && typeof match.rnaExpressionMatch[1] !== 'undefined') {
        const rnaExpressionContent = "<entry>" + match.rnaExpressionMatch[1] + "</entry>";

        let result;
        try {
            result = parseStringSync(rnaExpressionContent);
        } catch (err) {
            console.error('Error parsing XML:', err);
            console.log(rnaExpressionContent);

            process.exit(1);
        }

        if (result.entry?.rnaSpecificity) {
            const rnaSpecificityCells = result.entry.rnaSpecificity;

            rnaSpecificityCells.forEach(item => {
                item.immuneCell?.forEach(cell => {
                    this.cItem[this.geneID].mRNAExpressions.proteinAtlas.push({
                        l: cell?.$?.lineage ?? 'Unknown lineage',
                        c: cell?._?.trim() ?? 'Unknown cell',
                        e: null
                    });
                });
            });

            const rnaExpression = result.entry.data ?? [];
            this.cItem[this.geneID].mRNAExpressions.proteinAtlas.forEach(entry => {
                rnaExpression.forEach(dataBlock => {
                    const immuneCells = dataBlock.immuneCell ?? [];
                    immuneCells.forEach(immuneCell => {
                        const l = immuneCell.$?.lineage ?? '';
                        const c = immuneCell._ ?? '';

                        if (entry.l === l && entry.c.toLowerCase() === c.toLowerCase()) {
                            const level = dataBlock.level?.find(l => l.$?.type === 'normalizedRNAExpression') ?? null;

                            entry.e = level ? level.$?.expRNA ?? null : null;
                            if (entry.e !== null) {
                                entry.e = parseFloat(entry.e);
                            }
                        }
                    });
                });
            });
        }
    }

    this.cItem[this.geneID].mRNAExpressions.proteinAtlas = this.cItem[this.geneID].mRNAExpressions.proteinAtlas.filter(item => {
        return item.e !== null && typeof item.e === 'number';
    });

};


parser.prototype.processingEnd = function(callback) {
    var self = this;
    
    if (self.options.insert === true && self.bulkCounter > 0 && self.options.type === 1) {

        if (self.geneID !== null) {
            if(typeof self.cItem[self.geneID] === 'object'){
                self.bulkQuery
                    .find({
                        geneID: self.cItem[self.geneID].geneID,
                    })
                    .upsert() // Indicate that an insert should happen if the document doesn't exist.
                    .updateOne({
                        $set: { 
                            "mRNAExpressions.proteinAtlas": self.cItem[self.geneID].mRNAExpressions.proteinAtlas 
                        },
                    });
            }
        }

        // Execute the remaining bulk operations
        self.bulkQuery.execute({
            w: 0
        }, function(err, result) {
            self.bulkQuery = null;
            if (typeof self.createIndexies === 'undefined') {
                // Close database connection
                self.client.close(function(err, res) {
                    return callback({
                        type: 1,
                        count: self.bulkCounter
                    });
                });
            } else {
                return callback({
                    type: 1,
                    count: self.bulkCounter
                });
            }
        });

    } else if (self.options.insert !== true && self.database) {
        self.bulkQuery = null;
        // Only if insert into database is specified
        if (self.options.type === 1) {
            if (typeof self.createIndexies === 'undefined') {
                self.client.close(function(err, res) {
                    return callback({
                        type: 3,
                        count: 0
                    });
                });
            } else {
                return callback({
                    type: 3,
                    count: 0
                });
            }
        }
    } else {
        return callback({
            type: 3
        });
    }
};

parser.prototype.createIndexies = function (callback) {
    var self = this;

    var indexes = [
        // { key: { "mRNAExpressions.proteinAtlas.l": 1 }, background: false, name: "mRNAExpressionsProteinAtlasLineage_idx" },
        // { key: { "mRNAExpressions.proteinAtlas.c": 1 }, background: false, name: "mRNAExpressionsProteinAtlasCell_idx" },
        // { key: { "mRNAExpressions.proteinAtlas.e": 1 }, background: false, name: "mRNAExpressionsProteinAtlasExp_idx" },
        
        // New index for searching single-cell expressions by genes
        { key: { "tax.id": 1, "geneID": 1, "singleCellExpressions.effectSizes.c": 1 }, background: false, name: "taxID_geneID_singleCellExpression_idx" },
        { key: { "tax.id": 1, "symbol": 1, "singleCellExpressions.effectSizes.c": 1 }, background: false, name: "taxID_symbol_singleCellExpression_idx" },

        // New index for searching pathways and ontology by genes
        { key: { "tax.id": 1, "symbol": 1 }, background: false, name: "taxID_symbol_idx" },
        { key: { "tax.id": 1, "symbol": 1, "ontology.cat": 1 }, background: false, name: "taxID_symbol_ontology_idx" },

        { key: { "tax.id": 1, "geneID": 1 }, background: false, name: "taxID_geneID_idx" }, 
        { key: { "tax.id": 1, "geneID": 1, "ontology.cat": 1 }, background: false, name: "taxID_geneID_ontology_idx" },

        { key: { "tax.id": 1, "crossReference.enseGeneID": 1 }, background: false, name: "taxID_ensemblGeneID_idx" },
        { key: { "tax.id": 1, "crossReference.enseGeneID": 1, "ontology.cat": 1 }, background: false, name: "taxID_ensemblGeneID_ontology_idx" } 
    ];

    self.collection.createIndexes(indexes, function (err, indexName) {
        if (err) {
            console.log("\r\nERROR Creating indexes");
            console.log(err);
        }

        console.log("=> Indexes created");

        self.client.close(function (err, res) {
            return callback();
        });
    });
};

parser.prototype.isNumber = function(v) {
    if (v === "" || v === null) {
        return null;
    } else if (isNaN(v)) {
        return null;
    } else {
        return v;
    }
};

module.exports = parser;
