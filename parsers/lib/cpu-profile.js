/**
 * Simple Node.js CPU Profiler
 * 
 * This module provides simple userland CPU profiling for Node.js applications,
 * leveraging the v8-profiler module. It facilitates starting, stopping, and saving
 * CPU profiling data at regular intervals.
 * 
 * Usage:
 * const cpuProfiler = require('./CpuProfiler');
 * cpuProfiler.init('path/to/data_directory');
 * 
 * @module CpuProfiler
 */

const fs = require('fs');
const profiler = require('v8-profiler-node8'); // Ensure compatibility and specify the version explicitly.

let _dataDir = null;

/**
 * Initiates CPU profiling.
 */
function startProfiling() {
    "use strict";
    const timestamp = Date.now();
    const profileId = `profile-${timestamp}`;
    console.log(`\nStart profiler with Id [${profileId}]\n`);

    profiler.startProfiling(profileId);

    // Automatically stop profiling after 10 seconds.
    setTimeout(() => stopProfiling(profileId), 10000);
}

/**
 * Stops CPU profiling and saves the profile data to a file.
 * 
 * @param {string} profileId - The identifier for the profiling session.
 */
function stopProfiling(profileId) {
    "use strict";
    const profile = profiler.stopProfiling(profileId);
    const savePath = `${_dataDir}/${profileId}.cpuprofile`;

    fs.writeFile(savePath, JSON.stringify(profile, null, 2), (err) => {
        if (err) {
            console.error(`Error writing profiler data: ${err}`);
        } else {
            console.log(`\nProfiler data written: ${savePath}\n`);
        }
    });
}

/**
 * Initializes and schedules profiler runs.
 * 
 * @param {string} dataDir - The directory to save the profiling data.
 */
exports.init = function (dataDir) {
    "use strict";
    _dataDir = dataDir;

    if (!fs.existsSync(_dataDir)) {
        console.error(`\nERROR: CPU PROFILE: Directory ${dataDir} does not exist, skipping!\n`);
    } else {
        // Schedule profiling to start every 30 seconds.
        setInterval(startProfiling, 30000);
    }
};
