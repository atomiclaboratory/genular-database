var MongoClient = require("mongodb").MongoClient,
    help = require("../../lib/helpers"),
    resolve = require("path").resolve;

/**
 * [parser description]
 * @param  {[type]}   options  [description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
var parser = function (options, callback) {
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
    self.cItem = {
        crossReference: {},
        singleCellExpressions: {},
    };

    self.replacementMap = {
        'UBERON': 'U',
        'PATO': 'P',
        'MONDO': 'M',
        'overall': 'A'
    };

    if (self.options.insert === true) {
        MongoClient.connect(self.options.dbPath, help.o.dbConnect, function (err, client) {
            if (self.options.debug === true) {
                console.log("\r\nMongoDB connected.");

                // let profileSavePath = resolve("./debugdump");
                // require("../../lib/cpu-profile.js").init(profileSavePath);
            }

            if (err) {
                throw err;
            }

            self.client = client;

            self.database = self.client.db("genes");
            self.collection = self.database.collection("genes");

            self.bulkQuery = self.collection.initializeUnorderedBulkOp();
            return callback.call(self, true);
        });
    } else {
        return callback.call(self, true);
    }
};

parser.prototype.processLine = function (objectData, callback) {
    var self = this;
    var bulkInsert = false;

    // Check if line is Valid for current parser
    if (typeof objectData.key !== "undefined" && typeof objectData.value !== "undefined") {
        let enseGeneID = objectData.key;

        // Do we have new gene record if yes reset our current gene variable
        if (typeof self.cItem.crossReference.enseGeneID !== "undefined" && self.cItem.crossReference.enseGeneID !== null) {
            if (self.options.insert === true) {
                self.bulkQuery
                    .find({
                        "crossReference.enseGeneID": self.cItem.crossReference.enseGeneID,
                    })
                    .hint({ "crossReference.enseGeneID": 1 })
                    .upsert()
                    .updateOne(
                        {
                            $set: { singleCellExpressions: self.cItem.singleCellExpressions },
                        },
                        true
                    );

                if (self.options.debug === true) {
                    var last_test = self.cItem;
                }
                self.bulkCounter++;
                self.itemCounter++;
            }

            // Clear object reference
            self.cItem = {
                crossReference: {},
                singleCellExpressions: {},
            };

            // Insert records when limit is reached
            if (self.bulkCounter !== 0 && self.bulkCounter % self.options.perInsert === 0) {
                bulkInsert = true;
                if (self.options.debug === true) {
                    console.log("-----> INSERTING: " + self.bulkCounter);
                }

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
                bulkTemp.execute(
                    {
                        w: 0,
                    },
                    function (err, result) {
                        if (self.options.debug === true) {
                            console.log("-----> " + last_counter);
                            console.log(last_test);
                        }
                        // Just in case delete closure var
                        bulkTemp = null;
                        return callback({
                            type: 1,
                            count: self.options.perInsert,
                        });
                    }
                );
            }
        }
        if (enseGeneID !== null) {
            self.extractObjectData(objectData.value, enseGeneID);
        }
        if (bulkInsert === false) {
            return callback({
                type: 2,
                count: 0,
            });
        }
    } else {
        return callback({
            type: 3,
            count: 0,
        });
    }
};

parser.prototype.extractObjectData = function (objectDataValue, enseGeneID) {
    var c = this;

    if (typeof c.cItem.crossReference.enseGeneID === "undefined" || c.cItem.crossReference.enseGeneID === null) {
        this.cItem.crossReference.enseGeneID = enseGeneID;
    }
    
    // Check and remove 'expressions' and 'cells' from objectDataValue if they exist
    if (typeof objectDataValue.expressions !== "undefined") {
        delete objectDataValue.expressions;
    }

    if (typeof objectDataValue.cells !== "undefined") {
        delete objectDataValue.cells;
    }

    if (typeof objectDataValue.tissues !== "undefined") {
        delete objectDataValue.tissues;
    }

    if (typeof objectDataValue.effectSizes !== "undefined") {
        objectDataValue.effectSizes = objectDataValue.effectSizes.map(item => {
            let context = item.context;
            for (let key in c.replacementMap) {
                context = context.replace(key, c.replacementMap[key]);
            }

            return {
                i: item.cell_id, // item.cell_id.replace(/^CL0+/, '').replace('CL', ''),
                c: context,
                s: item.markerScore
            };
        });
        
        // Remove any entries that have the same i (cell_id) and c (context)
        const uniqueEntries = {};
        objectDataValue.effectSizes = objectDataValue.effectSizes.filter(item => {
            const combinedKey = `${item.i}_${item.c}`;
            if (!uniqueEntries[combinedKey]) {
                uniqueEntries[combinedKey] = true;
                return true;
            }
            return false;
        });
    }

    this.cItem.singleCellExpressions = objectDataValue;

    // if (typeof this.cItem.crossReference !== "undefined" && this.options.debug === true) {
    //     console.log(this.cItem);
    //     console.log(objectDataValue);
    //     console.log(enseGeneID);
    //     process.exit(0);
    // }
};

parser.prototype.processingEnd = function (callback) {
    var self = this;

    if (self.options.insert === true || self.bulkCounter > 0) {
        if (typeof self.cItem.crossReference.enseGeneID !== "undefined" && self.cItem.crossReference.enseGeneID !== null) {
            self.bulkQuery
                .find({
                    "crossReference.enseGeneID": self.cItem.crossReference.enseGeneID,
                })
                .hint({ "crossReference.enseGeneID": 1 })
                .upsert()
                .updateOne(
                    {
                        $set: { singleCellExpressions: self.cItem.singleCellExpressions },
                    },
                    true
                );

            self.bulkCounter++;
            self.itemCounter++;
        }
        // Execute the remaining bulk operations
        self.bulkQuery.execute(
            {
                w: 0,
            },
            function (err, result) {
                self.bulkQuery = null;
                if (typeof self.createIndexies === "undefined") {
                    // Close database connection
                    self.client.close(function (err, res) {
                        return callback({
                            type: 1,
                            count: self.bulkCounter,
                        });
                    });
                } else {
                    return callback({
                        type: 1,
                        count: self.bulkCounter,
                    });
                }
            }
        );
    } else if (self.options.insert !== true && self.database) {
        self.bulkQuery = null;
        // Only if insert into database is specified
        if (self.options.type === 1) {
            if (typeof self.createIndexies === "undefined") {
                self.client.close(function (err, res) {
                    return callback({
                        type: 3,
                        count: 0,
                    });
                });
            } else {
                return callback({
                    type: 3,
                    count: 0,
                });
            }
        }
    } else {
        return callback({
            type: 3,
            count: 0,
        });
    }
};

/**
 * [createIndexies description] 
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
// parser.prototype.createIndexies = function (callback) {
//     var self = this;
// 
//     var indexes = [
// 
//         { key: { "singleCellExpressions.effectSizes.cell_id": 1 }, background: false, name: "singleCellExpressionsEffectSizesCell_idx" },
//         { key: { "singleCellExpressions.effectSizes.context": 1 }, background: false, name: "singleCellExpressionsEffectSizesContext_idx" }
//     ];
// 
//     self.collection.createIndexes(indexes, function (err, indexName) {
//         if (err) {
//             console.log("\r\nERROR Creating indexes");
//             console.log(err);
//         }
// 
//         console.log("=> Indexes created");
// 
//         self.client.close(function (err, res) {
//             return callback();
//         });
//     });
// };

parser.prototype.isNumber = function (v) {
    if (v === "" || v === null) {
        return null;
    } else if (isNaN(v)) {
        return null;
    } else {
        return v;
    }
};

parser.prototype.removeCommonDB = function (str) {
    if (str.length === 1) {
        if (str === "-" || str === "?") {
            return null;
        }
    }
    return str;
};

module.exports = parser;
