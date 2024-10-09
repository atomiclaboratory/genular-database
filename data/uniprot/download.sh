#!/bin/bash

# Script to download and extract UniProt XML datasets and ID mapping file if not present in the bulk directory

# Constants
DATA_DIR="./bulk"
BASE_URL="ftp://ftp.uniprot.org/pub/databases/uniprot/current_release/knowledgebase"

# Create the data directory if it doesn't already exist
mkdir -p ${DATA_DIR}

# Navigate to the data directory
cd ${DATA_DIR}

# Function for downloading and decompressing files
download_and_extract() {
    local file_name=$1
    local relative_path=$2

    echo "Checking ${file_name}..."

    if [ ! -f "${file_name}" ]; then
        echo "Downloading and extracting ${file_name}..."
        wget --continue "${BASE_URL}/${relative_path}/${file_name}.gz"
        gzip -df "${file_name}.gz"
    else
        echo "${file_name} already exists, skipping download."
    fi
}

# Execute downloads and extractions
download_and_extract "uniprot_sprot.xml" "complete"
download_and_extract "uniprot_trembl.xml" "complete"
download_and_extract "idmapping_selected.tab" "idmapping"
