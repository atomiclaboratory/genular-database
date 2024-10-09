'use strict';
var gen_crc_table = function() {
    var c;
    var crcTable = [];
    for (var n = 0; n < 256; n++) {
        c = n;
        for (var k = 0; k < 8; k++) {
            c = ((c & 1) ? (0xEDB88320 ^ (c >>> 1)) : (c >>> 1));
        }
        crcTable[n] = c;
    }
    return crcTable;
}
var crc_table = gen_crc_table();
/**
 * [helpers description]
 * @type {Object}
 */
var helpers = {
    options: {
        /*
        var validOptionNames = ['poolSize', 'ssl', 'sslValidate', 'sslCA', 'sslCert',
          'sslKey', 'sslPass', 'autoReconnect', 'noDelay', 'keepAlive', 'connectTimeoutMS',
          'socketTimeoutMS', 'reconnectTries', 'reconnectInterval', 'ha', 'haInterval',
          'replicaSet', 'secondaryAcceptableLatencyMS', 'acceptableLatencyMS',
          'connectWithNoPrimary', 'authSource', 'w', 'wtimeout', 'j', 'journal', 'forceServerObjectId',
          'serializeFunctions', 'ignoreUndefined', 'raw', 'promoteLongs', 'bufferMaxEntries',
          'readPreference', 'pkFactory', 'promiseLibrary', 'readConcern', 'maxStalenessSeconds',
          'loggerLevel', 'logger', 'promoteValues', 'promoteBuffers', 'promoteLongs',
          'domainsEnabled', 'keepAliveInitialDelay', 'checkServerIdentity'];
        */
        // http://mongodb.github.io/node-mongodb-native/2.2/api/MongoClient.html#connect
        dbConnect: {
            w: 1,
            journal: false,
            connectTimeoutMS: 1800000,
            socketTimeoutMS: 1800000,
            // https://docs.mongodb.com/manual/reference/log-messages/#log-messages-configure-verbosity
            loggerLevel: 'error'
        }
    },
    functions: {
        /**
         * [indexOf description]
         * @param  {[type]} arr  [description]
         * @param  {[type]} item [description]
         * @return {[type]}      [description]
         */
        indexOf: function(arr, item) {
            for (var i = 0, len = arr.length; i != len; i++) {
                if (arr[i] === item) {
                    return i
                }
            }
            return -1;
        },
        /**
         * [parseInt description]
         * @param  {[type]} string [description]
         * @return {[type]}        [description]
         */
        parseInt: function(string) {
            return +string;
        },
        /**
         * [isNumber description]
         * @param  {[type]}  v [description]
         * @return {Boolean}   [description]
         */
        isNumber: function(v) {
            if (v === "" || v === null) {
                return null;
            } else if (isNaN(v)) {
                return null;
            } else {
                return v;
            }
        },
        /**
         * [removeCommonDB description]
         * @param  {[type]} str [description]
         * @return {[type]}     [description]
         */
        removeCommonDB: function(str) {
            if (str.length === 1) {
                if (str === '-' || str === '?') {
                    return null;
                }
            }
            return str;
        },
        /**
         * [countChars  Count the number of occurrences of a character in a string]
         * @param  {[type]} char [description]
         * @param  {[type]} string [description]
         * * @return {[type]}   [init]
         */
        countChars: function(char, string) {
            var result = 0,
                i = 0;
            for (i; i < string.length; i++)
                if (string[i] == char) result++;
            return result;
        },
        /**
         * [countAminoAcids description]
         * @param  {[type]} protein [description]
         * @return {[type]}         [description]
         */
        countAminoAcids: function(protein) {
            var result = 0;
            var amino_acids = ['R', 'H', 'K', 'D', 'E', 'S', 'T', 'N', 'Q', 'C', 'U', 'G', 'P', 'A', 'V', 'I', 'L', 'M', 'F', 'Y', 'W'];
            for (var i = 0, len = amino_acids.length; i < len; i++) {
                var count = this.countChars(amino_acids[i], protein);
                result += count;
            }
            return result;
        },
        /**
         * [crc32 description]
         * @param  {[type]} str [description]
         * @return {[type]}     [description]
         */
        crc32: function(str) {
            var crc = 0 ^ (-1);
            for (var i = 0; i < str.length; i++) {
                crc = (crc >>> 8) ^ crc_table[(crc ^ str.charCodeAt(i)) & 0xFF];
            }
            return (crc ^ (-1)) >>> 0;
        }
    }
}
module.exports = {
    o: helpers.options,
    f: helpers.functions
};
