#!/bin/bash

# Check if sufficient arguments were provided
if [ "$#" -ne 4 ]; then
    echo "Usage: $0 <username> <password> <database> <collection>"
    exit 1
fi

# Assign arguments to variables
USERNAME=$1
PASSWORD=$2
DATABASE=$3
COLLECTION=$4

# MongoDB shell command
MONGO_SHELL="mongosh"

# Construct the MongoDB connection string
MONGO_CONN_STR="-u $USERNAME -p $PASSWORD --authenticationDatabase admin $DATABASE"

# Index creation commands
$MONGO_SHELL $MONGO_CONN_STR --eval "
db.$COLLECTION.createIndex({ 'geneID': 1 }, { background: false, unique: true, name: 'geneID_idx' });
db.$COLLECTION.createIndex({ 'symbol': 1 }, { background: false, name: 'symbol_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1 }, { background: false, name: 'taxID_idx' });
db.$COLLECTION.createIndex({ 'crossReference.enseGeneID': 1 }, { background: false, name: 'enseGeneID_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1, 'symbol': 1 }, { background: false, name: 'taxID_symbol_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1, 'symbol': 1, 'ontology.cat': 1 }, { background: false, name: 'taxID_symbol_ontology_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1, 'geneID': 1 }, { background: false, name: 'taxID_geneID_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1, 'geneID': 1, 'ontology.cat': 1 }, { background: false, name: 'taxID_geneID_ontology_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1, 'crossReference.enseGeneID': 1 }, { background: false, name: 'taxID_ensemblGeneID_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1, 'crossReference.enseGeneID': 1, 'ontology.cat': 1 }, { background: false, name: 'taxID_ensemblGeneID_ontology_idx' });
db.$COLLECTION.createIndex({ 'protein.accession': 1 }, { background: false, name: 'proteinAccession_idx' });
db.$COLLECTION.createIndex({ 'geneID': 1, 'protein.proteinID': 1 }, { background: false, name: 'geneID_proteinID_idx' });

db.$COLLECTION.createIndex({ 'tax.id': 1, 'geneID': 1, 'singleCellExpressions.effectSizes.c': 1 }, { background: false, name: 'taxID_geneID_singleCellExpression_idx' });
db.$COLLECTION.createIndex({ 'tax.id': 1, 'symbol': 1, 'singleCellExpressions.effectSizes.c': 1 }, { background: false, name: 'taxID_symbol_singleCellExpression_idx' });
"

# Confirm completion
# db.$COLLECTION.createIndex({ 'mim.id': 1, 'geneID': 1 }, { background: false, name: 'mimID_geneID_idx' });

echo "Index creation commands executed."




#db.yourCollectionName.createIndex({"tax.id": 1, "singleCellExpressions.effectSizes.c": 1, "symbol": 1, "geneID": 1}, { background: false, name: 'taxID_singleCellExpression_symbol_geneID_idx' });
## db.genes.createIndex({ 'tax.id': 1, 'symbol': 1, "geneID": 1  }, { background: false, name: 'taxID_symbol_geneID_idx' });
#db.genes.createIndex({ 'symbol': 1, 'tax.id': 1  }, { background: false, name: 'symbol_taxID_idx' });
