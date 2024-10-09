var mongo = require('mongodb');
var fs = require('fs'),
    path = require('path')
mkdirp = require('mkdirp'),
    help = require('../../lib/helpers');

var resolve = path.resolve;

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

    // Save current gene and add him to bulk after
    self.cItem = {
        protein: {}
    };
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
            self.collection = self.database.collection('genes');

            self.bulkQuery = self.collection.initializeUnorderedBulkOp();

            return callback.call(self, true);
        });
    } else {
        return callback.call(self, true);
    }

};

parser.prototype.processLine = function(line, callback) {
    var self = this;
    var bulkInsert = false;

    var lineDelimited = line.split('\t');

    // Check if line is Valid for current parser
    if (lineDelimited.length === 22) {
        // Do we have new Protein record? If yes reset our current Protein variable and add him to bulk query
        if (typeof self.cItem.protein.accession !== 'undefined') {

            if (self.options.insert === true && (typeof self.cItem.protein.pdbID !== 'undefined' || typeof self.cItem.protein.goID !== 'undefined' || typeof self.cItem.protein.unigeneID !== 'undefined')) {
                self.bulkQuery.find({
                    "protein.accession": self.cItem.protein.accession
                }).update({
                    protein: {
                        $elemMatch: {
                            accession: self.cItem.protein.accession
                        }
                    }
                }, {
                    $set: {
                        "protein.$": self.cItem.protein
                    }
                }, true);
                if (self.options.debug === true) {
                    var last_test = self.cItem;
                }
                self.bulkCounter++;
                self.itemCounter++;
            }
            // Clear object reference
            self.cItem = {
                protein: {}
            };
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
        // 1. Add gene to current
        self.extractLineData(lineDelimited);

        if (bulkInsert === false) {
            return callback({
                type: 2
            });
        }
    } else {
        return callback({
            type: 3
        });
    }
};

parser.prototype.extractLineData = function(line) {
    var c = this.cItem;
    var value = null;

    // 0. UniProtKB-AC
    if (line[0].length > 1) {
        if (typeof c.protein.accession === 'undefined' || c.protein.accession === null) {
            this.cItem.protein.accession = line[0];
        }
    }

    // 5. PDB [ARRAY]
    if (line[5].length > 0) {
        var items = line[5].split(";");
        var itemsArray = [];
        if (items.length > 0) {
            for (var i = 0; i < items.length; i++) {
                var currItem = items[i].trim();
                if (currItem.length > 0) {
                    itemsArray.push(currItem);
                }
            };
            if (itemsArray.length > 0) {
                this.cItem.protein.pdbID = itemsArray;
            }
        } else if (items === 1) {
            this.cItem.protein.pdbID = line[5];
        }
    }


    // 6. GO [ARRAY]
    if (line[6].length > 0) {
        var items = line[6].split(";");
        var itemsArray = [];
        if (items.length > 0) {
            for (var i = 0; i < items.length; i++) {
                var currItem = items[i].trim().replace("GO:", "");

                if (currItem.length > 0) {
                    itemsArray.push(currItem);
                }
            };
            if (itemsArray.length > 0) {
                this.cItem.protein.goID = itemsArray;
            }
        } else if (items === 1) {
            this.cItem.protein.goID = line[6].trim().replace("GO:", "");
        }
    }

    // 7. UniRef100 
    if (line[7].length > 0) {
        if (typeof this.cItem.protein.refSeq === 'undefined') {
            this.cItem.protein.refSeq = {};
        }
        if (typeof this.cItem.protein.refSeq.s100 === 'undefined' || this.cItem.protein.refSeq.s100 === null) {
            // UniRef100_Q43495
            this.cItem.protein.refSeq.s100 = line[7].replace("UniRef100_", "");
        }
    }
    // 8. UniRef90
    if (line[8].length > 0) {
        if (typeof this.cItem.protein.refSeq === 'undefined') {
            this.cItem.protein.refSeq = {};
        }
        if (typeof this.cItem.protein.refSeq.s90 === 'undefined' || this.cItem.protein.refSeq.s90 === null) {
            // UniRef100_Q43495
            this.cItem.protein.refSeq.s90 = line[8].replace("UniRef90_", "");
        }
    }
    // 9. UniRef50
    if (line[9].length > 0) {
        if (typeof this.cItem.protein.refSeq === 'undefined') {
            this.cItem.protein.refSeq = {};
        }
        if (typeof this.cItem.protein.refSeq.s50 === 'undefined' || this.cItem.protein.refSeq.s50 === null) {
            // UniRef100_Q43495
            this.cItem.protein.refSeq.s50 = line[9].replace("UniRef50_", "");
        }
    }
    // 12. NCBI-taxon
    if (line[12].length > 0) {
        if (typeof this.cItem.protein.tax === 'undefined') {
            this.cItem.protein.tax = {};
        }
        if (typeof this.cItem.protein.tax.id === 'undefined' || this.cItem.protein.tax.id === null) {
            // UniRef100_Q43495
            this.cItem.protein.tax.id = line[12];
        }
    }
    // 13. MIM
    if (line[13].length > 0) {
        if (typeof this.cItem.protein.mim === 'undefined') {
            this.cItem.protein.mim = {};
        }
        if (typeof this.cItem.protein.mim.id === 'undefined' || this.cItem.protein.mim.id === null) {
            // UniRef100_Q43495
            this.cItem.protein.mim.id = line[13];
        }
    }


    // 14. UniGene
    if (line[14].length > 0) {
        if (typeof this.cItem.protein.unigeneID === 'undefined' || this.cItem.protein.unigeneID === null) {
            this.cItem.protein.unigeneID = line[14];
        }
    }

    // if(typeof this.cItem.protein.pdbID !== 'undefined'){
    //     console.log(this.cItem);
    //     console.log(line);
    //     process.exit(0);
    // }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;
    if (self.options.insert === true && self.bulkCounter > 0 && self.options.type === 1) {
        if (typeof self.cItem.protein.pdbID !== 'undefined' || typeof self.cItem.protein.goID !== 'undefined' || typeof self.cItem.protein.unigeneID !== 'undefined') {
            self.bulkQuery.find({
                "protein.accession": self.cItem.protein.accession
            }).update({
                protein: {
                    $elemMatch: {
                        accession: self.cItem.protein.accession
                    }
                }
            }, {
                $set: {
                    "protein.$": self.cItem.protein
                }
            }, true);
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

/**
 * [createIndexies description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
parser.prototype.createIndexies = function(callback) {
    var self = this;

    // create an array of index specifications
    var indexes = [
        { key: { "geneID": 1, "protein.proteinID": 1 }, background: false, name: "geneID_proteinID_idx" },
        { key: { "mim.id": 1, "geneID": 1 }, background: false, name: "mimID_geneID_idx" }
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

module.exports = parser;
