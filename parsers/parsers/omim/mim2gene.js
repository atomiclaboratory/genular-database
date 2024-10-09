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
    if (lineDelimited.length === 5) {

        // Do we have new record? If yes reset our current variable and add him to bulk query
        if (self.isNumber(self.cItem.geneID) && self.cItem.geneID !== parseInt(lineDelimited[2])) {

            if (self.options.insert === true && (typeof self.cItem.mim.id !== 'undefined' || typeof self.cItem.mim.relation !== 'undefined')) {

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

    // 0   MIM number
    if (this.removeCommonDB(line[0]) !== null && this.isNumber(line[0]) !== null) {
        if (typeof c.mim === 'undefined' || typeof c.mim !== 'object') this.cItem.mim = {};
        if (typeof c.mim.id === 'undefined' || c.mim.id === null) {
            this.cItem.mim.id = parseInt(line[0]) || null;
        }
    }
    // 1   MIM Entry Type (see FAQ 1.3 at https://omim.org/help/faq)
    if (this.removeCommonDB(line[1]) !== null) {
        if (typeof c.mim === 'undefined' || typeof c.mim !== 'object') this.cItem.mim = {};
        if (typeof c.mim.relation === 'undefined' || c.mim.relation === null) {
            // Default number (unknown)
            var index = 5;
            if (line[1] === 'gene') {
                index = 0;
            } else if (line[1] === 'phenotype') {
                index = 1;
            } else if (line[1] === 'gene/phenotype') {
                index = 2;
            } else if (line[1] === 'predominantly-phenotypes') {
                index = 3;
            } else if (line[1] === 'predominantly phenotypes') {
                index = 3;
            } else if (line[1] === 'moved/removed') {
                index = 4;
            }
            this.cItem.mim.relation = index;
        }
    }

    // 2   Entrez Gene ID (NCBI)
    if (this.removeCommonDB(line[2]) !== null && this.isNumber(line[2]) !== null) {
        if (typeof c.geneID === 'undefined' || c.geneID === null) {
            this.cItem.geneID = parseInt(line[2]);
        }
    }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;

    if (self.options.insert === true && self.bulkCounter > 0) {
        if (typeof self.cItem.mimId !== 'undefined' && typeof self.cItem.mimRelation !== 'undefined') {

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
# MIM Number    Type    Gene IDs        Approved Gene Symbols
100050  predominantly phenotypes        -       -
100070  phenotype       100329167       -
100100  phenotype       -       -
100200  predominantly phenotypes        -       -
100300  phenotype       -       -
100500  moved/removed   -       -
100600  phenotype       -       -
100640  gene    216     ALDH1A1
100650  gene/phenotype  217     ALDH2
100660  gene    218     ALDH3A1
100670  gene    219     ALDH1B1
100675  predominantly phenotypes        -       -
100678  gene    39      ACAT2
100680  moved/removed   -       -
100690  gene    1134    CHRNA1
100700  predominantly phenotypes        -       -



# THIS IS NOT A TABLE OF GENE-PHENOTYPE RELATIONSHIPS.
# MIM Number    MIM Entry Type (see FAQ 1.3 at http://omim.org/help/faq)    Entrez Gene ID (NCBI)   Approved Gene Symbol (HGNC) Ensembl Gene ID (Ensembl)
100050  predominantly phenotypes            
100070  phenotype   100329167       
100100  phenotype           
100200  predominantly phenotypes            
100300  phenotype           
100500  moved/removed           
100600  phenotype           
100640  gene    216 ALDH1A1 ENSG00000165092,ENST00000297785
100650  gene/phenotype  217 ALDH2   ENSG00000111275,ENST0000026173

*/
