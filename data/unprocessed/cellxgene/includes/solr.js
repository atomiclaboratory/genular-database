import request from 'sync-request';

// Replace with your Solr server URL
const solrUrl = 'http://128.197.126.204:8983/solr/ols4_entities/select?wt=json&rows=10000&start=0';

/**
 * Finds a direct entry in the Solr database.
 * 
 * @param {string} curie - The CURIE identifier for the entry.
 * @returns {Promise<Object>} The Solr response data.
 */
export function findParentEntries(curieArray) {
    const curieQuery = curieArray.map(curie => `curie:"${curie}"`).join(' OR ');

    try {
        const res = request('POST', solrUrl, {
            json: { "params": { "q": "(" + curieQuery + ") AND ontologyId:cl AND isDefiningOntology:true" } },
        });
        return JSON.parse(res.getBody('utf8'));
    } catch (error) {
        console.error("Error querying Solr for direct entry:", error);
        throw error;
    }
}

/**
 * Finds all children entries of a given entry in the Solr database.
 * 
 * @param {string} iri - The IRI identifier for the parent entry.
 * @returns {Promise<Object>} The Solr response data.
 */
export function findChildrenEntries(iris) {
    const irisQuery = iris.map(iri => `directAncestor:"${iri}"`).join(' OR ');

    try {
        const res = request('POST', solrUrl, {
            json: { "params": { "q": "(" + irisQuery + ")  AND ontologyId:cl AND isDefiningOntology:true" } },
        });

        return JSON.parse(res.getBody('utf8'));
    } catch (error) {
        console.error("Error querying Solr for children entries:", error);
        throw error;
    }
}

export function escapeSolrValue(string) {
    const match = ['+', '-', '&', '|', '!', '(', ')', '{', '}', '[', ']', '^', '~', '*', '?', ':', '"', ';', ' ', '\\'];
    const replace = ['\\+', '\\-', '\\&', '\\|', '\\!', '\\(', '\\)', '\\{', '\\}', '\\[', '\\]', '\\^', '\\~', '\\*', '\\?', '\\:', '\\"', '\\;', '\\ ', '\\\\'];

    for (let i = 0; i < match.length; i++) {
        string = string.replace(new RegExp('\\' + match[i], 'g'), replace[i]);
    }

    // Replacement for CL0000576 to CL_0000576
    string = string.replace(/(CL)(\d+)/g, '$1_$2');

    return string;
}
