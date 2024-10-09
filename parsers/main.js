// Required module for colored console output
const clc = require("cli-color");

// Import the custom line-by-line file processing library
const reader = require("./lib/linebyline.js");

// Load environment variables from a .env file
require('dotenv').config();

// Define CLI color themes for different message types
const error = clc.red.bold,
    warn = clc.yellow,
    notice = clc.blue;

/**
 * Specifies the data source directory based on the environment variable MODE.
 * Default value is "bulk". It can also be set to "test_data" for testing purposes.
 */
const MODE = process.env.MODE || "bulk";

/**
 * Configuration array containing details for each parser module.
 * Each object in the array specifies the name, file path, data type, parser module,
 * and options for handling the data (e.g., dropOnInit, insert, debug, perInsert).
 */
const config = [
    // Example configuration for the "gene2accession" parser
    {
        name: "gene2accession",
        file: "../data/ncbi-gene/" + MODE + "/gene2accession",
        type: "text",
        object: require("./parsers/ncbi-gene/gene2accession.js"),
        options: {
            dropOnInit: true,
            insert: true,
            debug: false,
            perInsert: 500000,
        }
    },
    {
        name: "gene2pubmed",
        file: "../data/ncbi-gene/" + MODE + "/gene2pubmed",
        type: "text",
        object: require("./parsers/ncbi-gene/gene2pubmed.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 250000,
        }
    },
    {
        name: "gene2refseq",
        file: "../data/ncbi-gene/" + MODE + "/gene2refseq",
        type: "text",
        object: require("./parsers/ncbi-gene/gene2refseq.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 250000,
        }
    },
    {
        name: "gene_info",
        file: "../data/ncbi-gene/" + MODE + "/gene_info",
        type: "text",
        object: require("./parsers/ncbi-gene/gene_info.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 250000,
        }
    },
    {
        name: "gene2ensembl",
        file: "../data/ncbi-gene/" + MODE + "/gene2ensembl",
        type: "text",
        object: require("./parsers/ncbi-gene/gene2ensembl.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 100000,
        }
    },
    {
        name: "cellXgene",
        file: "../data/cellxgene/" + MODE + "/data.processed.json",
        type: "json",
        object: require("./parsers/cellxgene/cellxgene.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 50, // Humans have appx 25k protein-coding genes
        }
    },
    {
        name: "taxdump",
        file: "../data/ncbi-gene/" + MODE + "/names.dmp",
        type: "text",
        object: require("./parsers/ncbi-gene/taxdump.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 100000,
        }
    },
    {
        name: "mim2gene_medgen",
        file: "../data/ncbi-gene/" + MODE + "/mim2gene_medgen",
        type: "text",
        object: require("./parsers/ncbi-gene/mim2gene_medgen.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 2500,
        }
    },
    {
        name: "gene2go",
        file: "../data/ncbi-gene/" + MODE + "/gene2go",
        type: "text",
        object: require("./parsers/ncbi-gene/gene2go.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 100000,
        }
    },
    {
        name: "ensembl2reactome",
        file: "../data/reactome/" + MODE + "/ReactomePathwaysRelation_With_Hierarchy.txt",
        type: "text",
        object: require("./parsers/reactome/ensembl2reactome.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 100000,
        }
    },
    {
        name: "gene_group",
        file: "../data/ncbi-gene/" + MODE + "/gene_group",
        type: "text",
        object: require("./parsers/ncbi-gene/gene_group.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 2500,
        }
    },
    // {
    //     name: "mim2gene",
    //     file: "../data/omim/" + MODE + "/mim2gene.txt",
    //     type: "text",
    //     object: require("./parsers/omim/mim2gene.js"),
    //     options: {
    //         dropOnInit: false,
    //         insert: true,
    //         debug: false,
    //         perInsert: 2500,
    //     }
    // },
    // {
    //     name: "morbidmap", // (requires omim license)
    //     file: "../data/omim/" + MODE + "/morbidmap.txt",
    //     type: "text",
    //     object: require("./parsers/omim/morbidmap.js"),
    //     options: {
    //         dropOnInit: false,
    //         insert: true,
    //         debug: false,
    //         perInsert: 2500,
    //     }
    // },
    {
        name: "uniprot_sprot",
        file: "../data/uniprot/" + MODE + "/uniprot_sprot.xml",
        type: "xml",
        object: require("./parsers/uniprot/uniprot_sprot.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 250000,
        }
    },
    {
        name: "uniprot_trembl",
        file: "../data/uniprot/" + MODE + "/uniprot_trembl.xml",
        type: "xml",
        object: require("./parsers/uniprot/uniprot_trembl.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 250000,
        }
    },
    {
        name: "idmapping_selected",
        file: "../data/uniprot/" + MODE + "/idmapping_selected.tab",
        type: "text",
        object: require("./parsers/uniprot/idmapping_selected.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 2500,
        }
    },
    {
        name: "proteinatlas",
        file: "../data/proteinatlas/" + MODE + "/proteinatlas.xml",
        type: "xml",
        object: require("./parsers/proteinatlas/proteinatlas.js"),
        options: {
            dropOnInit: false,
            insert: true,
            debug: false,
            perInsert: 1000,
        }
    }
];

/**
 * Queue constructor function for managing the sequential processing of data files.
 * Initializes statistics and starts processing the first item in the queue.
 */
const Queue = function() {
    this.stats = {
        start: new Date().getTime(),
    };

    this.currentItem = 0;

    // "false" to process all, name of parser like (uniprot_sprot) to process only him
    this.limitbyname = false;
    // False or number array
    // 10 - limit to morbidmap, 12- uniprot trembl
    this.limitbycount = false;
    // Start from this config file
    // 2- gene_info, 10 - uniprot_sprot
    this.startfrom = false;

    // Automatically start processing
    this.nextItem();
};
/**
 * Advances the queue to process the next item. If all items are processed, it finalizes the statistics.
 */
Queue.prototype.nextItem = function() {
    if (this.currentItem < config.length) {
        this.lunchItem();
    } else {
        this.stats.end = new Date().getTime();
        this.processingDone();
    }
};

/**
 * Marks the processing as complete and outputs the total processing time.
 */
Queue.prototype.processingDone = function() {
    var milliseconds = this.stats.end - this.stats.start;
    var total = reader.mils(milliseconds);

    console.log(clc.yellow("********************************************************"));
    console.log(clc.yellow("**********") + clc.yellow.bgWhite.underline("All databases processing is finished") + clc.yellow("**********"));
    console.log(clc.yellow("********************************************************"));
    console.log(clc.yellow("Total Time: ") + clc.blue(total));
    // Everything is done, we can kill our program now.
    process.exit();
};

/**
 * Initializes and processes each parser based on the configuration.
 * Supports processing of text, XML, and JSON data formats.
 */
Queue.prototype.lunchItem = function() {
    var self = this;

    var i = self.currentItem;
    var parser = config[i];

    // If limit by count seq is active exit process after limit is reached
    if (self.limitbycount !== false && i >= self.limitbycount) {
        self.currentItem++;
        return self.nextItem();
    }
    // If limit by name exist pass until right name is acquired
    if (self.limitbyname !== false && self.limitbyname !== parser.name) {
        self.currentItem++;
        return self.nextItem();
    }
    // If current item is smaller then start from var
    if (self.startfrom !== false && this.currentItem < this.startfrom) {
        self.currentItem++;
        return self.nextItem();
    }

    // Default options for parsers (can be overridden in parser option {})
    /**
     * [options description]
     * @type {Object}
     */
    const options = {
        dbPath: `mongodb://${process.env.MONGO_DB_USER}:${process.env.MONGO_DB_PASS}@${process.env.MONGO_DB_HOST}:${process.env.MONGO_DB_PORT}/${process.env.MONGO_DB_NAME}`,
        // dbPath: 'mongodb://127.0.0.1:27017/genes',
        // Where should we save JSON objects if we write them to FS
        fsPath: "/tmp/genes",
        dropOnInit: false,
        insert: true,
        debug: false,
        // Type: 0 - filesystem || 1 - database (should we process all first on file-system or directly insert into database?)
        type: 1,
        perInsert: 2000,
    };
    // Default option for reader (xml || text)
    // Reset active parser variable
    /**
     * [readeroptions description]
     * @type {Object}
     */
    const readeroptions = {
        name: parser.name,
        proccesor: null,
        file: parser.file,
        time: {
            start: new Date().getTime(),
            end: null,
        },
        counter: {
            lines: 0,
        },
        // Limit inserting of files by this processed object number
        objectlimit: false,
        // Start inserting from this MB - Default false
        startfromMB: false,
    };
    // Assign custom options variable to parser options and reader options
    if (typeof parser.options !== "undefined") {
        if (typeof parser.options.dbPath !== "undefined") options.dbPath = parser.options.dbPath;
        if (typeof parser.options.dropOnInit !== "undefined") options.dropOnInit = parser.options.dropOnInit;
        if (typeof parser.options.insert !== "undefined") options.insert = parser.options.insert;
        if (typeof parser.options.debug !== "undefined") options.debug = parser.options.debug;
        if (typeof parser.options.perInsert !== "undefined") options.perInsert = parser.options.perInsert;
    }

    // Construct parser and on callback (after DB connection etc.. pass context to reader)
    if (parser.type === "text") {
        console.log(clc.yellow("********************************************************************"));
        console.log(clc.yellow("Name: ") + clc.red.bgWhite.underline(readeroptions.name));
        console.log(clc.blue("Creating pre-insert operations"));
        new parser.object(options, function(res) {
            console.log(clc.blue("INSERTING DATA STARTED: Configuration ID: ") + clc.red.bgWhite.underline(i));

            readeroptions.proccesor = this;
            // Process flat text file
            reader.text(readeroptions, function() {
                self.currentItem++;
                return self.nextItem();
            });
        });
    } else if (parser.type === "xml") {
        console.log(clc.yellow("********************************************************************"));
        console.log(clc.yellow("Name: ") + clc.red.bgWhite.underline(readeroptions.name));
        console.log(clc.blue("Creating pre-insert operations"));
        new parser.object(options, function(res) {
            console.log(clc.blue("INSERTING DATA STARTED: Configuration ID: ") + clc.red.bgWhite.underline(i));

            readeroptions.proccesor = this;
            // Process xml file
            reader.xml(readeroptions, function() {
                self.currentItem++;
                return self.nextItem();
            });
        });
    } else if (parser.type === "json") {
        console.log(clc.yellow("********************************************************************"));
        console.log(clc.yellow("Name: ") + clc.red.bgWhite.underline(readeroptions.name));
        console.log(clc.blue("Creating pre-insert operations"));
        new parser.object(options, function(res) {
            console.log(clc.blue("INSERTING DATA STARTED: Configuration ID: ") + clc.red.bgWhite.underline(i));

            readeroptions.proccesor = this;
            // Process json file
            reader.json(readeroptions, function() {
                self.currentItem++;
                return self.nextItem();
            });
        });
    } else {
        console.log(clc.red("Unknown parser type"));
    }
};

const quee = new Queue();
