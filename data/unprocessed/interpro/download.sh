#!/bin/sh

# Create data dir if doesn't exist
mkdir -p ./bulk
# Enter data dir
cd ./bulk
# Delete all data except sys files
# rm  !(*.md|*.sh)

# Download Data and Extract it
if [ ! -f ./protein2ipr.dat ]; then
    wget --continue http://ftp.ebi.ac.uk/pub/databases/interpro/current/protein2ipr.dat.gz
    gzip -d "protein2ipr.dat.gz"
fi

if [ ! -f ./match_complete.xml ]; then
    wget --continue http://ftp.ebi.ac.uk/pub/databases/interpro/current/match_complete.xml.gz
    gzip -d "match_complete.xml.gz"
fi
