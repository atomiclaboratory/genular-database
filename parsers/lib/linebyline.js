const fs = require("fs"),
    clc = require("cli-color");

const { parser: jsonParser } = require("stream-json");
const { chain } = require("stream-chain");
const { streamValues } = require("stream-json/streamers/StreamValues");
const { streamObject } = require("stream-json/streamers/StreamObject");

// Basic console log colors
let error = clc.red.bold,
    warn = clc.yellow,
    notice = clc.blue;

// Function (Line by line) reader of large xml files 500GB>
const xml = function (parser, callback) {
    let self = this;
    // If Specified Files doesnt exsist, skip to next one
    if (!fs.existsSync(parser.file)) {
        console.log(warn("\r\nERROR: ") + notice("File: " + parser.file + " doesn't exist, skipping!\r\n"));
        return callback();
    }

    // Put all working vars to object for easy cleanup
    this.o = {
        parser: parser,
        _lines: [],
        _lineFragment: "",
        totalBytes: 0,
        currentMB: 0,
        insertedDocuments: 0,
        stats: fs.statSync(parser.file),
        diff: 0,
        perInsert: parser.proccesor.options.perInsert,
        // Document start and end positions
        nodes: {
            start: "<entry",
            end: "</entry>",
        },
        // Bulk current text (xml entry) container
        temp: "",
        // Check - are we in node or not
        inProcess: null,
    };

    const readable = fs.createReadStream(parser.file, {
        flags: "r",
        encoding: "utf8",
        mode: 0644,
        highWaterMark: 1024 * 1024,
        bufferSize: 1024 * 1024,
        autoClose: true,
    });

    if(this.o.parser.name === "proteinatlas"){
        this.o.trimWhitespace = true;

    }else{
        this.o.trimWhitespace = false;
    }

    readable.on("data", function (chunk) {
        let o = self.o;

        o.totalBytes = o.totalBytes + chunk.length;

        o._lines = o._lines.concat(chunk.toString("utf-8").split(/(?:\n|\r\n|\r)/g));
        o._lines[0] = o._lineFragment + o._lines[0];
        o._lineFragment = o._lines.pop() || "";

        while (o._lines.length !== 0) {
            let line = o._lines.shift();

            if(o.trimWhitespace){
                line = line.trimStart();
            }

            if (line.substring(0, o.nodes.start.length) === o.nodes.start) {
                o.inProcess = true;
            } else if (line.substring(0, o.nodes.end.length) === o.nodes.end) {
                o.inProcess = false;
            }

            if (o.inProcess === false && o.temp !== "") {
                o.temp = o.temp + line;


                //if(parser.startfromMB !== false && o.currentMB >= parser.startfromMB){
                o.parser.proccesor.processLine(o.temp, function (res) {
                    o.insertedDocuments += res.count || 0;
                });
                //}

                o.temp = "";
            } else if (o.inProcess === true) {
                o.temp += line;
            }
            // How many lines do we have?
            parser.counter.lines++;

            // Simple STATS Display
            if (o.parser.counter.lines % (o.perInsert * 2) === 0) {
                o.type = 1;
                stats(o);
            }

            // If there is too big difference between  parser.proccesor.itemCounter and o.insertedDocuments
            o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
            // Pause stream read process and wait until its finished
            if (o.diff >= o.perInsert * 3) {
                // Pause the read stream
                readable.pause();

                const interval = setInterval(function () {
                    o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
                    o.type = 2;
                    stats(o);
                    if (o.diff <= o.perInsert) {
                        // Remove Interval
                        clearInterval(interval);
                        // Resume the read stream
                        readable.resume();
                    }
                }, 1000);
                // Break current while loop
                break;
            }
            // If we set number of max objects to process break here
            if (o.parser.objectlimit !== false) {
                if (o.insertedDocuments >= o.parser.objectlimit) {
                    // Destroy read stream
                    readable.destroy();
                    readable.end(null);
                }
            }
        }
    });
    readable.on("end", function (chunk) {
        let o = self.o;
        // Wait until all items are inserted and then insert last batch and do callback
        const interval = setInterval(function () {
            o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);

            o.type = 3;
            stats(o);
            if (o.diff <= o.perInsert) {
                // Remove Interval
                clearInterval(interval);
                // Insert last bulk query into DB and return callback
                o.parser.proccesor.processingEnd(function (res) {
                    o.insertedDocuments += res.count;
                    o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);

                    // Reference o.insertedDocuments for update
                    const total = parseInt(o.insertedDocuments);
                    let index = false;
                    if (typeof o.parser.proccesor.createIndexies !== "undefined" && typeof o.parser.proccesor.createIndexies === "function") {
                        console.log(warn("\r\nCreating indexes! This can take a while..."));
                        index = true;
                        o.parser.proccesor.createIndexies(function () {
                            index = false;
                        });
                    }

                    const interval = setInterval(function () {
                        if (index === false) {
                            // Remove Interval
                            clearInterval(interval);
                            // Resume
                            // passed time from start in seconds
                            const milliseconds = new Date().getTime() - o.parser.time.start;
                            const timePassed = parseInt(millisToMin(milliseconds));

                            console.log(warn("\r\nDocuments : ") + notice(total));
                            console.log(warn("Differenc : ") + notice(o.diff));
                            console.log(warn("----Lines : ") + notice(o.parser.counter.lines));
                            console.log(warn("-----Time : ") + error(timePassed));

                            return callback();
                        }
                    }, 500);
                });
            }
        }, 1500);
    });
};

const text = function (parser, callback) {
    let self = this;
    // If Specified Files doesnt exsist, skip to next one
    if (!fs.existsSync(parser.file)) {
        console.log(warn("\r\nERROR : ") + notice("File: " + parser.file + " doesn't exist, skipping!\r\n"));
        return callback();
    }

    // Put all working vars to object for easy cleanup
    this.o = {
        parser: parser,
        _lines: [],
        _lineFragment: "",
        totalBytes: 0,
        currentMB: 0,
        insertedDocuments: 0,
        stats: fs.statSync(parser.file),
        diff: 0,
        perInsert: parser.proccesor.options.perInsert,
    };

    const readable = fs.createReadStream(parser.file, {
        flags: "r",
        encoding: "utf8",
        mode: 0644,
        highWaterMark: 1024 * 1024,
        bufferSize: 1024 * 1024,
        autoClose: true,
    });

    readable.on("data", function (chunk) {
        let o = self.o;

        o.totalBytes = o.totalBytes + chunk.length;
        // Convert chunk buffer to array string of lines
        o._lines = o._lines.concat(chunk.toString("utf-8").split(/(?:\n|\r\n|\r)/g));

        o._lines[0] = o._lineFragment + o._lines[0];
        o._lineFragment = o._lines.pop() || "";

        while (o._lines.length !== 0) {
            const line = o._lines.shift();
            // How many lines do we have?
            o.parser.counter.lines++;

            if (parser.startfromMB === false || o.currentMB >= parser.startfromMB) {
                o.parser.proccesor.processLine(line, function (res) {
                    o.insertedDocuments += res.count || 0;
                });
            }

            // Simple "random" STATS Display
            if (o.parser.counter.lines % (o.perInsert / 100) === 0) {
                o.type = 1;
                stats(o);
            }
            // If there is too big difference between  parser.processor.itemCounter(actual processed items) and o.insertedDocuments (inserted items)
            o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
            // Pause stream read process and wait until inserting in MONGO is finished
            if (o.diff >= o.perInsert * 3) {
                // Pause the read stream
                readable.pause();

                const interval = setInterval(function () {
                    o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
                    o.type = 2;
                    stats(o);
                    if (o.diff <= o.perInsert) {
                        // Remove Interval
                        clearInterval(interval);
                        // Resume the read stream
                        readable.resume();
                    }
                }, 1000);
                // Break current while loop
                break;
            }

            // If we set number of max objects to process break here
            if (o.parser.objectlimit !== false) {
                if (o.insertedDocuments >= o.parser.objectlimit) {
                    // Destroy read stream
                    readable.destroy();
                    readable.end(null);
                }
            }
        } // While loop
    });

    readable.on("end", function (chunk) {
        let o = self.o;

        // Wait until all items are inserted and then insert last batch and do callback
        const interval = setInterval(function () {
            o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
            o.type = 3;
            stats(o);
            if (o.diff <= o.perInsert) {
                // Remove Interval
                clearInterval(interval);
                // Insert last bulk query into DB and return callback
                console.log(warn("\r\nParser: processingEnd start.."));
                o.parser.proccesor.processingEnd(function (res) {
                    console.log(warn("Parser: processingEnd Finished!"));

                    o.insertedDocuments += res.count;
                    o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
                    // Reference o.insertedDocuments for update
                    const total = parseInt(o.insertedDocuments);
                    let index = false;

                    if (typeof o.parser.proccesor.createIndexies !== "undefined" && typeof o.parser.proccesor.createIndexies === "function") {
                        console.log(warn("\r\nCreating indexes! This can take a while..."));
                        index = true;
                        o.parser.proccesor.createIndexies(function () {
                            index = false;
                        });
                    }

                    var interval = setInterval(function () {
                        if (index === false) {
                            // Remove Interval
                            clearInterval(interval);
                            // Resume
                            // passed time from start in seconds
                            const milliseconds = new Date().getTime() - o.parser.time.start;
                            const timePassed = parseInt(millisToMin(milliseconds));

                            console.log(warn("\r\nDocuments : ") + notice(total));
                            console.log(warn("Differenc : ") + notice(o.diff));
                            console.log(warn("----Lines : ") + notice(o.parser.counter.lines));
                            console.log(warn("-----Time : ") + error(timePassed));

                            return callback();
                        }
                    }, 500);
                });
            }
        }, 1500);
    });
};

const json = function (parser, callback) {
    let self = this;
    if (!fs.existsSync(parser.file)) {
        console.log(warn("\r\nERROR: ") + notice("File: " + parser.file + " doesn't exist, skipping!\r\n"));
        return callback();
    }

    this.o = {
        parser: parser,
        buffer: "",
        totalBytes: 0,
        insertedDocuments: 0,
        stats: fs.statSync(parser.file),
        diff: 0,
        perInsert: parser.proccesor.options.perInsert,
    };

    const readable = chain([fs.createReadStream(parser.file), jsonParser(), streamObject()]);

    readable.on("data", (data) => {
        let o = self.o;

        o.totalBytes = o.totalBytes + JSON.stringify(data).length;
        // How many lines do we have?
        o.parser.counter.lines++;
        o.parser.proccesor.processLine(data, (res) => {
            o.insertedDocuments += parseInt(res.count) || 0;
        });
        o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);

        // Simple "random" STATS Display
        if (o.parser.counter.lines % (o.perInsert / 100) === 0) {
            o.type = 1;
            stats(o);
        }

        // If there is too big difference between  parser.processor.itemCounter(actual processed items) and o.insertedDocuments (inserted items)
        o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
        // Pause stream read process and wait until inserting in MONGO is finished
        if (o.diff >= o.perInsert * 3) {
            // Pause the read stream
            readable.pause();

            const interval = setInterval(function () {
                o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);
                o.type = 2;
                stats(o);
                if (o.diff <= o.perInsert) {
                    // Remove Interval
                    clearInterval(interval);
                    // Resume the read stream
                    readable.resume();
                }
            }, 1000);
        }

        // If we set number of max objects to process break here
        if (o.parser.objectlimit !== false) {
            if (o.insertedDocuments >= o.parser.objectlimit) {
                // Destroy read stream
                readable.destroy();
                readable.end(null);
            }
        }
    });

    readable.on("end", () => {
        let o = self.o;
        // Wait until all items are inserted and then insert last batch and do callback
        const interval = setInterval(function () {
            o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);

            o.type = 3;
            stats(o);
            if (o.diff <= o.perInsert) {
                // Remove Interval
                clearInterval(interval);
                // Insert last bulk query into DB and return callback
                o.parser.proccesor.processingEnd(function (res) {
                    o.insertedDocuments += res.count;
                    o.diff = parseInt(o.parser.proccesor.itemCounter - o.insertedDocuments);

                    // Reference o.insertedDocuments for update
                    const total = parseInt(o.insertedDocuments);
                    let index = false;
                    if (typeof o.parser.proccesor.createIndexies !== "undefined" && typeof o.parser.proccesor.createIndexies === "function") {
                        console.log(warn("\r\nCreating indexes! This can take a while..."));
                        index = true;
                        o.parser.proccesor.createIndexies(function () {
                            index = false;
                        });
                    }

                    const interval = setInterval(function () {
                        if (index === false) {
                            // Remove Interval
                            clearInterval(interval);
                            // Resume
                            // passed time from start in seconds
                            const milliseconds = new Date().getTime() - o.parser.time.start;
                            const timePassed = parseInt(millisToMin(milliseconds));

                            console.log(warn("\r\nDocuments : ") + notice(total));
                            console.log(warn("Differenc : ") + notice(o.diff));
                            console.log(warn("----Lines : ") + notice(o.parser.counter.lines));
                            console.log(warn("-----Time : ") + error(timePassed));

                            return callback();
                        }
                    }, 500);
                });
            }
        }, 1500);
    });

    readable.on("error", (error) => {
        console.error("An error occurred while processing the JSON file: " + parser.file);
        console.log(error);
        console.log(this.o.insertedDocuments);
    });
};

// HELPER FUNCTIONS
const stats = function (o) {
    o.currentMB = (o.totalBytes / 1000000).toFixed(2);

    const remaningMB = parseInt(o.stats["size"] / 1000000 - o.currentMB).toFixed(2);
    const currentTime = new Date().getTime();
    // passed time from start in seconds
    const milliseconds = parseInt(currentTime - o.parser.time.start);
    // Convert Milliseconds to seconds
    const seconds = parseInt((milliseconds % 60000) / 1000).toFixed(0);

    const passed = parseInt(millisToMin(milliseconds));
    // Estimate remaining time in minutes
    const eta = Math.round((remaningMB / o.currentMB) * passed);
    const inserts = Math.round(o.insertedDocuments / o.perInsert);

    process.stdout.clearLine();
    process.stdout.cursorTo(0);

    process.stdout.write(
        warn("Type: ") +
            error(o.type) +
            warn(" Time Passed (min): ") +
            notice(passed) +
            " " +
            warn(" (sec): ") +
            error(seconds) +
            warn(" Line: ") +
            notice(o.parser.counter.lines) +
            warn(" Inserted: ") +
            notice(o.insertedDocuments) +
            warn(" Current (MB): ") +
            notice(o.currentMB) +
            " " +
            warn(" Remaining (MB): ") +
            notice(remaningMB) +
            " MB" +
            warn(" ETA (min): ") +
            notice(eta) +
            " " +
            warn(" Diff (process/inserted): ") +
            error(o.diff) +
            " " +
            warn(" Per/Insert: ") +
            error(o.perInsert) +
            " " +
            warn(" Inserts (total): ") +
            error(inserts) +
            "\r"
    );
};

const millisToMin = function (millis) {
    return parseInt(Math.floor(millis / 60000));
};

function updateJSONState(state, line) {
    if (state === null && line.trim().startsWith("{")) {
        return "start";
    } else if (state === "start" && line.trim().endsWith("}")) {
        return "end";
    }
    return state;
}

module.exports = {
    xml: xml,
    text: text,
    json: json,
    mils: millisToMin,
};
