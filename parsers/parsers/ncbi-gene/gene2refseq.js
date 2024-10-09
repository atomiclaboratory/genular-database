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
    self.geneID = null;

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
    if (lineDelimited.length === 16) {

        let geneID = self.isNumber(lineDelimited[1]);

        // Do we have new gene record if yes reset our current gene variable
        if (self.geneID !== null && self.geneID !== geneID) {

            if (self.options.insert === true && typeof self.cItem[self.geneID].genePos === 'object') {

                if (self.cItem[self.geneID].genePos.start > 1 && self.cItem[self.geneID].genePos.end > 1) {
                    // CHECK: OR QUERY
                    self.bulkQuery.find({
                        geneID: self.cItem[self.geneID].geneID
                    }).upsert().updateOne({
                        $set: {
                            'genePos.start': self.cItem[self.geneID].genePos.start,
                            'genePos.end': self.cItem[self.geneID].genePos.end
                        }
                    }, true);

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
        if (geneID !== null) {
            // 1. Add gene to current item
            self.extractLineData(lineDelimited, geneID);
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

parser.prototype.extractLineData = function(line, geneID) {
    // 1   GeneID
    if (geneID !== this.geneID) {
        this.geneID = geneID;
        if (typeof this.cItem[this.geneID] !== 'object') {
            this.cItem[this.geneID] = new Object();
            this.cItem[this.geneID].geneID = this.geneID;
        }
    } else {
        return;
    }

    var c = this.cItem[this.geneID];

    var intCheck = this.isNumber(line[9]);
    // 9   start_position_on_the_genomic_accession 
    // CHECK FOR EMPTY (cross reference)
    if (this.removeCommonDB(line[9]) !== null && intCheck !== null) {
        if (typeof this.cItem[geneID].genePos !== 'object') {
            this.cItem[geneID].genePos = {};
            c.genePos = {};
        }
        if (typeof c.genePos.start === 'undefined' || c.genePos.start === null) {
            this.cItem[geneID].genePos.start = intCheck + 1;
        }
    }

    intCheck = this.isNumber(line[10])
        // 10  end_position_on_the_genomic_accession 
        // CHECK FOR EMPTY (cross reference)
    if (this.removeCommonDB(line[10]) !== null && intCheck !== null) {
        if (typeof this.cItem[geneID].genePos !== 'object') {
            this.cItem[geneID].genePos = {};
            c.genePos = {};
        }
        if (typeof c.genePos.end === 'undefined' || c.genePos.end === null) {
            this.cItem[geneID].genePos.end = intCheck + 1;
        }
    }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;

    console.log("Bulk counter: " + self.bulkCounter);
    console.log("cItem Length: " + self.cItem.length);

    if (self.options.insert === true && self.bulkCounter > 0) {
        if (self.geneID !== null && typeof self.cItem[self.geneID] === 'object') {
            if (self.cItem[self.geneID].genePos.start > 1 && self.cItem[self.geneID].genePos.end > 1) {
                self.bulkQuery.find({
                    geneID: self.cItem[self.geneID].geneID
                }).upsert().updateOne({
                    $set: {
                        'genePos.start': self.cItem[self.geneID].genePos.start,
                        'genePos.end': self.cItem[self.geneID].genePos.end
                    }
                }, true);
                // self.bulkQuery.find({
                //            $and:[
                //                 {$or:[
                //                      {"genePos.start" : { $ne: self.cItem.genePos.start }}, 
                //                      {"genePos.end" : { $ne: self.cItem.genePos.end }}
                //                 ]},
                //                 {geneID: self.cItem.geneID}
                //             ]}).upsert().updateOne( { $set: { 'genePos.start': self.cItem.genePos.start, 'genePos.end': self.cItem.genePos.end } }, true );
            }
        }
        // Execute the remaining bulk operations
        self.bulkQuery.execute({
            w: 0
        }, function(err, result) {
            self.bulkQuery = null;
            // Close database connection
            self.client.close(function(err, res) {
                return callback({
                    type: 1,
                    count: self.bulkCounter
                });
            });
        });

    } else if (self.options.insert !== true && self.database) {
        self.bulkQuery = null;
        // Only if insert into database is specified
        if (self.options.type === 1) {
            self.client.close(function(err, res) {
                return callback({
                    type: 3,
                    count: 0
                });
            });
        }
    } else {
        return callback({
            type: 3,
            count: 0
        });
    }
};

parser.prototype.isNumber = function(v) {
    if (v === "" || v === null) {
        return null;
    } else if (isNaN(v)) {
        return null;
    } else {
        return help.f.parseInt(v);
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
