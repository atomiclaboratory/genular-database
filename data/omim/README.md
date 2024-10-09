# OMIM Data Downloader

This script facilitates the automated downloading of specific genetic data files from the Online Mendelian Inheritance in Man (OMIM) database.

## Overview

The `download.sh` script ensures that essential genetic data files from OMIM are downloaded into a designated directory (`./bulk`). It verifies if each file already exists to avoid redundant downloads. The script is designed with error handling to halt execution if any download fails, ensuring the process's reliability.

## Prerequisites

- Unix-like environment (Linux, macOS, etc.)
- `wget` utility installed
- Internet connection
- OMIM_API_KEY environment variable set

## Usage

1. Clone this repository or download the `download.sh` script directly.
2. Modify the script's executable permissions:

```bash
chmod +x download.sh
```

Run the script:
```bash
./download.sh
```
The script will create and/or utilize a ./bulk directory for storing the downloaded files.

## Data Files
The following data files from OMIM are handled by the script:

mim2gene.txt
mimTitles.txt
morbidmap.txt
genemap2.txt

## Contributing
Contributions to improve the script or address issues are welcome. Please feel free to fork the repository, make changes, and submit a pull request.

