var MongoClient = require('mongodb').MongoClient;
var bson = require('bson').BSONPure,
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
    self.cItem = {
        tax: {}
    };
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

            if (err) throw err;

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

/**
 * [processLine description]
 * @param  {[type]}   line     [description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
parser.prototype.processLine = function(line, callback) {
    var self = this;

    var bulkInsert = false;

    var line = line.substring(0, line.length - 2);
    var lineDelimited = line.split('\t|\t');
    // Check if line is Valid for current parser
    if (lineDelimited.length === 4) {

        // Do we have new Protein record? If yes reset our current Protein variable and add him to bulk query
        if (self.isNumber(self.cItem.tax.id) && self.cItem.tax.id !== parseInt(lineDelimited[0])) {

            if (self.options.insert === true && typeof self.cItem.tax.name[0] === 'object') {

                // self.bulkQuery.find( {"tax.id": self.cItem.tax.id} ).update( { $addToSet: { 'tax.name': self.cItem.tax.name }}, true );        
                self.bulkQuery.find({
                    "tax.id": self.cItem.tax.id
                }).update({
                    $set: {
                        'tax.name': self.cItem.tax.name
                    }
                }, true);

                if (self.options.debug === true) {
                    var last_test = self.cItem;
                }
                self.bulkCounter++;
                self.itemCounter++;
            }

            // Clear object reference
            self.cItem = {
                tax: {}
            };
            self.currentIndex = 0;

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
                    w: 1
                }, function(err, result) {
                    if (err) {
                        console.log(err);
                    }
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

/**
 * [extractLineData description]
 * @param  {[type]} line [description]
 * @return {[type]}      [description]
 */
parser.prototype.extractLineData = function(line) {
    var c = this.cItem;
    var changeIndex = false;
    // tax {
    //     id: null,
    //     name: [
    //         {
    //             name
    //             unique
    //             type
    //         }
    //     ]
    // }
    // 0  TAX ID
    if (this.removeCommonDB(line[0]) !== null && this.isNumber(line[0]) !== null) {
        if (typeof c.tax.id === 'undefined' || c.tax.id === null) {
            this.cItem.tax.id = parseInt(line[0]) || null;
        }
    }
    if (typeof this.cItem.tax.id !== 'undefined') {
        // 1. Tax name itself
        if (this.removeCommonDB(line[1]) !== null) {
            if (typeof this.cItem.tax.name === 'undefined'){
                this.cItem.tax.name = new Array();   
            }

            if (typeof this.cItem.tax.name[this.currentIndex] !== 'object'){
                this.cItem.tax.name[this.currentIndex] = {};   
            }

            if (typeof this.cItem.tax.name[this.currentIndex].name === 'undefined') {
                this.cItem.tax.name[this.currentIndex].name = line[1].replace(/\W+/g, " ");
                changeIndex = true;
            }
        }
        // 2. the unique variant of this name if name not unique
        if (this.removeCommonDB(line[2]) !== null) {
            if (typeof this.cItem.tax.name === 'undefined'){
                this.cItem.tax.name = new Array();   
            }

            if (typeof this.cItem.tax.name[this.currentIndex] !== 'object'){
                this.cItem.tax.name[this.currentIndex] = {};   
            }

            if (typeof this.cItem.tax.name[this.currentIndex].unique === 'undefined' && line[2].length > 1) {
                this.cItem.tax.name[this.currentIndex].unique = line[2].replace(/\W+/g, " ");
                changeIndex = true;
            }
        }

        // 3. name class: synonym, common name
        if (this.removeCommonDB(line[3]) !== null) {
            if (typeof this.cItem.tax.name === 'undefined'){
                this.cItem.tax.name = new Array();   
            }

            if (typeof this.cItem.tax.name[this.currentIndex] !== 'object'){
                this.cItem.tax.name[this.currentIndex] = {};   
            }

            if (typeof this.cItem.tax.name[this.currentIndex].type === 'undefined') {
                // http://www.ncbi.nlm.nih.gov/IEB/ToolBox/CPP_DOC/lxr/source/include/objects/taxon1/taxon1.hpp 
                var index = help.f.indexOf(['scientific name', 'synonym', 'genbank synonym', 'common name', 'genbank common name', 'blast name', 'acronym', 'genbank acronym', 'anamorph', 'genbank anamorph', 'teleomorph', 'equivalent name', 'includes', 'in-part', 'misnomer', 'equivalent name', 'misspelling'], line[3]);

                if (index !== -1) {
                    this.cItem.tax.name[this.currentIndex].type = index;
                    changeIndex = true;
                }
            }
        }
    }

    // var size = bson.BSON.calculateObjectSize(this.cItem);
    // if(size > 1000000){
    //     console.log(this.cItem);
    //     process.exit(0);
    // }
    // var size = bson.BSON.calculateObjectSize(this.cItem);
    // if(this.cItem.tax.name.length > 100 || size > 1000000){        
    //     console.log(JSON.stringify(this.cItem));
    //     console.log(size);
    //     process.exit(0);
    // }
    // Check if we should change index
    if (changeIndex === true) {
        // console.log("**************************");
        // console.log(JSON.stringify(this.cItem));
        this.currentIndex++;
    }
};

/**
 * [processingEnd description]
 * @param  {Function} callback [description]
 * @return {[type]}            [description]
 */
parser.prototype.processingEnd = function(callback) {
    var self = this;

    if (self.options.insert === true && self.bulkCounter > 0) {
        // Only add last item if has tax.id else just insert remaining bulk
        if (self.isNumber(self.cItem.tax.id) && typeof self.cItem.tax.name[0] === 'object') {

            // var size = bson.BSON.calculateObjectSize(self.cItem);            
            // console.log(JSON.stringify(self.cItem));
            // console.log(JSON.stringify(self.cItem.tax.id));
            // console.log("\r\n" + self.bulkCounter);
            // console.log(size); 

            self.bulkQuery.find({
                "tax.id": self.cItem.tax.id
            }).update({
                $set: {
                    'tax.name': self.cItem.tax.name
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

parser.prototype.removeCommonDB = function(str) {
    if (str.length === 1) {
        if (str === '-' || str === '?') {
            return null;
        }
    }
    return str;
};

/*
1       |       all     |               |       synonym |
1       |       root    |               |       scientific name |
2       |       Bacteria        |       Bacteria <prokaryote>   |       scientific name |
2       |       Monera  |       Monera <Bacteria>       |       in-part |
2       |       Procaryotae     |       Procaryotae <Bacteria>  |       in-part |
7       |       ATCC 43989      |               |       type material   |
7       |       Azorhizobium caulinodans        |               |       scientific name |
7       |       Azorhizobium caulinodans Dreyfus et al. 1988    |               |       synonym |
7       |       Azotirhizobium caulinodans      |               |       equivalent name |
7       |       CCUG 26647      |               |       type material   |
7       |       DSM 5975        |               |       type material   |
7       |       IFO 14845       |               |       type material   |
7       |       JCM 20966       |               |       type material   |
7       |       LMG 6465        |               |       type material   |
7       |       NBRC 14845      |               |       type material   |
7       |       ORS 571 |               |       type material   |
9       |       Acyrthosiphon pisum symbiont P  |               |       includes        |
9       |       Buchnera aphidicola     |               |       scientific name |
9       |       Buchnera aphidicola Munson et al. 1991  |               |       synonym |
10      |       "Cellvibrio" Winogradsky 1929   |               |       synonym |
10      |       Cellvibrio      |               |       scientific name |
10      |       Cellvibrio (ex Winogradsky 1929) Blackall et al. 1986 emend. Humphry et al. 2003        |               |       synonym |
11      |       "Cellvibrio gilvus" Hulcher and King 1958       |               |       authority       |
11      |       Cellvibrio gilvus       |               |       equivalent name |
11      |       [Cellvibrio] gilvus     |               |       scientific name |
13      |       Dictyoglomus    |               |       scientific name |
13      |       Dictyoglomus Saiki et al. 1985  |               |       authority       |


 docsExamined:17476096 nMatched:0 nModified:0 numYields:136903 locks:{ Global: { acquireCount: { r: 547609, w: 547609 } }, Database: { acquireCount: { w: 547609 } }, Collection: { acquireCount: { w: 547609 } } } 3676976ms
2017-04-27T01:00:58.707+0200 I WRITE    [conn3051] update genes.genes query: { tax.id: 1187667 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Lepidoptera sp XSBNHap_152", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136926 locks:{ Global: { acquireCount: { r: 547688, w: 547688 } }, Database: { acquireCount: { w: 547688 } }, Collection: { acquireCount: { w: 547688 } } } 3705544ms
2017-04-27T01:00:58.988+0200 I WRITE    [conn3148] update genes.genes query: { tax.id: 1217074 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Acanthamoeba sp EC2", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136929 locks:{ Global: { acquireCount: { r: 547727, w: 547727 } }, Database: { acquireCount: { w: 547727 } }, Collection: { acquireCount: { w: 547727 } } } 3669812ms
2017-04-27T01:00:59.333+0200 I WRITE    [conn1160] update genes.genes query: { tax.id: 207262 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Australaphodius", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136867 locks:{ Global: { acquireCount: { r: 684724, w: 684724 } }, Database: { acquireCount: { w: 684724 } }, Collection: { acquireCount: { w: 684724 } } } 3645285ms
2017-04-27T01:01:00.311+0200 I WRITE    [conn3105] update genes.genes query: { tax.id: 1203868 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Influenza A virus A Singapore GP2317 2009 H1N1 ", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136892 locks:{ Global: { acquireCount: { r: 547638, w: 547638 } }, Database: { acquireCount: { w: 547638 } }, Collection: { acquireCount: { w: 547638 } } } 3704985ms
2017-04-27T01:01:00.970+0200 I WRITE    [conn1126] update genes.genes query: { tax.id: 188504 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Etlingera venusta", type: 0 }, { name: "Etlingera venusta Ridl R M Sm " } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136916 locks:{ Global: { acquireCount: { r: 684767, w: 684767 } }, Database: { acquireCount: { w: 684767 } }, Collection: { acquireCount: { w: 684767 } } } 3712540ms
2017-04-27T01:01:03.921+0200 I WRITE    [conn1153] update genes.genes query: { tax.id: 203381 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "ATCC 76718", unique: "ATCC 76718 type material " }, { name: "CBS 190 92", unique: "CBS 190 92 type material " }, { name: "DAOM 213330", unique: "DAOM 213330 type material " }, { name: "Moniliella megachili", type: 16 }, { name: "Moniliella megachiliensis", type: 0 }, { name: "Trichosporonoides megachiliensis", type: 2 }, { name: "UAMH 6490", unique: "UAMH 6490 type material " } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136889 locks:{ Global: { acquireCount: { r: 684763, w: 684763 } }, Database: { acquireCount: { w: 684763 } }, Collection: { acquireCount: { w: 684763 } } } 3656643ms
2017-04-27T01:01:03.946+0200 I WRITE    [conn3081] update genes.genes query: { tax.id: 1198439 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Influenza A virus A chicken Menofia CAI33 2010 ", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136925 locks:{ Global: { acquireCount: { r: 547734, w: 547734 } }, Database: { acquireCount: { w: 547734 } }, Collection: { acquireCount: { w: 547734 } } } 3723973ms
2017-04-27T01:01:06.557+0200 I WRITE    [conn1167] update genes.genes query: { tax.id: 210969 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Haworthia cymbiformis", type: 0 }, { name: "Haworthia cymbiformis Haw Duval" } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136907 locks:{ Global: { acquireCount: { r: 684759, w: 684759 } }, Database: { acquireCount: { w: 684759 } }, Collection: { acquireCount: { w: 684759 } } } 3646615ms
2017-04-27T01:01:07.083+0200 I WRITE    [conn3021] update genes.genes query: { tax.id: 1179350 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Pseudomonas sp AMF2809", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136893 locks:{ Global: { acquireCount: { r: 547584, w: 547584 } }, Database: { acquireCount: { w: 547584 } }, Collection: { acquireCount: { w: 547584 } } } 3729091ms
2017-04-27T01:01:12.491+0200 I WRITE    [conn3138] update genes.genes query: { tax.id: 1213870 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Claroideoglomus sp 2 LB 2012", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136900 locks:{ Global: { acquireCount: { r: 547689, w: 547689 } }, Database: { acquireCount: { w: 547689 } }, Collection: { acquireCount: { w: 547689 } } } 3691000ms
2017-04-27T01:01:13.975+0200 I WRITE    [conn3073] update genes.genes query: { tax.id: 1195200 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Picobirnavirus monkey CHN 25 2002", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136935 locks:{ Global: { acquireCount: { r: 547698, w: 547698 } }, Database: { acquireCount: { w: 547698 } }, Collection: { acquireCount: { w: 547698 } } } 3695693ms
2017-04-27T01:01:14.045+0200 I WRITE    [conn3154] update genes.genes query: { tax.id: 1218248 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Influenza A virus A Guangdong 174 2011 H3N2 ", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136898 locks:{ Global: { acquireCount: { r: 547654, w: 547654 } }, Database: { acquireCount: { w: 547654 }, acquireWaitCount: { w: 1 }, timeAcquiringMicros: { w: 358144 } }, Collection: { acquireCount: { w: 547654 } } } 3720525ms
2017-04-27T01:01:14.160+0200 I WRITE    [conn3094] update genes.genes query: { tax.id: 1201143 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Chlorophytum gotenase", type: 16 }, { name: "Chlorophytum gothanense", type: 0 }, { name: "Chlorophytum gothanense Malpure S R Yadav" }, { name: "Chlorophytum gothanese", type: 16 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136909 locks:{ Global: { acquireCount: { r: 547675, w: 547675 } }, Database: { acquireCount: { w: 547675 } }, Collection: { acquireCount: { w: 547675 } } } 3697930ms
2017-04-27T01:01:17.446+0200 I WRITE    [conn1180] update genes.genes query: { tax.id: 218078 } planSummary: COLLSCAN update: { $set: { tax.name: [ { name: "Umbilia armeniaca", type: 0 } ] } } keysExamined:0 docsExamined:17476096 nMatched:0 nModified:0 numYields:136919 locks:{ Global: { acquireCount: { r: 684746, w: 684746 } }, Database: { acquireCount: { w: 684746 } }, Collection: { acquireCount: { w: 684746 } } } 3653988ms

*/
module.exports = parser;
