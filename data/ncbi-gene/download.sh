#!/bin/bash

# Ensure the script exits on any error
set -e

# Define a base URL for downloading files
BASE_URL="ftp://ftp.ncbi.nih.gov/gene/DATA"

# Create and enter a data directory, creating it if it doesn't exist
DATA_DIR="./bulk"
mkdir -p ${DATA_DIR}
cd ${DATA_DIR}

# Function to download and decompress files if they don't exist
download_and_extract() {
    local filename=$1
    local url=$2
    local is_compressed=$3

    if [ ! -f ./${filename} ]; then
        echo "Downloading ${filename}..."
        wget --continue "${url}"

        if [ "${is_compressed}" = true ]; then
            echo "Decompressing ${filename}..."
            gzip -df "${filename}"
        fi
    else
        echo "${filename} already exists, skipping download."
    fi
}

# Download and extract gene data files
download_and_extract "gene2accession.gz" "${BASE_URL}/gene2accession.gz" true
download_and_extract "gene2pubmed.gz" "${BASE_URL}/gene2pubmed.gz" true
download_and_extract "gene2refseq.gz" "${BASE_URL}/gene2refseq.gz" true
download_and_extract "gene_info.gz" "${BASE_URL}/gene_info.gz" true
download_and_extract "gene2ensembl.gz" "${BASE_URL}/gene2ensembl.gz" true
download_and_extract "mim2gene_medgen" "${BASE_URL}/mim2gene_medgen" false
download_and_extract "gene2go.gz" "${BASE_URL}/gene2go.gz" true
download_and_extract "gene_group.gz" "${BASE_URL}/gene_group.gz" true

# Download taxonomy data if it does not exist
TAXONOMY_URL="ftp://ftp.ncbi.nlm.nih.gov/pub/taxonomy/taxdump.tar.gz"
if [ ! -f ./names.dmp ]; then
    echo "Downloading taxonomy data..."
    wget --continue "${TAXONOMY_URL}"
    tar -zxvf "taxdump.tar.gz" "names.dmp"
else
    echo "Taxonomy data already exists, skipping download."
fi
