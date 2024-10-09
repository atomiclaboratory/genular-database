var MongoClient = require('mongodb').MongoClient;
var bson = require('bson').BSONPure,
    help = require('../../lib/helpers');

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
    if (lineDelimited.length === 8) {
        status = true;

        let geneID = self.isNumber(lineDelimited[1]);

        // Do we have new gene record if yes reset our current gene variable
        if (self.geneID !== null && self.geneID !== geneID) {

            // console.log(self.cItem[self.geneID]);

            if (self.options.insert === true && typeof self.cItem[self.geneID].ontology[0] === 'object') {

                self.bulkQuery.find({
                    geneID: self.cItem[self.geneID].geneID
                }).upsert().updateOne({
                    $addToSet: {
                        'ontology': { $each: self.cItem[self.geneID].ontology }
                    }
                }, true);

                if (self.options.debug === true) {
                    var last_test = self.cItem[self.geneID];
                }
                self.bulkCounter++;
                self.itemCounter++;
            }

            // Clear object reference
            delete self.cItem[self.geneID];
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

/**
 * [extractLineData description]
 * @param  {[type]} line   [description]
 * @param  {[type]} geneID [description]
 * @return {[type]}        [description]
 */
parser.prototype.extractLineData = function(line, geneID) {

    // Ontology
    // ontology: [{
    //     // (gene2go.GO ID)
    //     // Ontology ID (GO:0005634)
    //     goID: {type: String},
    //     // (gene2go.GO term)
    //     // Ontology Term (biological_process || N-terminal protein myristoylation)
    //     goTerm: {type: String},
    //     // (gene2go.Category)
    //     // Ontology category (Function, Process, or Component)
    //     goCategory: {type: String}
    // }]

    // 1   GeneID
    if (geneID !== this.geneID) {
        this.geneID = geneID;
        if (typeof this.cItem[geneID] !== 'object') {
            this.cItem[geneID] = new Object();
            this.cItem[geneID].geneID = geneID;
        }
    }

    var c = this.cItem[this.geneID];
    var changeIndex = false;
    var intCheck;

    // 2. GO_ID (Stupid Go have string IDs)
    if (this.removeCommonDB(line[2]) !== null) {
        if (typeof c.ontology === 'undefined') {
            this.cItem[this.geneID].ontology = new Array();
            c.ontology = new Array();
        }
        if (typeof c.ontology[this.currentIndex] !== 'object') {
            this.cItem[this.geneID].ontology[this.currentIndex] = {};
            c.ontology[this.currentIndex] = {};
        }

        if (typeof c.ontology[this.currentIndex].id === 'undefined') {
            this.cItem[this.geneID].ontology[this.currentIndex].id = String(line[2].trim());
            changeIndex = true;
        }
    }
    // 5. GO_term
    if (this.removeCommonDB(line[5]) !== null) {
        if (typeof this.cItem[this.geneID].ontology === 'undefined') {
            this.cItem[this.geneID].ontology = new Array();
        }
        if (typeof this.cItem[this.geneID].ontology[this.currentIndex] !== 'object') {
            this.cItem[this.geneID].ontology[this.currentIndex] = {};
        }

        if (typeof this.cItem[this.geneID].ontology[this.currentIndex].term === 'undefined') {
            this.cItem[this.geneID].ontology[this.currentIndex].term = line[5].trim();
            changeIndex = true;
        }
    }

    // 6. pipe-delimited set of PubMed uids reported as evidence for the association
    if (this.removeCommonDB(line[6]) !== null) {
        if (typeof this.cItem[this.geneID].ontology === 'undefined') {
            this.cItem[this.geneID].ontology = new Array();
        }
        if (typeof this.cItem[this.geneID].ontology[this.currentIndex] !== 'object') {
            this.cItem[this.geneID].ontology[this.currentIndex] = {};
        }
        if (typeof this.cItem[this.geneID].ontology[this.currentIndex].pubMed === 'undefined') {
            this.cItem[this.geneID].ontology[this.currentIndex].pubMed = this.delimitArrayItems(line[6]);
            changeIndex = true;
        }
    }

    // 7. Category
    if (this.removeCommonDB(line[7]) !== null) {
        if (typeof this.cItem[this.geneID].ontology === 'undefined') {
            this.cItem[this.geneID].ontology = new Array();
        }
        if (typeof this.cItem[this.geneID].ontology[this.currentIndex] !== 'object') {
            this.cItem[this.geneID].ontology[this.currentIndex] = {};
        }

        if (typeof this.cItem[this.geneID].ontology[this.currentIndex].cat === 'undefined') {
            var index = help.f.indexOf(['Function', 'Process', 'Component'], line[7]);

            if (index !== -1) {
                this.cItem[this.geneID].ontology[this.currentIndex].cat = index;
                changeIndex = true;
            }
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

// 3702    814630  GO:0003677  IEA -   DNA binding -   Function
// 3702    814630  GO:0003700  ISS -   transcription factor activity, sequence-specific DNA binding    11118137    Function
// 3702    814630  GO:0005634  IEA -   nucleus -   Component
// 3702    814630  GO:0005634  ISM -   nucleus -   Component
// 3702    814630  GO:0006351  IEA -   transcription, DNA-templated    -   Process
// 3702    814630  GO:0006355  TAS -   regulation of transcription, DNA-templated  11118137    Process

parser.prototype.processingEnd = function(callback) {
    var self = this;

    if (self.options.insert === true && self.bulkCounter > 0) {

        if (typeof self.cItem[self.geneID].ontology !== 'undefined' && typeof self.cItem[self.geneID].ontology[0] === 'object') {
            self.bulkQuery.find({
                geneID: self.cItem[self.geneID].geneID
            }).upsert().updateOne({
                $addToSet: {
                    'ontology': self.cItem[self.geneID].ontology
                }
            }, true);
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

parser.prototype.delimitArrayItems = function(str, array) {
    var delimited = str.split('|');
    if (typeof array === 'undefined') {
        array = new Array();
    }
    if (delimited.length > 0) {
        delimited.forEach(function(entry) {
            array.push(parseInt(entry));
        });
        return array;
    } else {
        return null;
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
GO_ID
GO_term
Category

#Format: tax_id GeneID GO_ID Evidence Qualifier GO_term PubMed Category (tab is used as a separator, pound sign - start of a comment)
3702    814629  GO:0005634      ISM     -       nucleus -       Component
3702    814629  GO:0008150      ND      -       biological_process      -       Process
3702    814630  GO:0003700      ISS     -       sequence-specific DNA binding transcription factor activity     11118137        Function
3702    814630  GO:0005634      ISM     -       nucleus -       Component
3702    814630  GO:0006355      TAS     -       regulation of transcription, DNA-templated      11118137        Process
3702    814630  GO:0006499      RCA     -       N-terminal protein myristoylation       22589469        Process
3702    814630  GO:0006635      RCA     -       fatty acid beta-oxidation       22589469        Process
3702    814630  GO:0006891      RCA     -       intra-Golgi vesicle-mediated transport  22589469        Process
3702    814630  GO:0016558      RCA     -       protein import into peroxisome matrix   22589469        Process
3702    814636  GO:0003674      ND      -       molecular_function      -       Function
3702    814636  GO:0005886      IDA     -       plasma membrane 17317660        Component
3702    814636  GO:0008150      ND      -       biological_process      -       Process
3702    814637  GO:0003674      ND      -       molecular_function      -       Function
3702    814637  GO:0005794      IDA     -       Golgi apparatus 22430844        Component
3702    814637  GO:0005794      ISM     -       Golgi apparatus -       Component
3702    814637  GO:0005886      ISM     -       plasma membrane -       Component
3702    814637  GO:0006084      RCA     -       acetyl-CoA metabolic process    225894
*/
