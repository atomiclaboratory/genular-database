# Gene Data Downloader

This script automates the process of downloading and extracting various gene-related data files from the NCBI website.

## Overview

The `download.sh` script checks for the existence of specific gene data files in the `./bulk` directory. If a file is not present, the script downloads it from the NCBI FTP site and, if necessary, decompresses it. The script is designed to be idempotent, meaning it can be run multiple times without causing redundant downloads or extractions.

## Prerequisites

- Unix-like environment (Linux, macOS, etc.)
- `wget` and `gzip` utilities
- Sufficient storage space for the downloaded files

## Usage

To use the script, simply clone this repository or download the `download.sh` file, give it executable permissions, and run it:

```bash
chmod +x download.sh
./download.sh
```
The script will create a ./bulk directory if it doesn't exist and will then proceed to download and extract the necessary files into this directory.

## Data Files
The script handles the following files:

gene2accession
gene2pubmed
gene2refseq
gene_info
gene2ensembl
mim2gene_medgen
gene2go
gene_group
names.dmp (taxonomy data)

## Contributing
If you encounter any issues or have suggestions for improvements, please file an issue or submit a pull request.
