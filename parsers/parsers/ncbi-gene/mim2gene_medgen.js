var MongoClient = require('mongodb').MongoClient,
    help = require('../../lib/helpers'),
    resolve = require('path').resolve;
    
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
    self.bulkQuery = null;
    // MongoDB Collection Placeholder
    self.collection = null;
    // MongoDB Database placeholder
    self.database = null;
    // MongoDB Connection Client
    self.client = null;

    // Save current gene and add him to bulk after
    self.cItem = {};

    if (self.options.insert === true) {
        MongoClient.connect(self.options.dbPath, help.o.dbConnect, function(err, client) {
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
    if (lineDelimited.length === 6) {

        // Do we have new record? If yes reset our current variable and add him to bulk query
        if (self.isNumber(self.cItem.geneID) && typeof self.cItem.mim !== 'undefined' && self.cItem.mim.id !== parseInt(lineDelimited[0])) {

            if (self.options.insert === true && (typeof self.cItem.mim.relation !== 'undefined' || typeof self.cItem.mim.cui !== 'undefined')) {

                self.bulkQuery.find({
                    $and: [{
                        "mim.id": { $ne: self.cItem.mim.id }
                    }, {
                        geneID: self.cItem.geneID
                    }]
                }).upsert().updateOne({
                     $push: {
                        'mim': self.cItem.mim
                    }
                }, true);

                if (self.options.debug === true) {
                    var last_test = self.cItem;
                }
                self.bulkCounter++;
                self.itemCounter++;
            }
            // Clear object reference
            self.cItem = {};

            // Insert records when limit is reached
            if (self.bulkCounter !== 0 && self.bulkCounter % 2000 === 0) {
                bulkInsert = true;

                self.bulkCounter = self.bulkCounter - 2000;
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
                        count: 2000
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

    // 1   GeneID
    if (this.removeCommonDB(line[1]) !== null && this.isNumber(line[1]) !== null) {
        if (typeof c.geneID === 'undefined' || c.geneID === null) {
            this.cItem.geneID = parseInt(line[1]) || null;
        }
    }
    if (this.isNumber(this.cItem.geneID)) {
        // 0   MIM number
        if (this.removeCommonDB(line[0]) !== null && this.isNumber(line[0]) !== null) {
            if (typeof c.mim === 'undefined' || typeof c.mim !== 'object') this.cItem.mim = {};
            if (typeof c.mim.id === 'undefined' || c.mim.id === null) {
                this.cItem.mim.id = parseInt(line[0]);
            }
        }

        // 2   type
        if (this.removeCommonDB(line[2]) !== null) {
            if (typeof c.mim === 'undefined' || typeof c.mim !== 'object') this.cItem.mim = {};
            if (typeof c.mim.relation === 'undefined' || c.mim.relation === null) {
                // Default number (unknown) 
                var index = 5;

                if (line[2] === 'gene') {
                    index = 0;
                } else if (line[2] === 'phenotype') {
                    index = 1;
                } else if (line[2] === 'gene/phenotype') {
                    index = 2;
                } else if (line[2] === 'predominantly-phenotypes') {
                    index = 3;
                } else if (line[2] === 'predominantly phenotypes') {
                    index = 3;
                } else if (line[2] === 'moved/removed') {
                    index = 4;
                }
                this.cItem.mim.relation = index;
            }
        }

        // 4   MedGenCUI
        if (this.removeCommonDB(line[4]) !== null) {
            if (typeof c.mim === 'undefined' || typeof c.mim !== 'object') this.cItem.mim = {};
            if (typeof c.mim.cui === 'undefined' || c.mim.cui === null) {
                // Insert only if doesn't start with CN (CN is only placeholder)
                if (line[4].startsWith("CN") === false) {
                    // CUI is always 8 chars long: C1833921   
                    // Number ID has always 7 characters, but remove leading zeros!
                    this.cItem.mim.cui = parseInt(line[4].replace(/\D/g, ''));
                    // Something went wrong
                    if (this.isNumber(this.cItem.mim.cui) === false){
                        this.cItem.mim.cui = line[4];
                    }
                }
            }
        }
    }

    // if (this.isNumber(this.cItem.geneID)){
    //     if (this.removeCommonDB(line[4]) !== null &&  line[4].trim() === "C0033770"){
    //             console.log(this.cItem);
    //             console.log(line);
    //             process.exit(1);
    //     }
    // }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;

    if (self.options.insert === true && self.bulkCounter > 0) {
        if (self.isNumber(self.cItem.geneID) && typeof self.cItem.mim !== 'undefined') {
            console.log("Should we insert last items?");
            if (typeof self.cItem.mim.relation !== 'undefined' || typeof self.cItem.mim.cui !== 'undefined') {
                console.log("Inserting last bulkQuery items..");
                
                self.bulkQuery.find({
                    $and: [{
                        "mim.id": { $ne: self.cItem.mim.id }
                    }, {
                        geneID: self.cItem.geneID
                    }]
                }).upsert().updateOne({
                     $push: {
                        'mim': self.cItem.mim
                    }
                }, true);
            }
        }
        // Execute the remaining bulk operations
        self.bulkQuery.execute({
            w: 0
        }, function(err, result) {

            if (err) {
                throw err;
            }

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
// parser.prototype.createIndexies = function(callback) {
//     var self = this;
// 
//     // create an array of index specifications
//     var indexes = [
//         { key: { "mim.id": 1 }, background: false, name: "mimID_idx" },
//     ];
//     self.collection.createIndexes(indexes, function(err, indexName) {
//         if (err) {
//             console.log('\r\nERROR Creating indexes');
//             console.log(err)
//         }
//         console.log('=> Indexes created');
//         self.client.close(function(err, res) {
//             return callback();
//         });
//     });
// };

parser.prototype.isNumber = function(v) {
    if (v === "" || v === null) {
        return null;
    } else if (isNaN(v)) {
        return null;
    } else {
        return v;
    }
};

parser.prototype.removeCommonDB = function(str) {
    if (str.length === 1) {
        if (str === '-' || str === '?') {
            return null;
        }
    }
    return str;
};


module.exports = parser;


/*
#MIM number     GeneID  type    Source  MedGenCUI
100050  -       phenotype       -       C3149220
100070  100329167       phenotype       -       C0162871
100100  1131    phenotype       GeneMap C0033770
100200  -       phenotype       -       C1847523

*/
