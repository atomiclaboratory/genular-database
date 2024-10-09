#!/bin/bash

# Ensure the script exits on any error
set -e

# Define constants
DATA_DIR="./bulk"
OMIM_BASE_URL="https://data.omim.org/downloads"

# Default API key as a fallback (should be replaced with a valid key if used)
FALLBACK_API_KEY="YOUR_PRIVATE_API_KEY_HERE"

# Check if the OMIM API key is defined in the environment, use fallback if not
if [ -z "${OMIM_API_KEY}" ]; then
    echo "OMIM_API_KEY environment variable is not set. Using the fallback API key."
    API_KEY=${FALLBACK_API_KEY}
else
    API_KEY=${OMIM_API_KEY}
fi

# Exit if the fallback API key has not been replaced with a valid key
if [ "${API_KEY}" == "YOUR_PRIVATE_API_KEY_HERE" ]; then
    echo "Error: API key is not set. Please set the OMIM_API_KEY environment variable or replace the fallback key in the script."
    exit 1
fi

# Helper function to download a file if it doesn't exist
download_if_absent() {
    local filename=$1
    local url=$2

    if [ ! -f "${DATA_DIR}/${filename}" ]; then
        echo "Downloading ${filename}..."
        wget --continue --output-document="${DATA_DIR}/${filename}" "${url}"
    else
        echo "${filename} already exists, skipping download."
    fi
}

# Create a data directory if it doesn't exist
mkdir -p ${DATA_DIR}

# Download necessary files
echo "Starting downloads from OMIM..."
download_if_absent "mim2gene.txt" "https://omim.org/static/omim/data/mim2gene.txt"
## (requires omim license)
# download_if_absent "mimTitles.txt" "${OMIM_BASE_URL}/${API_KEY}/mimTitles.txt"
# download_if_absent "morbidmap.txt" "${OMIM_BASE_URL}/${API_KEY}/morbidmap.txt"
# download_if_absent "genemap2.txt" "${OMIM_BASE_URL}/${API_KEY}/genemap2.txt"

echo "Downloads completed successfully."
