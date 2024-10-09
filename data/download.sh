#!/bin/sh

# This script downloads data from various sources and checks disk space usage.

# Define colors for printing
RED='\033[0;31m'
NC='\033[0m'  # No Color

# Define the directory to monitor disk space usage
CURRENT_HDD="/mnt/projects"

# Get the current script path
ROOT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

check_diskspace() {
    # Check the used disk space
    DISKSPACE=$(df -H "$CURRENT_HDD" | sed '1d' | awk '{print $5}' | cut -d'%' -f1)
    printf "Disk is currently in: ${RED}${DISKSPACE}%%${NC} capacity\n"
}

download_data() {
    local folder=$1

    printf "Downloading: ${RED}${folder}${NC}\n"

    cd "$ROOT_PATH/$folder" || exit

    chmod +x ./download.sh
    ./download.sh
    
    check_diskspace
}

# Check initial disk space usage
check_diskspace

# Download data from various sources
download_data "ncbi-gene"
download_data "ncbi-baseline"
# download_data "omim"
download_data "pfam"
download_data "prosite"
download_data "reactome"
download_data "string"
download_data "uniprot"

exit
