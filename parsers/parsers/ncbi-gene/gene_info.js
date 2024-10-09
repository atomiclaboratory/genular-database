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

            if (self.options.insert === true && help.f.indexOf(['Record to support submission of GeneRIFs'], self.cItem.desc) === -1) {

                self.bulkQuery.find({
                    geneID: self.cItem[self.geneID].geneID
                }).upsert().updateOne({
                    $set: self.cItem[self.geneID]
                }, true);

                if (self.options.debug === true) {
                    var last_test = self.cItem[self.geneID];
                }
                self.bulkCounter++;
                self.itemCounter++;
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

    // 3. Locus Tag
    if (this.removeCommonDB(line[3]) !== null) {
        if (typeof c.locTag === 'undefined') {
            this.cItem[this.geneID].locTag = line[3].trim();
        }
    }
    // 5. ARRAY Identifiers in other databases (database:value) except: (HGNC:HGNC:1100) position
    // MIM:107741   HGNC:HGNC:613   Ensembl:ENSG00000130203 HPRD:00135  Vega:OTTHUMG00000128901
    if (this.removeCommonDB(line[5]) !== null) {
        if (typeof c.crossReference === 'undefined' || typeof c.crossReference !== 'object') {
            this.cItem[this.geneID].crossReference = {};
            c.crossReference = {};
        }

        var gene_identifiers_bulk = this.delimitArrayItems(line[5], c.crossReference.bulk) || c.crossReference.bulk;
        var gene_identifiers = [];

        if(gene_identifiers_bulk.length > 0){
            gene_identifiers_bulk.forEach((gene_reference) => {
                var delimited = gene_reference.split(':');

                if(delimited.length === 2){
                    gene_identifiers.push({
                        dbName: delimited[0],
                        value: delimited[1]
                    });
                }
            });
        }
        if(gene_identifiers.length > 0){
            this.cItem[this.geneID].crossReference.bulk = gene_identifiers;
        }
    }

    intCheck = this.isNumber(line[6]);
    // 6. chromosome on which this gene is placed
    if (this.removeCommonDB(line[6]) !== null && intCheck !== null) {
        if (typeof this.cItem[this.geneID].chrom !== 'object') {
            this.cItem[this.geneID].chrom = {};
            c.chrom = {};
        }

        if (typeof c.chrom.pos === 'undefined' || c.chrom.pos === null) {
            // mitochondrial genomes 'MT' is used.
            if (help.f.indexOf(['MT'], line[6]) !== -1) {
                this.cItem[this.geneID].chrom.pos = line[6].replace("MT", "");
                this.cItem[this.geneID].chrom.type = 0;
            } else {
                // normal genome chromosome
                this.cItem[this.geneID].chrom.pos = line[6];
                this.cItem[this.geneID].chrom.type = 1;
            }

        }
    }
    // 7. map location for this gene
    if (this.removeCommonDB(line[7]) !== null) {
        if (typeof this.cItem[this.geneID].chrom !== 'object') {
            this.cItem[this.geneID].chrom = {};
            c.chrom = {};
        }
        if (typeof c.chrom.loc === 'undefined' || c.chrom.loc === null) {
            // 8 125.55 cM, 12 2306.31 cM, 1 485.43 cM
            // X5;Y4, X5;Y4, X3;Y3
            // 21q22.3, Xq28, 14q14

            this.cItem[this.geneID].chrom.loc = line[7].trim();
        }
    }

    // 8 Gene description
    if (this.removeCommonDB(line[8]) !== null) {
        if (typeof c.desc === 'undefined') {
            this.cItem[this.geneID].desc = line[8].trim();
        }
    }
    // 9 Gene type
    if (this.removeCommonDB(line[9]) !== null) {
        if (typeof c.geneType === 'undefined') {
            var index = help.f.indexOf(['unknown', 'tRNA', 'rRNA', 'snRNA', 'scRNA', 'protein-coding', 'pseudo', 'transposon', 'miscRNA', 'ncRNA', 'other'], line[9]);
            // Insert only if found
            if (index !== -1) {
                this.cItem[this.geneID].geneType = index;
            }
        }
    }

    // if (this.geneID === 1131){
    //         console.log(this.cItem);
    //         console.log(line);
    //         process.exit(1);
    // }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;
    
    console.log("Bulk counter: " + self.bulkCounter);
    console.log("cItem Length: " + self.cItem.length);

    if (self.options.insert === true && self.bulkCounter > 0) {

        if (self.geneID !== null && typeof self.cItem[self.geneID] === 'object') {
            self.bulkQuery.find({
                geneID: self.cItem[self.geneID].geneID
            }).upsert().updateOne({
                $set: self.cItem[self.geneID]
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
        return help.f.parseInt(v);
    }
};


// 6. ARRAY Identifiers in other databases (database:value) except: (HGNC:HGNC:1100)
// this.cItem[geneID].crossRefID = this.delimitArrayItems(line[6], c.crossRefID) || c.crossRefID;
parser.prototype.delimitArrayItems = function(str, array) {
    var delimited = str.split('|');
    if (typeof array === 'undefined') {
        array = new Array();
    }
    if (delimited.length > 0) {
        delimited.forEach(function(entry) {
            array.push(entry);
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
#Format: tax_id GeneID Symbol LocusTag Synonyms dbXrefs chromosome map_location description type_of_gene Symbol_from_nomenclature_authority Full_name_from_nomenclature_authority Nomenclature_status Other_designations Modification_date (tab is used as a separator, pound sign - start of a comment)
7       5692769 NEWENTRY        -       -       -       -       -       Record to support submission of GeneRIFs for a gene not in Gene (Azorhizobium caulinodans Dreyfus et al. 1988; Azotirhizobium caulinodans.  Use when strain, subtype, isolate, etc. is unspecified, or when different from all specified ones in Gene.).        other   -       -       -       -       20071023
9       1246500 repA1   pLeuDn_01       -       -       -       -       putative replication-associated protein protein-coding  -       -       -       -       20141002


tax_id
GeneID
Symbol
LocusTag
Synonyms
dbXrefs
chromosome
map location
description
type of gene
Symbol from nomenclature authority
Full name from nomenclature authority
Nomenclature status
Other designations
Modification date

*/
