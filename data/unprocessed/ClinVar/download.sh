#!/bin/sh


# Create data dir if doesn't exist
mkdir -p ./bulk
# Enter data dir
cd ./bulk
# Delete all data except sys files
# rm  !(*.md|*.sh)

# Download Data and Extract it



wget --continue ftp://ftp.ncbi.nlm.nih.gov/pub/clinvar/xml/ClinVarFullRelease_00-latest.xml.gz
