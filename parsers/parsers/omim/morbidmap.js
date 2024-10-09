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
    if (lineDelimited.length === 4) {
        // Do we have new record? If yes reset our current record variable and add him to bulk query
        if (typeof self.cItem.mim !== 'undefined' && self.cItem.mim.id !== parseInt(lineDelimited[2])) {

            if (self.options.insert === true && (typeof self.cItem.geneDisorder !== 'undefined' || typeof self.cItem.geneDisorder.name !== 'undefined')) {

                self.bulkQuery.find({
                    $and: [{
                        "geneDisorder.name": { $ne: self.cItem.geneDisorder.name }
                    }, {
                        "mim.id": self.cItem.mim.id
                    }]
                }).upsert().update({
                    $push: {
                        'geneDisorder': self.cItem.geneDisorder
                    }
                }, true);


                var last_test = self.cItem;

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

    // geneDisorder: {
    //     // (morbidmap.Disorder)
    //     disorderName: {type: String},
    //     // (morbidmap.cytogenetic location)
    //     // (10q24.32)
    //     disorderLocation: {type: String}
    // }

    // 0   Disorder, <disorder MIM no.> (<phene mapping key>)
    if (this.removeCommonDB(line[0]) !== null) {
        if (typeof this.cItem.geneDisorder !== 'object') this.cItem.geneDisorder = {};
        if (typeof this.cItem.geneDisorder.name === 'undefined' || this.cItem.geneDisorder.name === null) {
            this.cItem.geneDisorder.name = line[0].trim();
        }
    }

    // 2  - Gene/locus MIM no.
    if (this.removeCommonDB(line[2]) !== null && this.isNumber(line[2]) !== null) {
        if (typeof c.mim === 'undefined' || typeof c.mim !== 'object') this.cItem.mim = {};
        if (typeof c.mim.id === 'undefined' || c.mim.id === null) {
            this.cItem.mim.id = parseInt(line[2]) || null;
        }
    }
    // 3 - cytogenetic location.
    if (this.removeCommonDB(line[3]) !== null) {
        if (typeof this.cItem.geneDisorder !== 'object') this.cItem.geneDisorder = {};
        if (typeof this.cItem.geneDisorder.loc === 'undefined' || this.cItem.geneDisorder.loc === null) {
            this.cItem.geneDisorder.loc = line[3].trim();
        }
    }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;

    if (self.options.insert === true && self.bulkCounter > 0) {
        if (typeof self.cItem.geneDisorder !== 'undefined' || typeof self.cItem.geneDisorder.name !== 'undefined') {

            self.bulkQuery.find({
                $and: [{
                    "geneDisorder.name": { $ne: self.cItem.geneDisorder.name }
                }, {
                    "mim.id": self.cItem.mim.id
                }]
            }).upsert().update({
                $push: {
                    'geneDisorder': self.cItem.geneDisorder
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
        { key: { "protein.accession": 1 }, background: false, name: "proteinAccession_idx" },
        { key: { "protein.proteinID": 1 }, background: false, name: "proteinID_idx" }
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
DELIMITED: |
For the file morbidmap, the fields are, in order:
1  - Disorder, <disorder MIM no.> (<phene mapping key>)
2  - Gene/locus symbols
3  - Gene/locus MIM no.
4  - cytogenetic location

17,20-lyase deficiency, isolated, 202110 (3)|CYP17A1, CYP17, P450C17|609300|10q24.32
17-alpha-hydroxylase/17,20-lyase deficiency, 202110 (3)|CYP17A1, CYP17, P450C17|609300|10q24.32
17-beta-hydroxysteroid dehydrogenase X deficiency, 300438 (3)|HSD17B10, HADH2, ERAB, MRXS10|300256|Xp11.22
2-aminoadipic 2-oxoadipic aciduria, 204750 (3)|DHTKD1, KIAA1630, AMOXAD, CMT2Q|614984|10p14
2-methylbutyrylglycinuria, 610006 (3)|ACADSB, SBCAD|600301|10q26.13
3-M syndrome 1, 273750 (3)|CUL7, 3M1|609577|6p21.1



*/
