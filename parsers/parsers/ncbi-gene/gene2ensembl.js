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
    if (lineDelimited.length === 7) {

        let geneID = self.isNumber(lineDelimited[1]);

        // Do we have new gene record if yes reset our current gene variable
        if (self.geneID !== null && self.geneID !== geneID) {


            if (self.options.insert === true && 
                typeof self.cItem[self.geneID].crossReference === 'object') {

                if (typeof self.cItem[self.geneID].crossReference.enseRnaID !== 'undefined' || 
                    typeof self.cItem[self.geneID].crossReference.enseProtID !== 'undefined' || 
                    typeof self.cItem[self.geneID].crossReference.enseGeneID !== 'undefined') {

                    self.bulkQuery.find({
                        geneID: self.cItem[self.geneID].geneID
                    }).upsert().updateOne({
                        $set: {
                            'crossReference': self.cItem[self.geneID].crossReference
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
        if (typeof this.cItem[geneID] !== 'object') {
            this.cItem[geneID] = new Object();
            this.cItem[geneID].geneID = geneID;
        }
    } else {
        return;
    }

    var c = this.cItem[this.geneID];
    var intCheck;

    // 2. Ensembl_gene_identifier
    if (this.removeCommonDB(line[2]) !== null) {
        if (typeof c.crossReference === 'undefined' || typeof c.crossReference !== 'object'){
            this.cItem[this.geneID].crossReference = {};  
            c.crossReference = {}; 
        }
        if (typeof c.crossReference === 'undefined' || typeof c.crossReference.enseGeneID === 'undefined') {
            this.cItem[this.geneID].crossReference.enseGeneID = line[2].trim();
        }
    }
    // 4. ARRAY - Ensembl_rna_identifier
    if (this.removeCommonDB(line[4]) !== null) {
        if (typeof c.crossReference === 'undefined' || typeof c.crossReference !== 'object'){
            this.cItem[this.geneID].crossReference = {};  
            c.crossReference = {}; 
        }
        this.cItem[this.geneID].crossReference.enseRnaID = this.matchArrayItems(line[4], c.crossReference.enseRnaID) || c.crossReference.enseRnaID;
    }
    // 6. ARRAY - Ensembl_protein_identifier
    if (this.removeCommonDB(line[6]) !== null) {
        if (typeof c.crossReference === 'undefined' || typeof c.crossReference !== 'object'){
            this.cItem[this.geneID].crossReference = {};  
            c.crossReference = {}; 
        }
        this.cItem[this.geneID].crossReference.enseProtID = this.matchArrayItems(line[6], c.crossReference.enseProtID) || c.crossReference.enseProtID;
    }

    // if(typeof this.cItem.crossReference !== 'undefined'){
    //     console.log(line);
    //     console.log(this.cItem);
    //     process.exit(0);
    // }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;

    console.log("Bulk counter: " + self.bulkCounter);
    console.log("cItem Length: " + self.cItem.length);
    
    if (self.options.insert === true && self.bulkCounter > 0) {

        if (self.geneID !== null && typeof self.cItem[self.geneID].crossReference === 'object') {

            if (typeof self.cItem[self.geneID].crossReference.enseRnaID !== 'undefined' || 
                typeof self.cItem[self.geneID].crossReference.enseProtID !== 'undefined') {
                self.bulkQuery.find({
                    geneID: self.cItem[self.geneID].geneID
                }).upsert().updateOne({
                    $set: {
                        'crossReference': self.cItem[self.geneID].crossReference
                    }
                }, true);
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
        { key: { "crossReference.enseGeneID": 1 }, background: false, name: "enseGeneID_idx" },
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
    })
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

/**
 * If item is not in array add it to array
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
#Format: 
tax_id GeneID Ensembl_gene_identifier RNA_nucleotide_accession.version Ensembl_rna_identifier protein_accession.version Ensembl_protein_identifier (tab is used as a separator, pound sign - start of a comment)
7227    30970   FBgn0040373     NM_130477.4     FBtr0070108     NP_569833.1     FBpp0070103

1. GeneID
2. Ensembl_gene_identifier
4. ARRAY - Ensembl_rna_identifier
6. ARRAY - Ensembl_protein_identifier
*/
