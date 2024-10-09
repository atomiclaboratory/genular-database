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
        if (self.isNumber(self.cItem.geneID) && self.cItem.geneID !== parseInt(lineDelimited[1]) && typeof self.cItem.geneRelations === 'object') {

            if (self.options.insert === true && typeof self.cItem.geneRelations.similarGenes !== 'undefined') {

                self.bulkQuery.find({
                    geneID: self.cItem.geneID
                }).upsert().updateOne({
                    $push: {
                        'geneRelations': self.cItem.geneRelations
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
    /*
    geneRelations: [{
        // (gene_group.relationship)
        // Gene relation type to similar genes
        // Ortholog, Potential readthrough sibling, Readthrough child, Readthrough parent, Readthrough sibling, Region member, Region parent, Related functional gene, Related pseudogene, 
        relationType: {type: String},
        // (gene_group.Other GeneID)
        similarGenes: [{type: String}]
    }]
    */

    // 1   GeneID
    if (typeof c.geneID === 'undefined' || c.geneID === null) {
        this.cItem.geneID = parseInt(line[1]) || null;
    }

    // 2   relationship type
    if (this.removeCommonDB(line[2]) !== null) {
        if (typeof this.cItem.geneRelations !== 'object') this.cItem.geneRelations = {};

        if (typeof this.cItem.geneRelations.type === 'undefined') {
            var index = help.f.indexOf(['Ortholog', 'Potential readthrough sibling', 'Readthrough child', 'Readthrough parent', 'Readthrough sibling', 'Region member', 'Region parent', 'Related functional gene', 'Related pseudogene'], line[2]);

            if (index !== -1) {
                this.cItem.geneRelations.type = index;
            }
        }
    }

    // 4  Other_GeneID Maybe ARRAY?
    if (this.removeCommonDB(line[4]) !== null && this.isNumber(line[4]) !== null) {
        if (typeof this.cItem.geneRelations !== 'object') this.cItem.geneRelations = {};
        if (typeof this.cItem.geneRelations.similarGenes === 'undefined') {
            this.cItem.geneRelations.similarGenes = this.matchArrayItems(line[4], c.geneRelations.similarGenes) || c.geneRelations.similarGenes;
            // this.cItem.geneRelations.similarGenes = parseInt(line[4]);
        }
    }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;

    if (self.options.insert === true && self.bulkCounter > 0) {
        if (self.cItem.geneID !== null && typeof self.cItem.geneRelations.similarGenes !== 'undefined') {

            self.bulkQuery.find({
                geneID: self.cItem.geneID
            }).upsert().updateOne({
                $push: {
                    'geneRelations': self.cItem.geneRelations
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

parser.prototype.isNumber = function(v) {
    if (v === "" || v === null) {
        return null;
    } else if (isNaN(v)) {
        return null;
    } else {
        return v;
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

1. GeneID
2. relationship
4. Other_GeneID Maybe ARRAY?

#Format: tax_id GeneID relationship Other_tax_id Other_GeneID (tab is used as a separator, pound sign - start of a comment)
4577    732775  Related pseudogene      4577    100313946
4577    100313946       Related functional gene 4577    732775
7091    778454  Related pseudogene      7091    100379527
7091    100379527       Related functional gene 7091    778454
7425    100116762       Related functional gene 7425    1001220
*/
