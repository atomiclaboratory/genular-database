var mongo = require('mongodb');
var beautify = require('xml-beautifier');

var fs = require('fs'),
    path = require('path')
    mkdirp = require('mkdirp'),
    help = require('../../lib/helpers');
    
var resolve = path.resolve;
    
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
    if (self.options.type === 1) {
        // If we will insert in database this is only placeholder for initializeUnorderedBulkOp operations
        self.bulkQuery = null;
    } else if (self.options.type === 0) {
        // If we are inserting in file-system this will be array of objects
        self.bulkQuery = [];
    }
    // MongoDB Collection Placeholder
    self.collection = null;
    // MongoDB Database placeholder
    self.database = null;
    // MongoDB Connection Client
    self.client = null;

    // http://jsfiddle.net/byjvxexs/
    self.regex = {
        name: new RegExp("<fullName>([^<]+?)<\/fullName>", "m"),
        symbol: new RegExp("<name>([^<]+?)<\/name>", "m"),
        accession: new RegExp("<accession>([^<]+?)<\/accession>", "g"),
        geneID: new RegExp('<dbReference type="GeneID" id="([^"]+?)"\\/>', "g"), 
        databaseIDs: new RegExp('<dbReference type="([^"]*)" id="([^"]*)"\s*\/?>', "g"),
        reference: new RegExp("<reference[^>]+?>(?:(?!<\/reference>)).*?<\/reference>", "g"),
        reference_title: new RegExp("<title>([^<]+?)<\/title>", "g"),
        reference_pubmed: new RegExp('<dbReference type="PubMed" id="([^"]+?)"\/>', "g"),
        reference_doi: new RegExp('<dbReference type="DOI" id="([^"]+?)"\/>', "g"),
        sequence: new RegExp('<sequence length="([^"]+?)" mass="([^"]+?)" checksum="([^"]+?)" modified="([^"]+?)" version="([^"]+?)"( precursor="([^"]+?)")?( fragment="([^"]+?)")?>([^<]+?)<\/sequence>', "gim"),
        existence: new RegExp('<proteinExistence type="([^<]+?)"\/>', "m")
    }


    // Save current gene and add him to bulk after
    // self.cItem = {
    //     protein: {}
    // };
    self.cItem = [];
    self.geneID = null; 

    if (self.options.insert === true && self.options.type === 1) {
        mongo.MongoClient.connect(self.options.dbPath, help.o.dbConnect, function(err, client) {

            if (self.options.debug === true) {
                console.log("\r\nMongoDB connected.");
            } 

            if (err) {
                throw err;
            }

            self.client = client;
            self.database = self.client.db('genes');

            if (self.options.dropOnInit === true) {
                if (self.options.debug === true) console.log("\r\nDropping entire genes collection!");
                self.database.dropDatabase();
            }

            self.collection = self.database.collection('genes');
            self.bulkQuery = self.collection.initializeUnorderedBulkOp();

            return callback.call(self, true);
        });
    } else {
        return callback.call(self, true);
    }
};

parser.prototype.processLine = function(nodeXML, callback) {
    var self = this;
    var bulkInsert = false;

    // Do we have new Protein record? If yes reset our current Protein variable and add him to bulk query
    if (self.geneID !== null && typeof self.cItem[self.geneID] !== 'undefined') {

        if (self.options.insert === true && typeof self.cItem[self.geneID].protein.accession !== 'undefined') {
            
            self.bulkQuery.find({
                $and: [{
                    "protein.proteinID": { $ne: self.cItem[self.geneID].protein.proteinID }
                }, {
                    geneID: self.cItem[self.geneID].geneID
                }]
            }).upsert().updateOne({
                 $push: {
                    'protein': self.cItem[self.geneID].protein
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

        // Insert records when limit is reached
        if (self.bulkCounter !== 0 && self.bulkCounter % self.options.perInsert === 0) {
            bulkInsert = true;

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
                    count: self.options.perInsert
                });
            });
        }
    }

    // 1. Add nodeXML to current
    self.extractLineData(nodeXML);

    if (bulkInsert === false) {
        return callback({
            type: 2
        });
    } else {
        return callback({
            type: 3
        });
    }
};

// Function to remove <dbReference> inside <evidence>
parser.prototype.removeEvidenceDbReference = function(xml) {
    return xml.replace(/<evidence[^>]*>[\s\S]*?<dbReference[^>]*>[\s\S]*?<\/evidence>/g, match => {
        // Remove <dbReference> inside <evidence> while keeping <evidence> tag structure intact
        return match.replace(/<dbReference[^>]*\/>/g, '');
    });
};

parser.prototype.extractLineData = function(nodeXML) {
    
    // Preprocess to remove <dbReference> inside <evidence>
    nodeXML = this.removeEvidenceDbReference(nodeXML);

    var match = {
        name: null,
        symbol: null,
        accession: null,
        geneID: null,
        databaseIDs: {},
        citations: null,
        sequence: null,
        existence: null
    }


    match.geneID = this.regex.geneID.exec(nodeXML);

    this.regex.geneID.lastIndex = 0;

    if (match.geneID !== null && typeof match.geneID[1] !== 'undefined') {

        var geneID = match.geneID[1];
        if (geneID.length > 0) {
            geneID = parseInt(geneID);

            if (geneID !== this.geneID) {
                this.geneID = geneID;
                if (typeof this.cItem[geneID] !== 'object') {
                    this.cItem[geneID] = new Object();
                    this.cItem[geneID].protein = new Object();
                    this.cItem[geneID].geneID = geneID;
                }
            } else {
                return;
            }
        }
    }else{
         return;
    }

    var c = this.cItem[this.geneID];

    match.symbol = this.regex.symbol.exec(nodeXML);
    this.regex.symbol.lastIndex = 0;
    if (match.symbol !== null && typeof match.symbol[1] !== 'undefined') {
        var geneName = match.symbol[1];
        if (geneName.length > 0 && typeof c.protein.symbol === 'undefined') {
            this.cItem[this.geneID].protein.symbol = geneName;
        }
    }
    match.name = this.regex.name.exec(nodeXML);
    this.regex.name.lastIndex = 0;
    if (match.name !== null && typeof match.name[1] !== 'undefined') {
        var geneFullName = match.name[1];
        if (geneFullName.length > 0 && typeof c.protein.name === 'undefined') {
            this.cItem[this.geneID].protein.name = geneFullName;
        }
    }

    var accessions = [];
    var accessionsRes;
    while ((accessionsRes = this.regex.accession.exec(nodeXML)) != null) {
        var uniProtID = accessionsRes[1];
        if (uniProtID.length > 0 && typeof c.protein.accession === 'undefined') {
            accessions.push(uniProtID);
        }
    }
    if (accessions.length > 0) {
        this.cItem[this.geneID].protein.accession = accessions;
    }
    this.regex.accession.lastIndex = 0;


    // databaseIDs
    var databaseIDs = [];
    var databaseIDsRes;
    while ((databaseIDsRes = this.regex.databaseIDs.exec(nodeXML)) != null) {
        
        var databaseName = databaseIDsRes[1];
        var databaseID = databaseIDsRes[2];

        var index = help.f.indexOf(['PubMed', 'DOI', 'GeneID'], databaseName);

        if (index === -1) {
            if (typeof this.cItem[this.geneID].protein.databaseIDs === 'undefined'){
                this.cItem[this.geneID].protein.databaseIDs = {};
            }
            if (typeof this.cItem[this.geneID].protein.databaseIDs[databaseName] === 'undefined'){
                this.cItem[this.geneID].protein.databaseIDs[databaseName] = [];
            }
            this.cItem[this.geneID].protein.databaseIDs[databaseName].push(databaseID);
        }
    }
    this.regex.databaseIDs.lastIndex = 0; 

    var reference = [];
    var referenceRes;
    while ((referenceRes = this.regex.reference.exec(nodeXML)) != null) {
        reference.push(referenceRes[0].trim());
    }
    this.regex.reference.lastIndex = 0; 

    var references = [];
    if (reference.length > 0) {
        reference.forEach((reference_block) => {
            var citation = {};

            var match = this.regex.reference_title.exec(reference_block);
            this.regex.reference_title.lastIndex = 0; 
            if (match !== null && typeof match[1] !== 'undefined') {
                if (match[1].length > 0 ) {
                    citation.title = match[1].trim();
                }
            }

            var match = this.regex.reference_pubmed.exec(reference_block);
            this.regex.reference_pubmed.lastIndex = 0; 
            if (match !== null && typeof match[1] !== 'undefined') {
               if (match[1].length > 0 ) {
                    citation.pubmedID = match[1];
                }
            }
            var match = this.regex.reference_doi.exec(reference_block);
            this.regex.reference_doi.lastIndex = 0; 
            if (match !== null && typeof match[1] !== 'undefined') {
                if (match[1].length > 0 ) {
                    citation.doi = match[1];
                }
            }

            if (typeof citation.pubmedID !== 'undefined' || typeof citation.doi !== 'undefined') {
                references.push(citation);
            }
        });
    }

    if(references.length > 0){
        this.cItem[this.geneID].protein.citations = references;
    }
 
    match.sequence = this.regex.sequence.exec(nodeXML);
    this.regex.sequence.lastIndex = 0; 
    if (match.sequence !== null) {
        if (typeof this.cItem[this.geneID].protein.sequence === 'undefined'){
            this.cItem[this.geneID].protein.sequence = {};
        }

        if (typeof match.sequence[1] !== 'undefined' || typeof match.sequence[1] !== null) this.cItem[this.geneID].protein.sequence.length = parseInt(match.sequence[1]);
        if (typeof match.sequence[2] !== 'undefined' || typeof match.sequence[2] !== null) this.cItem[this.geneID].protein.sequence.mass = parseInt(match.sequence[2]);
        if (typeof match.sequence[3] !== 'undefined' || typeof match.sequence[3] !== null) this.cItem[this.geneID].protein.sequence.checksum = match.sequence[3];
        if (typeof match.sequence[4] !== 'undefined' || typeof match.sequence[4] !== null) this.cItem[this.geneID].protein.sequence.modified = new Date(match.sequence[4]);
        if (typeof match.sequence[5] !== 'undefined' || typeof match.sequence[5] !== null) this.cItem[this.geneID].protein.sequence.version = parseInt(match.sequence[5]);
        
        if (typeof match.sequence[10] !== 'undefined' || typeof match.sequence[10] !== null) this.cItem[this.geneID].protein.sequence.sequence = match.sequence[10];

    }

    match.existence = this.regex.existence.exec(nodeXML);
    this.regex.existence.lastIndex = 0; 
    if (match.existence !== null && typeof match.existence[1] !== 'undefined') {
        var existence = match.existence[1].toLowerCase();
        if (existence.length > 0 && typeof c.protein.existence === 'undefined') {
            var index = help.f.indexOf(['evidence at protein level', 'evidence at transcript level', 'inferred from homology', 'predicted', 'uncertain'], existence);

            if (index !== -1) {
                this.cItem[this.geneID].protein.existence = index;
            }
        }
    }

    // SPROT 1 - Verified genes | TREMBL 2 - predicted genes
    this.cItem[this.geneID].protein.relevance = 1;


    if(typeof this.cItem[this.geneID].protein.sequence === 'undefined'){
        console.log(nodeXML);
        console.log("================================================");
        console.log(this.regex.sequence);
        console.log(match.sequence);

        process.exit();
    }


    // Genular proteinID
    this.cItem[this.geneID].protein.proteinID = (
        parseInt(this.cItem[this.geneID].geneID) + 
        parseInt(this.cItem[this.geneID].protein.sequence.mass) + 
        parseInt(this.cItem[this.geneID].protein.sequence.length) +
        help.f.crc32(this.cItem[this.geneID].protein.sequence.sequence)
    );

    // if(typeof this.cItem[this.geneID].protein.accession !== 'undefined'){
    //     if(this.cItem[this.geneID].protein.accession === 'Q43495' || this.cItem[this.geneID].protein.accession === 'Q43495.1'){
    //         console.log(nodeXML);
    //         console.log(this.cItem);
    //         process.exit(0);
    //     }
    // }
};

parser.prototype.processingEnd = function(callback) {
    var self = this;
    
    if (self.options.insert === true && self.bulkCounter > 0 && self.options.type === 1) {

        if (self.geneID !== null) {
            if(typeof self.cItem[self.geneID] === 'object'){
                self.bulkQuery.find({
                    $and: [{
                        "protein.proteinID": { $ne: self.cItem[self.geneID].protein.proteinID }
                    }, {
                        geneID: self.cItem[self.geneID].geneID
                    }]
                }).upsert().updateOne({
                     $push: {
                        'protein': self.cItem[self.geneID].protein
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

module.exports = parser;
