var mongo = require('mongodb');
var fs = require('fs'),
    path = require('path'),
    mkdirp = require('mkdirp'),
    help = require('../../lib/helpers'),
    resolve = require('path').resolve;

/**
 * [parser description]
 * @param  {[type]}   options  [description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
var parser = function(options, callback) {
    "use strict";
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

    // Save current gene and add him to bulk after
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

            // Clear collection and create Indexes
            if (self.options.dropOnInit === true) {
                if (self.options.debug === true) console.log("\r\nDropping entire genes collection!");

                self.database.dropDatabase();

                // Create genes collection and preallocate 30GB os hdd space
                // Don t index default _id field
                self.database.createCollection('genes', {
                    autoIndexId: false
                }, function(err, collection) {
                    if (err) {
                        throw err;
                    }

                    self.collection = collection;
                    self.bulkQuery = self.collection.initializeUnorderedBulkOp();

                    return callback.call(self, true);

                });
            } else {
                self.collection = self.database.collection('genes');
                self.bulkQuery = self.collection.initializeUnorderedBulkOp();
                return callback.call(self, true);
            }
        });
    } else {
        return callback.call(self, true);
    }
};

/**
 * [processLine description]
 * @param  {[type]}   line     [description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
parser.prototype.processLine = function(line, callback) {
    var self = this;
    var bulkInsert = false;

    var lineDelimited = line.split('\t');
    // Check if line is Valid for current parser
    if (lineDelimited.length === 16) {

        let geneID = self.isNumber(lineDelimited[1]);

        // Do we have new gene record if yes reset our current gene variable
        if (self.geneID !== null && self.geneID !== geneID) {

            if (self.options.insert === true) {
                // Direct database insert
                if (self.options.type === 1) {
                    self.bulkQuery.insert(self.cItem[self.geneID]);
                    // File-system insert
                } else if (self.options.type === 0) {
                    self.bulkQuery.push(self.cItem[self.geneID]);
                }

                if (self.options.debug === true) {
                    var last_test = self.cItem[self.geneID];
                }

                self.bulkCounter++;
                self.itemCounter++;
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

                // Bulk Database Insert
                if (self.options.type === 1) {
                    // Re-initialize bulk query
                    self.bulkQuery = self.collection.initializeUnorderedBulkOp();
                    // Execute the operations
                    bulkTemp.execute({
                        w: 1
                    }, function(err, result) {
                        if (err) {
                            console.log(err);
                        }
                        if (self.options.debug === true) {
                            console.log(last_test);
                        }
                        // Just in case delete closure var
                        bulkTemp = null;
                        return callback({
                            type: 1,
                            count: self.options.perInsert
                        });
                    });
                    // Bulk File-system insert
                } else if (self.options.type === 0) {
                    self.processBulk(bulkTemp, function() {
                        if (self.options.debug === true) {
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
        }
        if (geneID !== null) {
            // 1. Add gene to current item
            self.extractLineData(lineDelimited, geneID);
        }
        if (bulkInsert === false) {
            return callback({
                type: 2,
                count: 0
            });
        }
    } else {
        return callback({
            type: 3,
            count: 0
        });
    }
};
/**
 * [extractLineData description]
 * @param  {[type]} line   [description]
 * @param  {[type]} geneID [description]
 * @return {[type]}        [description]
 */
parser.prototype.extractLineData = function(line, geneID) {

    // 1   GeneID
    if (geneID !== this.geneID) {
        this.geneID = geneID;
        if (typeof this.cItem[geneID] !== 'object') {
            this.cItem[geneID] = new Object();
            this.cItem[geneID].geneID = geneID;
        }
    } else {
        return;
    }

    var c = this.cItem[this.geneID];
    var intCheck;

    // 0   tax_id
    if (help.f.removeCommonDB(line[0]) !== null) {
        intCheck = this.isNumber(line[0]);

        if (typeof this.cItem[this.geneID].tax !== 'object') {
            this.cItem[this.geneID].tax = {};
            c.tax = {};
        }

        if (intCheck !== null) {
            if (typeof c.tax.id === 'undefined' || c.tax.id === null) {
                this.cItem[this.geneID].tax.id = intCheck;
            }
        }
    }

    // 2   status 
    // CHECK FOR EMPTY (cross reference)
    if (help.f.removeCommonDB(line[2]) !== null) {
        if (typeof c.geneStatus === 'undefined') {
            
            var index = help.f.indexOf(['INFERRED', 'MODEL', 'NA', 'PREDICTED', 'PROVISIONAL', 'REVIEWED', 'SUPPRESSED', 'VALIDATED'], line[2]);

            // Insert only if found
            if (index !== -1) {
                this.cItem[this.geneID].geneStatus = index;
            }
        }
    }

    // 3   RNA_nucleotide_accession.version
    if (help.f.removeCommonDB(line[3]) !== null) {
        if (typeof c.accession === 'undefined' || typeof c.accession !== 'object') {
            this.cItem[this.geneID].accession = {};
            c.accession = {};
        }
        if (typeof c.accession === 'undefined' || typeof c.accession.rna === 'undefined') {
            this.cItem[this.geneID].accession.rna = line[3].trim();
        }
    }

    // 5   protein_accession.version | cross reference - ARRAY
    // http://edamontology.org/data_1098
    // <regex>(NC|AC|NG|NT|NW|NZ|NM|NR|XM|XR|NP|AP|XP|YP|ZP)_[0-9]+</regex>
    // Current

    // <regex>[A-NR-Z][0-9][A-Z][A-Z0-9][A-Z0-9][0-9]|[OPQ][0-9][A-Z0-9][A-Z0-9][A-Z0-9][0-9]|[A-NR-Z][0-9][A-Z][A-Z0-9][A-Z0-9][0-9].[0-9]+|[OPQ][0-9][A-Z0-9][A-Z0-9][A-Z0-9][0-9].[0-9]+|[A-NR-Z][0-9][A-Z][A-Z0-9][A-Z0-9][0-9]-[0-9]+|[OPQ][0-9][A-Z0-9][A-Z0-9][A-Z0-9][0-9]-[0-9]+</:regex>
    // deprecated true, Example  Q7M1G0|P43353-2|P01012.107
    if (help.f.removeCommonDB(line[5]) !== null) {
        if (typeof c.accession === 'undefined' || typeof c.accession !== 'object') {
            this.cItem[this.geneID].accession = {};
            c.accession = {};
        }
        this.cItem[this.geneID].accession.protein = this.matchArrayItems(line[5], c.accession.protein);
    }

    // 7   genomic_nucleotide_accession.version | cross reference - ARRAY
    if (help.f.removeCommonDB(line[7]) !== null) {
        if (typeof c.accession === 'undefined' || typeof c.accession !== 'object') {
            this.cItem[this.geneID].accession = {};
            c.accession = {};
        }
        this.cItem[this.geneID].accession.gene = this.matchArrayItems(line[7], c.accession.gene);
    }
    // 9   start_position_on_the_genomic_accession 
    // CHECK FOR EMPTY (cross reference)
    if (help.f.removeCommonDB(line[9]) !== null) {
        intCheck = this.isNumber(line[9]);
        if (intCheck !== null) {
            if (typeof this.cItem[this.geneID].genePos !== 'object') {
                this.cItem[this.geneID].genePos = {};
                c.genePos = {};
            }
            if (typeof c.genePos.start === 'undefined' || c.genePos.start === null) {
                this.cItem[this.geneID].genePos.start = intCheck + 1;
            }
        }
    }
    // 10  end_position_on_the_genomic_accession 
    // CHECK FOR EMPTY (cross reference)
    if (help.f.removeCommonDB(line[10]) !== null) {
        intCheck = this.isNumber(line[10]);
        if (intCheck !== null) {
            if (typeof this.cItem[this.geneID].genePos !== 'object') {
                this.cItem[this.geneID].genePos = {};
                c.genePos = {};
            }
            if (typeof c.genePos.end === 'undefined' || c.genePos.end === null) {
                this.cItem[this.geneID].genePos.end = intCheck + 1;
            }
        }

    }
    // 11  orientation + || -
    if (line[11] !== '?') {
        if (typeof c.orientation === 'undefined') {
            // Default value
            var value = 2;
            // Convert strings to integers
            if (line[11] === '+') {
                value = true;
            } else if (line[11] === '-') {
                value = false;
            }
            this.cItem[this.geneID].orientation = value;
        }
    }

    // 13  mature_peptide_accession.version
    if (help.f.removeCommonDB(line[13]) !== null) {
        if (typeof c.accession === 'undefined' || typeof c.accession !== 'object') {
            this.cItem[this.geneID].accession = {};
            c.accession = {};
        }
        if (typeof c.accession === 'undefined' || typeof c.accession.peptide === 'undefined') {
            this.cItem[this.geneID].accession.peptide = line[13].trim();
        }
    }

    // 15  Symbol -- array ??
    if (help.f.removeCommonDB(line[15]) !== null) {
        if (typeof c.symbol === 'undefined') {
            this.cItem[this.geneID].symbol = line[15].replace(/\W+/g, " ");
        }
    }

    this.cItem[this.geneID].created =  (typeof c.created === "undefined" ? new Date() : c.created);

    // 4   RNA_nucleotide_gi                        
    // 6   protein_gi                        
    // 8   genomic_nucleotide_gi                      
    // 12  assembly                        
    // 14  mature_peptide_gi
};

/**
 * [processingEnd description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
parser.prototype.processingEnd = function(callback) {
    var self = this;

    if (self.options.insert === true && self.bulkCounter > 0 && self.options.type === 1) {
        if (self.geneID !== null) {
            if(typeof self.cItem[self.geneID] === 'object'){
                self.bulkQuery.insert(self.cItem[self.geneID]);
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
            type: 3,
            count: 0
        });
    }
};
/**
 * [createIndexies description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
parser.prototype.createIndexies = function(callback) {
    var self = this;

    // create an array of index specifications

    var indexes = [
        { key: { "geneID": 1 }, background: false, unique: true, name: "geneID_idx" },
        { key: { "symbol": 1 }, background: false, name: "symbol_idx" },
        { key: { "tax.id": 1 }, background: false, name: "taxID_idx" }
        // { key: { "tax.name.name": 1 }, background: false, name: "taxName_idx" },
        // { key: { "genePos.start": 1, "genePos.end": 1 }, background: false, name: "genePos_idx" }
    ];

    self.collection.createIndexes(indexes, function(err, indexName) {
        if (err) {
            console.log('\r\nERROR Creating indexes');
            console.log(err)
        }

        console.log('=> Indexes created');

        self.client.close(function(err, res) {
            return callback();
        });
    });
};

/**
 * [processBulk description]
 * @param  {[type]}   items    [description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
parser.prototype.processBulk = function(items, callback) {
    var self = this;
    var l = items.length;

    while (l--) {
        self.bulkWriteAsync(items[l]);
    }

    return callback();
};

/**
 * [bulkWriteAsync description]
 * @param  {[type]} item [description]
 * @return {[type]}      [description]
 */
parser.prototype.bulkWriteAsync = function(item) {

    var data = JSON.stringify(item);
    // Relative item folder
    var pathRel = "";
    var geneID = item.geneID.toString();

    geneID.split("").forEach(function(res) {
        pathRel += res + "/";
    });

    var fullpath = this.options.fsPath + "/" + pathRel + geneID;

    mkdirp(path.dirname(fullpath), function(err) {
        if (err) console.log(err);
        fs.writeFile(fullpath, data, function(err) {
            if (err) console.log(err);
        });
    });
};

/**
 * [isNumber description]
 * @param  {[type]}  v [description]
 * @return {Boolean}   [description]
 */
parser.prototype.isNumber = function(v) {
    if (v === "" || v === null) {
        return null;
    } else if (isNaN(v)) {
        return null;
    } else {
        return help.f.parseInt(v);
    }
};

/**
 * [matchArrayItems description]
 * @param  {[type]} str   [description]
 * @param  {[type]} array [description]
 * @return {[type]}       [description]
 */
parser.prototype.matchArrayItems = function(str, array) {
    if (typeof array === 'undefined') {
        array = new Array();
        array.push(str);
    } else {
        if (help.f.indexOf(array, str) > -1) {
            return array;
        } else {
            array.push(str);

        }
    }
    return array;
};


module.exports = parser;
