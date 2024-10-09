#!/bin/bash

# Script to download prosite.dat if not present in the bulk directory

# Constants
DATA_DIR="./bulk"
FILE_NAME="prosite.dat"
SOURCE_URL="ftp://ftp.expasy.org/databases/prosite/${FILE_NAME}"

# Create the data directory if it does not exist
mkdir -p ${DATA_DIR}

# Navigate to the data directory
cd ${DATA_DIR}

# Function to download the file if it is not present
download_file() {
    if [ ! -f "${FILE_NAME}" ]; then
        echo "Downloading ${FILE_NAME}..."
        wget --continue "${SOURCE_URL}"
    else
        echo "${FILE_NAME} already exists, skipping download."
    fi
}

# Execute the download function
download_file
