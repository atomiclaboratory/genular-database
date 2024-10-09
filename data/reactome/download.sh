#!/bin/bash

# Script for downloading necessary files and then building hierarchy

# Constants

ENSEMBL_FILE="Ensembl2Reactome_All_Levels.txt"
RELATION_FILE="ReactomePathwaysRelation.txt"
ENSEMBL_URL="https://reactome.org/download/current/${ENSEMBL_FILE}"
RELATION_URL="https://reactome.org/download/current/${RELATION_FILE}"

DATA_DIR="./bulk"
mkdir -p ${DATA_DIR}
cd ${DATA_DIR}

# Download function that checks if the file is absent and downloads it if necessary
download_file() {
    local file_name=$1
    local source_url=$2

    if [ ! -f "${file_name}" ]; then
        echo "Downloading ${file_name}..."
        wget --continue --output-document="${file_name}" "${source_url}"
    else
        echo "${file_name} already exists, skipping download."
    fi
}

# Download both files
download_file "${ENSEMBL_FILE}" "${ENSEMBL_URL}"
download_file "${RELATION_FILE}" "${RELATION_URL}"

# Execute build_hierarchy.js when both files are downloaded
echo "Building hierarchy..."

chmod +x ../build_hierarchy.js
## This takes a while
node ../build_hierarchy.js

if [ $? -ne 0 ]; then
    echo "Error: build_hierarchy.js failed." >&2
    exit 1
fi

