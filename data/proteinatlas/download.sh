#!/bin/sh


# Create data dir if doesn't exist
mkdir -p ./bulk
# Enter data dir
cd ./bulk
# Delete all data except sys files
# rm  !(*.md|*.sh)

# Download Data and Extract it

wget --continue http://www.proteinatlas.org/download/proteinatlas.xml.gz

# Extract the file
gzip -df proteinatlas.xml.gz
