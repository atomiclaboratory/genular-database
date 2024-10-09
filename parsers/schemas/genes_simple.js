const gene = {
    geneID: {
        type: Number
    },
    tax: {
        id: {
            type: Number,
            index: true
        },
        name: {
            name: {
                type: String
            },
            unique: {
                type: String
            },
            type: {
                type: Number
            },
        },
    },
    accession: {
        rna: {
            type: String
        },
        protein: [{
            type: String
        }],
        gene: [{
            type: String
        }],
        peptide: {
            type: String
        },
    },
    singleCellExpressions: {
        expressions: [{
            tissue_id: {
                type: String
            },
            disease_id: {
                type: String
            },
            cell_id: {
                type: String
            },
            values: [{
                experiment_id: {
                    type: Number
                },
                values: [{
                    type: Number
                }],
            }]
        }],
        cells: [{
            cell_id: {
                type: String
            },
            sum: {
                type: Number
            }
        }],
        tissues: [{
            type: String
        }],
        effectSizes: []
    },
    crossReference: {
        enseGeneID: {
            type: String
        },
        enseProtID: [{
            type: String
        }],
    },
    genePos: {
        start: {
            type: Number
        },
        end: {
            type: Number
        },
    },
    orientation: {
        type: String
    },
    symbol: {
        type: String,
        index: true
    },
    chrom: {
        pos: {
            type: Number
        },
        type: {
            type: String
        },
        loc: {
            type: String
        },
    },
    mim: [{
        id: {
            type: String,
            index: true
        },
        relation: {
            type: String
        },
        cui: {
            type: Number
        },
    }],
    ontology: [{
        id: {
            type: Number
        },
        term: {
            type: String
        },
        cat: {
            type: String
        },
        pubMed: [{
            type: Number
        }],
    }, ],
    geneRelations: [],
    geneDisorder: [{
        name: {
            type: String
        },
        loc: {
            type: String
        }
    }, ],
    protein: [{
        proteinID: {
            type: Number,
            index: {
                unique: true
            }
        },
        accession: [{
            type: String,
            index: true
        }],
        symbol: {
            type: String
        },
        name: {
            type: String
        },
        databaseIDs: {
            pdbID: [{
                type: String
            }],
        },
        citations: [],
        refSeq: {},
        proteinFamily: {},
        proteinMotifs: [],
        interactionPartners: [],
        sequence: {}
    }]
};
