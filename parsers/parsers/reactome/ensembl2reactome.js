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
    self.cItem = [];
    self.enseGeneID = null;
    self.currentIndex = 0;

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
    if (lineDelimited.length === 7) {

        // ENSG Gene ID
        let enseGeneID = lineDelimited[0];

        // Do we have new gene record if yes reset our current gene variable
        if (self.enseGeneID !== null && self.enseGeneID !== enseGeneID) {

            if (self.options.insert === true) {
                // Ensure self.cItem[self.enseGeneID] and self.cItem[self.enseGeneID].ontology are well-defined
                if (typeof self.cItem[self.enseGeneID] === 'object' &&
                    Array.isArray(self.cItem[self.enseGeneID].ontology) &&
                    self.cItem[self.enseGeneID].ontology.length > 0 &&
                    typeof self.cItem[self.enseGeneID].ontology[0] === 'object') {

                    self.bulkQuery.find({
                        "crossReference.enseGeneID": self.cItem[self.enseGeneID].crossReference.enseGeneID,
                    }).updateOne({
                        $addToSet: {
                            'ontology': { $each: self.cItem[self.enseGeneID].ontology }
                        }
                    });

                    if (self.options.debug === true) {
                        var last_test = self.cItem[self.enseGeneID];
                    }
                    self.bulkCounter++;
                    self.itemCounter++;
                }
            }

            // Clear object reference
            delete self.cItem[self.enseGeneID];
            self.currentIndex = 0;

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
        if (enseGeneID !== null) {
            self.extractLineData(lineDelimited, enseGeneID);
        }
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

parser.prototype.extractLineData = function(line, enseGeneID) {

    // 1   enseGeneID
    if (enseGeneID !== this.enseGeneID) {
        this.enseGeneID = enseGeneID;
        if (typeof this.cItem[enseGeneID] !== 'object') {
            this.cItem[enseGeneID] = new Object();
            this.cItem[enseGeneID].crossReference = {};
            this.cItem[enseGeneID].crossReference.enseGeneID = enseGeneID;
        }
    }

    var c = this.cItem[this.enseGeneID];

    var changeIndex = false;
    var intCheck;

    if (this.removeCommonDB(line[1]) !== null) {
        if (typeof c.ontology === 'undefined') {
            this.cItem[this.enseGeneID].ontology = new Array();
            c.ontology = new Array();
        }
        if (typeof c.ontology[this.currentIndex] !== 'object') {
            this.cItem[this.enseGeneID].ontology[this.currentIndex] = {};
            c.ontology[this.currentIndex] = {};
        }

        if (typeof c.ontology[this.currentIndex].id === 'undefined') {
            this.cItem[this.enseGeneID].ontology[this.currentIndex].id = String(line[1].trim());
            changeIndex = true;
        }
    }

    if (this.removeCommonDB(line[3]) !== null) {
        if (typeof this.cItem[this.enseGeneID].ontology === 'undefined') {
            this.cItem[this.enseGeneID].ontology = new Array();
        }
        if (typeof this.cItem[this.enseGeneID].ontology[this.currentIndex] !== 'object') {
            this.cItem[this.enseGeneID].ontology[this.currentIndex] = {};
        }

        if (typeof this.cItem[this.enseGeneID].ontology[this.currentIndex].term === 'undefined') {
            this.cItem[this.enseGeneID].ontology[this.currentIndex].term = line[3].trim();
            changeIndex = true;
        }
    }

    // 6. Hierarchy
    if (this.removeCommonDB(line[6]) !== null) {
        if (typeof this.cItem[this.enseGeneID].ontology === 'undefined') {
            this.cItem[this.enseGeneID].ontology = new Array();
        }
        if (typeof this.cItem[this.enseGeneID].ontology[this.currentIndex] !== 'object') {
            this.cItem[this.enseGeneID].ontology[this.currentIndex] = {};
        }

        if (typeof this.cItem[this.enseGeneID].ontology[this.currentIndex].cat === 'undefined') {
            this.cItem[this.enseGeneID].ontology[this.currentIndex].cat = parseInt(line[6].trim()) + 10;
            changeIndex = true;
        }
    }

    // Check if we should change index
    if (changeIndex === true) {
        this.currentIndex++;
    }

    // var size = bson.BSON.calculateObjectSize(this.cItem);
    // if(size > 1000000){
    //     console.log(this.cItem);
    //     process.exit(0);
    // }

};

parser.prototype.processingEnd = function(callback) {
    var self = this;

    console.log("Bulk counter: " + self.bulkCounter);
    console.log("cItem Length: " + self.cItem.length);

    if (self.options.insert === true && self.bulkCounter > 0) {

        if (typeof self.cItem[self.enseGeneID].ontology !== 'undefined' && typeof self.cItem[self.enseGeneID].ontology[0] === 'object') {
            self.bulkQuery.find({
                "crossReference.enseGeneID": self.cItem[self.enseGeneID].crossReference.enseGeneID,
            }).upsert().updateOne({
                $addToSet: {
                    'ontology': { $each: self.cItem[self.enseGeneID].ontology }
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
//     var indexes = [
//         { key: { "ontology.id": 1 }, background: false, unique: true, name: "ontologyID_idx" },
//         { key: { "ontology.term": 1 }, background: false, name: "ontologyTerm_idx" },
//         { key: { "ontology.cat": 1 }, background: false, name: "ontologyCat_idx" }
//     ];
// 
//     self.collection.createIndexes(indexes, function(err, indexName) {
//         if (err) {
//             console.log('\r\nERROR Creating indexes');
//             console.log(err)
//         }
// 
//         console.log('=> Indexes created');
// 
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

