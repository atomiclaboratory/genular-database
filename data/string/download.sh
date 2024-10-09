#!/bin/bash

# Script to download and extract protein.links.v11.0.txt if it's not present in the bulk directory

# Constants
DATA_DIR="./bulk"
COMPRESSED_FILE="protein.links.v11.0.txt.gz"
FILE_NAME="protein.links.v11.0.txt"
SOURCE_URL="https://stringdb-static.org/download/${COMPRESSED_FILE}"

# Create the data directory if it doesn't exist
mkdir -p ${DATA_DIR}

# Navigate to the data directory
cd ${DATA_DIR}

# Function to download and extract the file if it's not present
download_and_extract() {
    if [ ! -f "${FILE_NAME}" ]; then
        echo "Downloading and extracting ${FILE_NAME}..."
        wget --continue "${SOURCE_URL}"
        gzip -df "${COMPRESSED_FILE}"
    else
        echo "${FILE_NAME} already exists, skipping download."
    fi
}

# Execute the download and extraction function
download_and_extract
