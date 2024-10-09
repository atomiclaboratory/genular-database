#!/bin/sh

# @Author: login
# @Date:   2018-10-25 10:50:02
# @Last Modified by:   LogIN

# Delete all files except readme and bash script

# Create data dir if doesn't exist
mkdir -p ./bulk
# Enter data dir
cd ./bulk
# Delete all data except sys files
# rm  !(*.md|*.sh)

# Download Data and Extract it
if [ ! -f pubmed21n0001.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0001.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0001.xml.gz"
  if ! gzip -d "pubmed21n0001.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0001.xml.gz"
    rm pubmed21n0001.xml.gz
  fi
fi
if [ ! -f pubmed21n0002.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0002.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0002.xml.gz"
  if ! gzip -d "pubmed21n0002.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0002.xml.gz"
    rm pubmed21n0002.xml.gz
  fi
fi
if [ ! -f pubmed21n0003.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0003.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0003.xml.gz"
  if ! gzip -d "pubmed21n0003.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0003.xml.gz"
    rm pubmed21n0003.xml.gz
  fi
fi
if [ ! -f pubmed21n0004.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0004.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0004.xml.gz"
  if ! gzip -d "pubmed21n0004.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0004.xml.gz"
    rm pubmed21n0004.xml.gz
  fi
fi
if [ ! -f pubmed21n0005.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0005.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0005.xml.gz"
  if ! gzip -d "pubmed21n0005.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0005.xml.gz"
    rm pubmed21n0005.xml.gz
  fi
fi
if [ ! -f pubmed21n0006.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0006.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0006.xml.gz"
  if ! gzip -d "pubmed21n0006.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0006.xml.gz"
    rm pubmed21n0006.xml.gz
  fi
fi
if [ ! -f pubmed21n0007.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0007.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0007.xml.gz"
  if ! gzip -d "pubmed21n0007.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0007.xml.gz"
    rm pubmed21n0007.xml.gz
  fi
fi
if [ ! -f pubmed21n0008.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0008.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0008.xml.gz"
  if ! gzip -d "pubmed21n0008.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0008.xml.gz"
    rm pubmed21n0008.xml.gz
  fi
fi
if [ ! -f pubmed21n0009.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0009.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0009.xml.gz"
  if ! gzip -d "pubmed21n0009.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0009.xml.gz"
    rm pubmed21n0009.xml.gz
  fi
fi
if [ ! -f pubmed21n0010.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0010.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0010.xml.gz"
  if ! gzip -d "pubmed21n0010.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0010.xml.gz"
    rm pubmed21n0010.xml.gz
  fi
fi
if [ ! -f pubmed21n0011.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0011.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0011.xml.gz"
  if ! gzip -d "pubmed21n0011.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0011.xml.gz"
    rm pubmed21n0011.xml.gz
  fi
fi
if [ ! -f pubmed21n0012.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0012.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0012.xml.gz"
  if ! gzip -d "pubmed21n0012.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0012.xml.gz"
    rm pubmed21n0012.xml.gz
  fi
fi
if [ ! -f pubmed21n0013.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0013.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0013.xml.gz"
  if ! gzip -d "pubmed21n0013.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0013.xml.gz"
    rm pubmed21n0013.xml.gz
  fi
fi
if [ ! -f pubmed21n0014.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0014.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0014.xml.gz"
  if ! gzip -d "pubmed21n0014.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0014.xml.gz"
    rm pubmed21n0014.xml.gz
  fi
fi
if [ ! -f pubmed21n0015.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0015.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0015.xml.gz"
  if ! gzip -d "pubmed21n0015.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0015.xml.gz"
    rm pubmed21n0015.xml.gz
  fi
fi
if [ ! -f pubmed21n0016.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0016.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0016.xml.gz"
  if ! gzip -d "pubmed21n0016.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0016.xml.gz"
    rm pubmed21n0016.xml.gz
  fi
fi
if [ ! -f pubmed21n0017.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0017.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0017.xml.gz"
  if ! gzip -d "pubmed21n0017.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0017.xml.gz"
    rm pubmed21n0017.xml.gz
  fi
fi
if [ ! -f pubmed21n0018.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0018.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0018.xml.gz"
  if ! gzip -d "pubmed21n0018.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0018.xml.gz"
    rm pubmed21n0018.xml.gz
  fi
fi
if [ ! -f pubmed21n0019.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0019.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0019.xml.gz"
  if ! gzip -d "pubmed21n0019.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0019.xml.gz"
    rm pubmed21n0019.xml.gz
  fi
fi
if [ ! -f pubmed21n0020.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0020.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0020.xml.gz"
  if ! gzip -d "pubmed21n0020.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0020.xml.gz"
    rm pubmed21n0020.xml.gz
  fi
fi
if [ ! -f pubmed21n0021.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0021.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0021.xml.gz"
  if ! gzip -d "pubmed21n0021.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0021.xml.gz"
    rm pubmed21n0021.xml.gz
  fi
fi
if [ ! -f pubmed21n0022.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0022.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0022.xml.gz"
  if ! gzip -d "pubmed21n0022.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0022.xml.gz"
    rm pubmed21n0022.xml.gz
  fi
fi
if [ ! -f pubmed21n0023.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0023.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0023.xml.gz"
  if ! gzip -d "pubmed21n0023.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0023.xml.gz"
    rm pubmed21n0023.xml.gz
  fi
fi
if [ ! -f pubmed21n0024.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0024.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0024.xml.gz"
  if ! gzip -d "pubmed21n0024.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0024.xml.gz"
    rm pubmed21n0024.xml.gz
  fi
fi
if [ ! -f pubmed21n0025.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0025.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0025.xml.gz"
  if ! gzip -d "pubmed21n0025.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0025.xml.gz"
    rm pubmed21n0025.xml.gz
  fi
fi
if [ ! -f pubmed21n0026.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0026.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0026.xml.gz"
  if ! gzip -d "pubmed21n0026.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0026.xml.gz"
    rm pubmed21n0026.xml.gz
  fi
fi
if [ ! -f pubmed21n0027.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0027.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0027.xml.gz"
  if ! gzip -d "pubmed21n0027.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0027.xml.gz"
    rm pubmed21n0027.xml.gz
  fi
fi
if [ ! -f pubmed21n0028.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0028.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0028.xml.gz"
  if ! gzip -d "pubmed21n0028.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0028.xml.gz"
    rm pubmed21n0028.xml.gz
  fi
fi
if [ ! -f pubmed21n0029.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0029.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0029.xml.gz"
  if ! gzip -d "pubmed21n0029.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0029.xml.gz"
    rm pubmed21n0029.xml.gz
  fi
fi
if [ ! -f pubmed21n0030.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0030.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0030.xml.gz"
  if ! gzip -d "pubmed21n0030.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0030.xml.gz"
    rm pubmed21n0030.xml.gz
  fi
fi
if [ ! -f pubmed21n0031.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0031.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0031.xml.gz"
  if ! gzip -d "pubmed21n0031.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0031.xml.gz"
    rm pubmed21n0031.xml.gz
  fi
fi
if [ ! -f pubmed21n0032.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0032.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0032.xml.gz"
  if ! gzip -d "pubmed21n0032.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0032.xml.gz"
    rm pubmed21n0032.xml.gz
  fi
fi
if [ ! -f pubmed21n0033.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0033.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0033.xml.gz"
  if ! gzip -d "pubmed21n0033.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0033.xml.gz"
    rm pubmed21n0033.xml.gz
  fi
fi
if [ ! -f pubmed21n0034.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0034.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0034.xml.gz"
  if ! gzip -d "pubmed21n0034.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0034.xml.gz"
    rm pubmed21n0034.xml.gz
  fi
fi
if [ ! -f pubmed21n0035.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0035.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0035.xml.gz"
  if ! gzip -d "pubmed21n0035.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0035.xml.gz"
    rm pubmed21n0035.xml.gz
  fi
fi
if [ ! -f pubmed21n0036.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0036.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0036.xml.gz"
  if ! gzip -d "pubmed21n0036.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0036.xml.gz"
    rm pubmed21n0036.xml.gz
  fi
fi
if [ ! -f pubmed21n0037.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0037.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0037.xml.gz"
  if ! gzip -d "pubmed21n0037.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0037.xml.gz"
    rm pubmed21n0037.xml.gz
  fi
fi
if [ ! -f pubmed21n0038.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0038.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0038.xml.gz"
  if ! gzip -d "pubmed21n0038.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0038.xml.gz"
    rm pubmed21n0038.xml.gz
  fi
fi
if [ ! -f pubmed21n0039.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0039.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0039.xml.gz"
  if ! gzip -d "pubmed21n0039.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0039.xml.gz"
    rm pubmed21n0039.xml.gz
  fi
fi
if [ ! -f pubmed21n0040.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0040.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0040.xml.gz"
  if ! gzip -d "pubmed21n0040.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0040.xml.gz"
    rm pubmed21n0040.xml.gz
  fi
fi
if [ ! -f pubmed21n0041.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0041.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0041.xml.gz"
  if ! gzip -d "pubmed21n0041.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0041.xml.gz"
    rm pubmed21n0041.xml.gz
  fi
fi
if [ ! -f pubmed21n0042.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0042.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0042.xml.gz"
  if ! gzip -d "pubmed21n0042.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0042.xml.gz"
    rm pubmed21n0042.xml.gz
  fi
fi
if [ ! -f pubmed21n0043.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0043.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0043.xml.gz"
  if ! gzip -d "pubmed21n0043.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0043.xml.gz"
    rm pubmed21n0043.xml.gz
  fi
fi
if [ ! -f pubmed21n0044.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0044.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0044.xml.gz"
  if ! gzip -d "pubmed21n0044.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0044.xml.gz"
    rm pubmed21n0044.xml.gz
  fi
fi
if [ ! -f pubmed21n0045.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0045.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0045.xml.gz"
  if ! gzip -d "pubmed21n0045.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0045.xml.gz"
    rm pubmed21n0045.xml.gz
  fi
fi
if [ ! -f pubmed21n0046.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0046.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0046.xml.gz"
  if ! gzip -d "pubmed21n0046.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0046.xml.gz"
    rm pubmed21n0046.xml.gz
  fi
fi
if [ ! -f pubmed21n0047.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0047.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0047.xml.gz"
  if ! gzip -d "pubmed21n0047.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0047.xml.gz"
    rm pubmed21n0047.xml.gz
  fi
fi
if [ ! -f pubmed21n0048.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0048.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0048.xml.gz"
  if ! gzip -d "pubmed21n0048.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0048.xml.gz"
    rm pubmed21n0048.xml.gz
  fi
fi
if [ ! -f pubmed21n0049.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0049.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0049.xml.gz"
  if ! gzip -d "pubmed21n0049.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0049.xml.gz"
    rm pubmed21n0049.xml.gz
  fi
fi
if [ ! -f pubmed21n0050.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0050.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0050.xml.gz"
  if ! gzip -d "pubmed21n0050.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0050.xml.gz"
    rm pubmed21n0050.xml.gz
  fi
fi
if [ ! -f pubmed21n0051.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0051.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0051.xml.gz"
  if ! gzip -d "pubmed21n0051.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0051.xml.gz"
    rm pubmed21n0051.xml.gz
  fi
fi
if [ ! -f pubmed21n0052.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0052.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0052.xml.gz"
  if ! gzip -d "pubmed21n0052.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0052.xml.gz"
    rm pubmed21n0052.xml.gz
  fi
fi
if [ ! -f pubmed21n0053.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0053.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0053.xml.gz"
  if ! gzip -d "pubmed21n0053.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0053.xml.gz"
    rm pubmed21n0053.xml.gz
  fi
fi
if [ ! -f pubmed21n0054.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0054.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0054.xml.gz"
  if ! gzip -d "pubmed21n0054.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0054.xml.gz"
    rm pubmed21n0054.xml.gz
  fi
fi
if [ ! -f pubmed21n0055.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0055.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0055.xml.gz"
  if ! gzip -d "pubmed21n0055.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0055.xml.gz"
    rm pubmed21n0055.xml.gz
  fi
fi
if [ ! -f pubmed21n0056.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0056.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0056.xml.gz"
  if ! gzip -d "pubmed21n0056.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0056.xml.gz"
    rm pubmed21n0056.xml.gz
  fi
fi
if [ ! -f pubmed21n0057.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0057.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0057.xml.gz"
  if ! gzip -d "pubmed21n0057.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0057.xml.gz"
    rm pubmed21n0057.xml.gz
  fi
fi
if [ ! -f pubmed21n0058.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0058.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0058.xml.gz"
  if ! gzip -d "pubmed21n0058.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0058.xml.gz"
    rm pubmed21n0058.xml.gz
  fi
fi
if [ ! -f pubmed21n0059.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0059.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0059.xml.gz"
  if ! gzip -d "pubmed21n0059.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0059.xml.gz"
    rm pubmed21n0059.xml.gz
  fi
fi
if [ ! -f pubmed21n0060.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0060.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0060.xml.gz"
  if ! gzip -d "pubmed21n0060.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0060.xml.gz"
    rm pubmed21n0060.xml.gz
  fi
fi
if [ ! -f pubmed21n0061.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0061.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0061.xml.gz"
  if ! gzip -d "pubmed21n0061.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0061.xml.gz"
    rm pubmed21n0061.xml.gz
  fi
fi
if [ ! -f pubmed21n0062.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0062.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0062.xml.gz"
  if ! gzip -d "pubmed21n0062.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0062.xml.gz"
    rm pubmed21n0062.xml.gz
  fi
fi
if [ ! -f pubmed21n0063.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0063.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0063.xml.gz"
  if ! gzip -d "pubmed21n0063.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0063.xml.gz"
    rm pubmed21n0063.xml.gz
  fi
fi
if [ ! -f pubmed21n0064.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0064.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0064.xml.gz"
  if ! gzip -d "pubmed21n0064.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0064.xml.gz"
    rm pubmed21n0064.xml.gz
  fi
fi
if [ ! -f pubmed21n0065.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0065.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0065.xml.gz"
  if ! gzip -d "pubmed21n0065.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0065.xml.gz"
    rm pubmed21n0065.xml.gz
  fi
fi
if [ ! -f pubmed21n0066.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0066.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0066.xml.gz"
  if ! gzip -d "pubmed21n0066.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0066.xml.gz"
    rm pubmed21n0066.xml.gz
  fi
fi
if [ ! -f pubmed21n0067.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0067.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0067.xml.gz"
  if ! gzip -d "pubmed21n0067.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0067.xml.gz"
    rm pubmed21n0067.xml.gz
  fi
fi
if [ ! -f pubmed21n0068.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0068.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0068.xml.gz"
  if ! gzip -d "pubmed21n0068.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0068.xml.gz"
    rm pubmed21n0068.xml.gz
  fi
fi
if [ ! -f pubmed21n0069.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0069.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0069.xml.gz"
  if ! gzip -d "pubmed21n0069.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0069.xml.gz"
    rm pubmed21n0069.xml.gz
  fi
fi
if [ ! -f pubmed21n0070.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0070.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0070.xml.gz"
  if ! gzip -d "pubmed21n0070.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0070.xml.gz"
    rm pubmed21n0070.xml.gz
  fi
fi
if [ ! -f pubmed21n0071.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0071.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0071.xml.gz"
  if ! gzip -d "pubmed21n0071.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0071.xml.gz"
    rm pubmed21n0071.xml.gz
  fi
fi
if [ ! -f pubmed21n0072.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0072.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0072.xml.gz"
  if ! gzip -d "pubmed21n0072.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0072.xml.gz"
    rm pubmed21n0072.xml.gz
  fi
fi
if [ ! -f pubmed21n0073.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0073.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0073.xml.gz"
  if ! gzip -d "pubmed21n0073.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0073.xml.gz"
    rm pubmed21n0073.xml.gz
  fi
fi
if [ ! -f pubmed21n0074.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0074.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0074.xml.gz"
  if ! gzip -d "pubmed21n0074.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0074.xml.gz"
    rm pubmed21n0074.xml.gz
  fi
fi
if [ ! -f pubmed21n0075.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0075.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0075.xml.gz"
  if ! gzip -d "pubmed21n0075.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0075.xml.gz"
    rm pubmed21n0075.xml.gz
  fi
fi
if [ ! -f pubmed21n0076.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0076.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0076.xml.gz"
  if ! gzip -d "pubmed21n0076.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0076.xml.gz"
    rm pubmed21n0076.xml.gz
  fi
fi
if [ ! -f pubmed21n0077.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0077.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0077.xml.gz"
  if ! gzip -d "pubmed21n0077.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0077.xml.gz"
    rm pubmed21n0077.xml.gz
  fi
fi
if [ ! -f pubmed21n0078.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0078.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0078.xml.gz"
  if ! gzip -d "pubmed21n0078.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0078.xml.gz"
    rm pubmed21n0078.xml.gz
  fi
fi
if [ ! -f pubmed21n0079.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0079.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0079.xml.gz"
  if ! gzip -d "pubmed21n0079.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0079.xml.gz"
    rm pubmed21n0079.xml.gz
  fi
fi
if [ ! -f pubmed21n0080.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0080.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0080.xml.gz"
  if ! gzip -d "pubmed21n0080.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0080.xml.gz"
    rm pubmed21n0080.xml.gz
  fi
fi
if [ ! -f pubmed21n0081.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0081.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0081.xml.gz"
  if ! gzip -d "pubmed21n0081.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0081.xml.gz"
    rm pubmed21n0081.xml.gz
  fi
fi
if [ ! -f pubmed21n0082.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0082.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0082.xml.gz"
  if ! gzip -d "pubmed21n0082.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0082.xml.gz"
    rm pubmed21n0082.xml.gz
  fi
fi
if [ ! -f pubmed21n0083.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0083.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0083.xml.gz"
  if ! gzip -d "pubmed21n0083.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0083.xml.gz"
    rm pubmed21n0083.xml.gz
  fi
fi
if [ ! -f pubmed21n0084.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0084.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0084.xml.gz"
  if ! gzip -d "pubmed21n0084.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0084.xml.gz"
    rm pubmed21n0084.xml.gz
  fi
fi
if [ ! -f pubmed21n0085.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0085.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0085.xml.gz"
  if ! gzip -d "pubmed21n0085.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0085.xml.gz"
    rm pubmed21n0085.xml.gz
  fi
fi
if [ ! -f pubmed21n0086.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0086.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0086.xml.gz"
  if ! gzip -d "pubmed21n0086.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0086.xml.gz"
    rm pubmed21n0086.xml.gz
  fi
fi
if [ ! -f pubmed21n0087.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0087.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0087.xml.gz"
  if ! gzip -d "pubmed21n0087.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0087.xml.gz"
    rm pubmed21n0087.xml.gz
  fi
fi
if [ ! -f pubmed21n0088.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0088.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0088.xml.gz"
  if ! gzip -d "pubmed21n0088.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0088.xml.gz"
    rm pubmed21n0088.xml.gz
  fi
fi
if [ ! -f pubmed21n0089.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0089.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0089.xml.gz"
  if ! gzip -d "pubmed21n0089.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0089.xml.gz"
    rm pubmed21n0089.xml.gz
  fi
fi
if [ ! -f pubmed21n0090.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0090.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0090.xml.gz"
  if ! gzip -d "pubmed21n0090.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0090.xml.gz"
    rm pubmed21n0090.xml.gz
  fi
fi
if [ ! -f pubmed21n0091.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0091.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0091.xml.gz"
  if ! gzip -d "pubmed21n0091.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0091.xml.gz"
    rm pubmed21n0091.xml.gz
  fi
fi
if [ ! -f pubmed21n0092.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0092.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0092.xml.gz"
  if ! gzip -d "pubmed21n0092.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0092.xml.gz"
    rm pubmed21n0092.xml.gz
  fi
fi
if [ ! -f pubmed21n0093.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0093.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0093.xml.gz"
  if ! gzip -d "pubmed21n0093.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0093.xml.gz"
    rm pubmed21n0093.xml.gz
  fi
fi
if [ ! -f pubmed21n0094.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0094.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0094.xml.gz"
  if ! gzip -d "pubmed21n0094.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0094.xml.gz"
    rm pubmed21n0094.xml.gz
  fi
fi
if [ ! -f pubmed21n0095.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0095.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0095.xml.gz"
  if ! gzip -d "pubmed21n0095.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0095.xml.gz"
    rm pubmed21n0095.xml.gz
  fi
fi
if [ ! -f pubmed21n0096.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0096.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0096.xml.gz"
  if ! gzip -d "pubmed21n0096.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0096.xml.gz"
    rm pubmed21n0096.xml.gz
  fi
fi
if [ ! -f pubmed21n0097.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0097.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0097.xml.gz"
  if ! gzip -d "pubmed21n0097.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0097.xml.gz"
    rm pubmed21n0097.xml.gz
  fi
fi
if [ ! -f pubmed21n0098.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0098.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0098.xml.gz"
  if ! gzip -d "pubmed21n0098.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0098.xml.gz"
    rm pubmed21n0098.xml.gz
  fi
fi
if [ ! -f pubmed21n0099.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0099.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0099.xml.gz"
  if ! gzip -d "pubmed21n0099.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0099.xml.gz"
    rm pubmed21n0099.xml.gz
  fi
fi
if [ ! -f pubmed21n0100.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0100.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0100.xml.gz"
  if ! gzip -d "pubmed21n0100.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0100.xml.gz"
    rm pubmed21n0100.xml.gz
  fi
fi
if [ ! -f pubmed21n0101.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0101.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0101.xml.gz"
  if ! gzip -d "pubmed21n0101.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0101.xml.gz"
    rm pubmed21n0101.xml.gz
  fi
fi
if [ ! -f pubmed21n0102.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0102.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0102.xml.gz"
  if ! gzip -d "pubmed21n0102.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0102.xml.gz"
    rm pubmed21n0102.xml.gz
  fi
fi
if [ ! -f pubmed21n0103.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0103.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0103.xml.gz"
  if ! gzip -d "pubmed21n0103.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0103.xml.gz"
    rm pubmed21n0103.xml.gz
  fi
fi
if [ ! -f pubmed21n0104.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0104.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0104.xml.gz"
  if ! gzip -d "pubmed21n0104.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0104.xml.gz"
    rm pubmed21n0104.xml.gz
  fi
fi
if [ ! -f pubmed21n0105.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0105.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0105.xml.gz"
  if ! gzip -d "pubmed21n0105.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0105.xml.gz"
    rm pubmed21n0105.xml.gz
  fi
fi
if [ ! -f pubmed21n0106.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0106.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0106.xml.gz"
  if ! gzip -d "pubmed21n0106.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0106.xml.gz"
    rm pubmed21n0106.xml.gz
  fi
fi
if [ ! -f pubmed21n0107.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0107.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0107.xml.gz"
  if ! gzip -d "pubmed21n0107.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0107.xml.gz"
    rm pubmed21n0107.xml.gz
  fi
fi
if [ ! -f pubmed21n0108.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0108.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0108.xml.gz"
  if ! gzip -d "pubmed21n0108.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0108.xml.gz"
    rm pubmed21n0108.xml.gz
  fi
fi
if [ ! -f pubmed21n0109.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0109.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0109.xml.gz"
  if ! gzip -d "pubmed21n0109.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0109.xml.gz"
    rm pubmed21n0109.xml.gz
  fi
fi
if [ ! -f pubmed21n0110.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0110.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0110.xml.gz"
  if ! gzip -d "pubmed21n0110.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0110.xml.gz"
    rm pubmed21n0110.xml.gz
  fi
fi
if [ ! -f pubmed21n0111.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0111.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0111.xml.gz"
  if ! gzip -d "pubmed21n0111.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0111.xml.gz"
    rm pubmed21n0111.xml.gz
  fi
fi
if [ ! -f pubmed21n0112.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0112.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0112.xml.gz"
  if ! gzip -d "pubmed21n0112.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0112.xml.gz"
    rm pubmed21n0112.xml.gz
  fi
fi
if [ ! -f pubmed21n0113.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0113.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0113.xml.gz"
  if ! gzip -d "pubmed21n0113.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0113.xml.gz"
    rm pubmed21n0113.xml.gz
  fi
fi
if [ ! -f pubmed21n0114.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0114.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0114.xml.gz"
  if ! gzip -d "pubmed21n0114.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0114.xml.gz"
    rm pubmed21n0114.xml.gz
  fi
fi
if [ ! -f pubmed21n0115.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0115.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0115.xml.gz"
  if ! gzip -d "pubmed21n0115.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0115.xml.gz"
    rm pubmed21n0115.xml.gz
  fi
fi
if [ ! -f pubmed21n0116.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0116.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0116.xml.gz"
  if ! gzip -d "pubmed21n0116.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0116.xml.gz"
    rm pubmed21n0116.xml.gz
  fi
fi
if [ ! -f pubmed21n0117.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0117.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0117.xml.gz"
  if ! gzip -d "pubmed21n0117.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0117.xml.gz"
    rm pubmed21n0117.xml.gz
  fi
fi
if [ ! -f pubmed21n0118.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0118.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0118.xml.gz"
  if ! gzip -d "pubmed21n0118.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0118.xml.gz"
    rm pubmed21n0118.xml.gz
  fi
fi
if [ ! -f pubmed21n0119.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0119.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0119.xml.gz"
  if ! gzip -d "pubmed21n0119.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0119.xml.gz"
    rm pubmed21n0119.xml.gz
  fi
fi
if [ ! -f pubmed21n0120.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0120.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0120.xml.gz"
  if ! gzip -d "pubmed21n0120.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0120.xml.gz"
    rm pubmed21n0120.xml.gz
  fi
fi
if [ ! -f pubmed21n0121.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0121.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0121.xml.gz"
  if ! gzip -d "pubmed21n0121.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0121.xml.gz"
    rm pubmed21n0121.xml.gz
  fi
fi
if [ ! -f pubmed21n0122.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0122.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0122.xml.gz"
  if ! gzip -d "pubmed21n0122.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0122.xml.gz"
    rm pubmed21n0122.xml.gz
  fi
fi
if [ ! -f pubmed21n0123.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0123.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0123.xml.gz"
  if ! gzip -d "pubmed21n0123.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0123.xml.gz"
    rm pubmed21n0123.xml.gz
  fi
fi
if [ ! -f pubmed21n0124.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0124.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0124.xml.gz"
  if ! gzip -d "pubmed21n0124.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0124.xml.gz"
    rm pubmed21n0124.xml.gz
  fi
fi
if [ ! -f pubmed21n0125.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0125.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0125.xml.gz"
  if ! gzip -d "pubmed21n0125.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0125.xml.gz"
    rm pubmed21n0125.xml.gz
  fi
fi
if [ ! -f pubmed21n0126.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0126.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0126.xml.gz"
  if ! gzip -d "pubmed21n0126.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0126.xml.gz"
    rm pubmed21n0126.xml.gz
  fi
fi
if [ ! -f pubmed21n0127.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0127.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0127.xml.gz"
  if ! gzip -d "pubmed21n0127.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0127.xml.gz"
    rm pubmed21n0127.xml.gz
  fi
fi
if [ ! -f pubmed21n0128.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0128.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0128.xml.gz"
  if ! gzip -d "pubmed21n0128.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0128.xml.gz"
    rm pubmed21n0128.xml.gz
  fi
fi
if [ ! -f pubmed21n0129.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0129.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0129.xml.gz"
  if ! gzip -d "pubmed21n0129.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0129.xml.gz"
    rm pubmed21n0129.xml.gz
  fi
fi
if [ ! -f pubmed21n0130.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0130.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0130.xml.gz"
  if ! gzip -d "pubmed21n0130.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0130.xml.gz"
    rm pubmed21n0130.xml.gz
  fi
fi
if [ ! -f pubmed21n0131.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0131.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0131.xml.gz"
  if ! gzip -d "pubmed21n0131.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0131.xml.gz"
    rm pubmed21n0131.xml.gz
  fi
fi
if [ ! -f pubmed21n0132.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0132.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0132.xml.gz"
  if ! gzip -d "pubmed21n0132.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0132.xml.gz"
    rm pubmed21n0132.xml.gz
  fi
fi
if [ ! -f pubmed21n0133.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0133.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0133.xml.gz"
  if ! gzip -d "pubmed21n0133.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0133.xml.gz"
    rm pubmed21n0133.xml.gz
  fi
fi
if [ ! -f pubmed21n0134.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0134.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0134.xml.gz"
  if ! gzip -d "pubmed21n0134.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0134.xml.gz"
    rm pubmed21n0134.xml.gz
  fi
fi
if [ ! -f pubmed21n0135.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0135.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0135.xml.gz"
  if ! gzip -d "pubmed21n0135.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0135.xml.gz"
    rm pubmed21n0135.xml.gz
  fi
fi
if [ ! -f pubmed21n0136.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0136.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0136.xml.gz"
  if ! gzip -d "pubmed21n0136.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0136.xml.gz"
    rm pubmed21n0136.xml.gz
  fi
fi
if [ ! -f pubmed21n0137.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0137.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0137.xml.gz"
  if ! gzip -d "pubmed21n0137.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0137.xml.gz"
    rm pubmed21n0137.xml.gz
  fi
fi
if [ ! -f pubmed21n0138.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0138.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0138.xml.gz"
  if ! gzip -d "pubmed21n0138.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0138.xml.gz"
    rm pubmed21n0138.xml.gz
  fi
fi
if [ ! -f pubmed21n0139.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0139.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0139.xml.gz"
  if ! gzip -d "pubmed21n0139.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0139.xml.gz"
    rm pubmed21n0139.xml.gz
  fi
fi
if [ ! -f pubmed21n0140.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0140.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0140.xml.gz"
  if ! gzip -d "pubmed21n0140.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0140.xml.gz"
    rm pubmed21n0140.xml.gz
  fi
fi
if [ ! -f pubmed21n0141.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0141.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0141.xml.gz"
  if ! gzip -d "pubmed21n0141.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0141.xml.gz"
    rm pubmed21n0141.xml.gz
  fi
fi
if [ ! -f pubmed21n0142.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0142.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0142.xml.gz"
  if ! gzip -d "pubmed21n0142.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0142.xml.gz"
    rm pubmed21n0142.xml.gz
  fi
fi
if [ ! -f pubmed21n0143.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0143.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0143.xml.gz"
  if ! gzip -d "pubmed21n0143.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0143.xml.gz"
    rm pubmed21n0143.xml.gz
  fi
fi
if [ ! -f pubmed21n0144.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0144.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0144.xml.gz"
  if ! gzip -d "pubmed21n0144.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0144.xml.gz"
    rm pubmed21n0144.xml.gz
  fi
fi
if [ ! -f pubmed21n0145.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0145.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0145.xml.gz"
  if ! gzip -d "pubmed21n0145.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0145.xml.gz"
    rm pubmed21n0145.xml.gz
  fi
fi
if [ ! -f pubmed21n0146.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0146.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0146.xml.gz"
  if ! gzip -d "pubmed21n0146.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0146.xml.gz"
    rm pubmed21n0146.xml.gz
  fi
fi
if [ ! -f pubmed21n0147.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0147.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0147.xml.gz"
  if ! gzip -d "pubmed21n0147.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0147.xml.gz"
    rm pubmed21n0147.xml.gz
  fi
fi
if [ ! -f pubmed21n0148.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0148.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0148.xml.gz"
  if ! gzip -d "pubmed21n0148.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0148.xml.gz"
    rm pubmed21n0148.xml.gz
  fi
fi
if [ ! -f pubmed21n0149.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0149.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0149.xml.gz"
  if ! gzip -d "pubmed21n0149.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0149.xml.gz"
    rm pubmed21n0149.xml.gz
  fi
fi
if [ ! -f pubmed21n0150.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0150.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0150.xml.gz"
  if ! gzip -d "pubmed21n0150.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0150.xml.gz"
    rm pubmed21n0150.xml.gz
  fi
fi
if [ ! -f pubmed21n0151.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0151.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0151.xml.gz"
  if ! gzip -d "pubmed21n0151.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0151.xml.gz"
    rm pubmed21n0151.xml.gz
  fi
fi
if [ ! -f pubmed21n0152.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0152.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0152.xml.gz"
  if ! gzip -d "pubmed21n0152.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0152.xml.gz"
    rm pubmed21n0152.xml.gz
  fi
fi
if [ ! -f pubmed21n0153.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0153.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0153.xml.gz"
  if ! gzip -d "pubmed21n0153.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0153.xml.gz"
    rm pubmed21n0153.xml.gz
  fi
fi
if [ ! -f pubmed21n0154.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0154.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0154.xml.gz"
  if ! gzip -d "pubmed21n0154.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0154.xml.gz"
    rm pubmed21n0154.xml.gz
  fi
fi
if [ ! -f pubmed21n0155.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0155.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0155.xml.gz"
  if ! gzip -d "pubmed21n0155.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0155.xml.gz"
    rm pubmed21n0155.xml.gz
  fi
fi
if [ ! -f pubmed21n0156.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0156.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0156.xml.gz"
  if ! gzip -d "pubmed21n0156.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0156.xml.gz"
    rm pubmed21n0156.xml.gz
  fi
fi
if [ ! -f pubmed21n0157.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0157.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0157.xml.gz"
  if ! gzip -d "pubmed21n0157.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0157.xml.gz"
    rm pubmed21n0157.xml.gz
  fi
fi
if [ ! -f pubmed21n0158.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0158.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0158.xml.gz"
  if ! gzip -d "pubmed21n0158.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0158.xml.gz"
    rm pubmed21n0158.xml.gz
  fi
fi
if [ ! -f pubmed21n0159.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0159.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0159.xml.gz"
  if ! gzip -d "pubmed21n0159.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0159.xml.gz"
    rm pubmed21n0159.xml.gz
  fi
fi
if [ ! -f pubmed21n0160.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0160.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0160.xml.gz"
  if ! gzip -d "pubmed21n0160.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0160.xml.gz"
    rm pubmed21n0160.xml.gz
  fi
fi
if [ ! -f pubmed21n0161.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0161.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0161.xml.gz"
  if ! gzip -d "pubmed21n0161.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0161.xml.gz"
    rm pubmed21n0161.xml.gz
  fi
fi
if [ ! -f pubmed21n0162.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0162.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0162.xml.gz"
  if ! gzip -d "pubmed21n0162.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0162.xml.gz"
    rm pubmed21n0162.xml.gz
  fi
fi
if [ ! -f pubmed21n0163.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0163.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0163.xml.gz"
  if ! gzip -d "pubmed21n0163.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0163.xml.gz"
    rm pubmed21n0163.xml.gz
  fi
fi
if [ ! -f pubmed21n0164.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0164.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0164.xml.gz"
  if ! gzip -d "pubmed21n0164.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0164.xml.gz"
    rm pubmed21n0164.xml.gz
  fi
fi
if [ ! -f pubmed21n0165.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0165.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0165.xml.gz"
  if ! gzip -d "pubmed21n0165.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0165.xml.gz"
    rm pubmed21n0165.xml.gz
  fi
fi
if [ ! -f pubmed21n0166.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0166.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0166.xml.gz"
  if ! gzip -d "pubmed21n0166.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0166.xml.gz"
    rm pubmed21n0166.xml.gz
  fi
fi
if [ ! -f pubmed21n0167.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0167.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0167.xml.gz"
  if ! gzip -d "pubmed21n0167.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0167.xml.gz"
    rm pubmed21n0167.xml.gz
  fi
fi
if [ ! -f pubmed21n0168.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0168.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0168.xml.gz"
  if ! gzip -d "pubmed21n0168.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0168.xml.gz"
    rm pubmed21n0168.xml.gz
  fi
fi
if [ ! -f pubmed21n0169.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0169.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0169.xml.gz"
  if ! gzip -d "pubmed21n0169.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0169.xml.gz"
    rm pubmed21n0169.xml.gz
  fi
fi
if [ ! -f pubmed21n0170.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0170.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0170.xml.gz"
  if ! gzip -d "pubmed21n0170.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0170.xml.gz"
    rm pubmed21n0170.xml.gz
  fi
fi
if [ ! -f pubmed21n0171.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0171.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0171.xml.gz"
  if ! gzip -d "pubmed21n0171.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0171.xml.gz"
    rm pubmed21n0171.xml.gz
  fi
fi
if [ ! -f pubmed21n0172.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0172.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0172.xml.gz"
  if ! gzip -d "pubmed21n0172.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0172.xml.gz"
    rm pubmed21n0172.xml.gz
  fi
fi
if [ ! -f pubmed21n0173.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0173.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0173.xml.gz"
  if ! gzip -d "pubmed21n0173.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0173.xml.gz"
    rm pubmed21n0173.xml.gz
  fi
fi
if [ ! -f pubmed21n0174.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0174.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0174.xml.gz"
  if ! gzip -d "pubmed21n0174.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0174.xml.gz"
    rm pubmed21n0174.xml.gz
  fi
fi
if [ ! -f pubmed21n0175.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0175.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0175.xml.gz"
  if ! gzip -d "pubmed21n0175.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0175.xml.gz"
    rm pubmed21n0175.xml.gz
  fi
fi
if [ ! -f pubmed21n0176.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0176.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0176.xml.gz"
  if ! gzip -d "pubmed21n0176.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0176.xml.gz"
    rm pubmed21n0176.xml.gz
  fi
fi
if [ ! -f pubmed21n0177.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0177.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0177.xml.gz"
  if ! gzip -d "pubmed21n0177.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0177.xml.gz"
    rm pubmed21n0177.xml.gz
  fi
fi
if [ ! -f pubmed21n0178.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0178.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0178.xml.gz"
  if ! gzip -d "pubmed21n0178.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0178.xml.gz"
    rm pubmed21n0178.xml.gz
  fi
fi
if [ ! -f pubmed21n0179.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0179.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0179.xml.gz"
  if ! gzip -d "pubmed21n0179.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0179.xml.gz"
    rm pubmed21n0179.xml.gz
  fi
fi
if [ ! -f pubmed21n0180.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0180.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0180.xml.gz"
  if ! gzip -d "pubmed21n0180.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0180.xml.gz"
    rm pubmed21n0180.xml.gz
  fi
fi
if [ ! -f pubmed21n0181.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0181.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0181.xml.gz"
  if ! gzip -d "pubmed21n0181.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0181.xml.gz"
    rm pubmed21n0181.xml.gz
  fi
fi
if [ ! -f pubmed21n0182.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0182.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0182.xml.gz"
  if ! gzip -d "pubmed21n0182.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0182.xml.gz"
    rm pubmed21n0182.xml.gz
  fi
fi
if [ ! -f pubmed21n0183.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0183.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0183.xml.gz"
  if ! gzip -d "pubmed21n0183.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0183.xml.gz"
    rm pubmed21n0183.xml.gz
  fi
fi
if [ ! -f pubmed21n0184.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0184.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0184.xml.gz"
  if ! gzip -d "pubmed21n0184.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0184.xml.gz"
    rm pubmed21n0184.xml.gz
  fi
fi
if [ ! -f pubmed21n0185.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0185.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0185.xml.gz"
  if ! gzip -d "pubmed21n0185.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0185.xml.gz"
    rm pubmed21n0185.xml.gz
  fi
fi
if [ ! -f pubmed21n0186.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0186.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0186.xml.gz"
  if ! gzip -d "pubmed21n0186.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0186.xml.gz"
    rm pubmed21n0186.xml.gz
  fi
fi
if [ ! -f pubmed21n0187.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0187.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0187.xml.gz"
  if ! gzip -d "pubmed21n0187.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0187.xml.gz"
    rm pubmed21n0187.xml.gz
  fi
fi
if [ ! -f pubmed21n0188.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0188.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0188.xml.gz"
  if ! gzip -d "pubmed21n0188.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0188.xml.gz"
    rm pubmed21n0188.xml.gz
  fi
fi
if [ ! -f pubmed21n0189.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0189.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0189.xml.gz"
  if ! gzip -d "pubmed21n0189.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0189.xml.gz"
    rm pubmed21n0189.xml.gz
  fi
fi
if [ ! -f pubmed21n0190.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0190.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0190.xml.gz"
  if ! gzip -d "pubmed21n0190.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0190.xml.gz"
    rm pubmed21n0190.xml.gz
  fi
fi
if [ ! -f pubmed21n0191.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0191.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0191.xml.gz"
  if ! gzip -d "pubmed21n0191.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0191.xml.gz"
    rm pubmed21n0191.xml.gz
  fi
fi
if [ ! -f pubmed21n0192.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0192.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0192.xml.gz"
  if ! gzip -d "pubmed21n0192.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0192.xml.gz"
    rm pubmed21n0192.xml.gz
  fi
fi
if [ ! -f pubmed21n0193.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0193.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0193.xml.gz"
  if ! gzip -d "pubmed21n0193.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0193.xml.gz"
    rm pubmed21n0193.xml.gz
  fi
fi
if [ ! -f pubmed21n0194.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0194.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0194.xml.gz"
  if ! gzip -d "pubmed21n0194.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0194.xml.gz"
    rm pubmed21n0194.xml.gz
  fi
fi
if [ ! -f pubmed21n0195.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0195.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0195.xml.gz"
  if ! gzip -d "pubmed21n0195.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0195.xml.gz"
    rm pubmed21n0195.xml.gz
  fi
fi
if [ ! -f pubmed21n0196.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0196.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0196.xml.gz"
  if ! gzip -d "pubmed21n0196.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0196.xml.gz"
    rm pubmed21n0196.xml.gz
  fi
fi
if [ ! -f pubmed21n0197.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0197.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0197.xml.gz"
  if ! gzip -d "pubmed21n0197.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0197.xml.gz"
    rm pubmed21n0197.xml.gz
  fi
fi
if [ ! -f pubmed21n0198.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0198.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0198.xml.gz"
  if ! gzip -d "pubmed21n0198.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0198.xml.gz"
    rm pubmed21n0198.xml.gz
  fi
fi
if [ ! -f pubmed21n0199.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0199.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0199.xml.gz"
  if ! gzip -d "pubmed21n0199.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0199.xml.gz"
    rm pubmed21n0199.xml.gz
  fi
fi
if [ ! -f pubmed21n0200.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0200.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0200.xml.gz"
  if ! gzip -d "pubmed21n0200.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0200.xml.gz"
    rm pubmed21n0200.xml.gz
  fi
fi
if [ ! -f pubmed21n0201.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0201.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0201.xml.gz"
  if ! gzip -d "pubmed21n0201.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0201.xml.gz"
    rm pubmed21n0201.xml.gz
  fi
fi
if [ ! -f pubmed21n0202.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0202.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0202.xml.gz"
  if ! gzip -d "pubmed21n0202.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0202.xml.gz"
    rm pubmed21n0202.xml.gz
  fi
fi
if [ ! -f pubmed21n0203.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0203.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0203.xml.gz"
  if ! gzip -d "pubmed21n0203.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0203.xml.gz"
    rm pubmed21n0203.xml.gz
  fi
fi
if [ ! -f pubmed21n0204.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0204.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0204.xml.gz"
  if ! gzip -d "pubmed21n0204.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0204.xml.gz"
    rm pubmed21n0204.xml.gz
  fi
fi
if [ ! -f pubmed21n0205.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0205.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0205.xml.gz"
  if ! gzip -d "pubmed21n0205.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0205.xml.gz"
    rm pubmed21n0205.xml.gz
  fi
fi
if [ ! -f pubmed21n0206.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0206.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0206.xml.gz"
  if ! gzip -d "pubmed21n0206.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0206.xml.gz"
    rm pubmed21n0206.xml.gz
  fi
fi
if [ ! -f pubmed21n0207.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0207.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0207.xml.gz"
  if ! gzip -d "pubmed21n0207.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0207.xml.gz"
    rm pubmed21n0207.xml.gz
  fi
fi
if [ ! -f pubmed21n0208.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0208.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0208.xml.gz"
  if ! gzip -d "pubmed21n0208.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0208.xml.gz"
    rm pubmed21n0208.xml.gz
  fi
fi
if [ ! -f pubmed21n0209.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0209.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0209.xml.gz"
  if ! gzip -d "pubmed21n0209.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0209.xml.gz"
    rm pubmed21n0209.xml.gz
  fi
fi
if [ ! -f pubmed21n0210.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0210.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0210.xml.gz"
  if ! gzip -d "pubmed21n0210.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0210.xml.gz"
    rm pubmed21n0210.xml.gz
  fi
fi
if [ ! -f pubmed21n0211.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0211.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0211.xml.gz"
  if ! gzip -d "pubmed21n0211.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0211.xml.gz"
    rm pubmed21n0211.xml.gz
  fi
fi
if [ ! -f pubmed21n0212.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0212.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0212.xml.gz"
  if ! gzip -d "pubmed21n0212.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0212.xml.gz"
    rm pubmed21n0212.xml.gz
  fi
fi
if [ ! -f pubmed21n0213.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0213.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0213.xml.gz"
  if ! gzip -d "pubmed21n0213.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0213.xml.gz"
    rm pubmed21n0213.xml.gz
  fi
fi
if [ ! -f pubmed21n0214.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0214.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0214.xml.gz"
  if ! gzip -d "pubmed21n0214.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0214.xml.gz"
    rm pubmed21n0214.xml.gz
  fi
fi
if [ ! -f pubmed21n0215.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0215.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0215.xml.gz"
  if ! gzip -d "pubmed21n0215.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0215.xml.gz"
    rm pubmed21n0215.xml.gz
  fi
fi
if [ ! -f pubmed21n0216.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0216.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0216.xml.gz"
  if ! gzip -d "pubmed21n0216.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0216.xml.gz"
    rm pubmed21n0216.xml.gz
  fi
fi
if [ ! -f pubmed21n0217.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0217.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0217.xml.gz"
  if ! gzip -d "pubmed21n0217.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0217.xml.gz"
    rm pubmed21n0217.xml.gz
  fi
fi
if [ ! -f pubmed21n0218.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0218.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0218.xml.gz"
  if ! gzip -d "pubmed21n0218.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0218.xml.gz"
    rm pubmed21n0218.xml.gz
  fi
fi
if [ ! -f pubmed21n0219.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0219.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0219.xml.gz"
  if ! gzip -d "pubmed21n0219.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0219.xml.gz"
    rm pubmed21n0219.xml.gz
  fi
fi
if [ ! -f pubmed21n0220.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0220.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0220.xml.gz"
  if ! gzip -d "pubmed21n0220.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0220.xml.gz"
    rm pubmed21n0220.xml.gz
  fi
fi
if [ ! -f pubmed21n0221.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0221.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0221.xml.gz"
  if ! gzip -d "pubmed21n0221.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0221.xml.gz"
    rm pubmed21n0221.xml.gz
  fi
fi
if [ ! -f pubmed21n0222.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0222.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0222.xml.gz"
  if ! gzip -d "pubmed21n0222.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0222.xml.gz"
    rm pubmed21n0222.xml.gz
  fi
fi
if [ ! -f pubmed21n0223.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0223.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0223.xml.gz"
  if ! gzip -d "pubmed21n0223.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0223.xml.gz"
    rm pubmed21n0223.xml.gz
  fi
fi
if [ ! -f pubmed21n0224.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0224.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0224.xml.gz"
  if ! gzip -d "pubmed21n0224.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0224.xml.gz"
    rm pubmed21n0224.xml.gz
  fi
fi
if [ ! -f pubmed21n0225.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0225.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0225.xml.gz"
  if ! gzip -d "pubmed21n0225.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0225.xml.gz"
    rm pubmed21n0225.xml.gz
  fi
fi
if [ ! -f pubmed21n0226.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0226.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0226.xml.gz"
  if ! gzip -d "pubmed21n0226.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0226.xml.gz"
    rm pubmed21n0226.xml.gz
  fi
fi
if [ ! -f pubmed21n0227.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0227.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0227.xml.gz"
  if ! gzip -d "pubmed21n0227.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0227.xml.gz"
    rm pubmed21n0227.xml.gz
  fi
fi
if [ ! -f pubmed21n0228.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0228.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0228.xml.gz"
  if ! gzip -d "pubmed21n0228.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0228.xml.gz"
    rm pubmed21n0228.xml.gz
  fi
fi
if [ ! -f pubmed21n0229.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0229.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0229.xml.gz"
  if ! gzip -d "pubmed21n0229.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0229.xml.gz"
    rm pubmed21n0229.xml.gz
  fi
fi
if [ ! -f pubmed21n0230.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0230.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0230.xml.gz"
  if ! gzip -d "pubmed21n0230.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0230.xml.gz"
    rm pubmed21n0230.xml.gz
  fi
fi
if [ ! -f pubmed21n0231.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0231.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0231.xml.gz"
  if ! gzip -d "pubmed21n0231.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0231.xml.gz"
    rm pubmed21n0231.xml.gz
  fi
fi
if [ ! -f pubmed21n0232.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0232.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0232.xml.gz"
  if ! gzip -d "pubmed21n0232.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0232.xml.gz"
    rm pubmed21n0232.xml.gz
  fi
fi
if [ ! -f pubmed21n0233.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0233.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0233.xml.gz"
  if ! gzip -d "pubmed21n0233.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0233.xml.gz"
    rm pubmed21n0233.xml.gz
  fi
fi
if [ ! -f pubmed21n0234.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0234.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0234.xml.gz"
  if ! gzip -d "pubmed21n0234.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0234.xml.gz"
    rm pubmed21n0234.xml.gz
  fi
fi
if [ ! -f pubmed21n0235.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0235.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0235.xml.gz"
  if ! gzip -d "pubmed21n0235.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0235.xml.gz"
    rm pubmed21n0235.xml.gz
  fi
fi
if [ ! -f pubmed21n0236.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0236.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0236.xml.gz"
  if ! gzip -d "pubmed21n0236.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0236.xml.gz"
    rm pubmed21n0236.xml.gz
  fi
fi
if [ ! -f pubmed21n0237.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0237.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0237.xml.gz"
  if ! gzip -d "pubmed21n0237.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0237.xml.gz"
    rm pubmed21n0237.xml.gz
  fi
fi
if [ ! -f pubmed21n0238.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0238.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0238.xml.gz"
  if ! gzip -d "pubmed21n0238.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0238.xml.gz"
    rm pubmed21n0238.xml.gz
  fi
fi
if [ ! -f pubmed21n0239.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0239.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0239.xml.gz"
  if ! gzip -d "pubmed21n0239.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0239.xml.gz"
    rm pubmed21n0239.xml.gz
  fi
fi
if [ ! -f pubmed21n0240.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0240.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0240.xml.gz"
  if ! gzip -d "pubmed21n0240.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0240.xml.gz"
    rm pubmed21n0240.xml.gz
  fi
fi
if [ ! -f pubmed21n0241.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0241.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0241.xml.gz"
  if ! gzip -d "pubmed21n0241.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0241.xml.gz"
    rm pubmed21n0241.xml.gz
  fi
fi
if [ ! -f pubmed21n0242.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0242.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0242.xml.gz"
  if ! gzip -d "pubmed21n0242.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0242.xml.gz"
    rm pubmed21n0242.xml.gz
  fi
fi
if [ ! -f pubmed21n0243.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0243.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0243.xml.gz"
  if ! gzip -d "pubmed21n0243.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0243.xml.gz"
    rm pubmed21n0243.xml.gz
  fi
fi
if [ ! -f pubmed21n0244.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0244.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0244.xml.gz"
  if ! gzip -d "pubmed21n0244.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0244.xml.gz"
    rm pubmed21n0244.xml.gz
  fi
fi
if [ ! -f pubmed21n0245.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0245.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0245.xml.gz"
  if ! gzip -d "pubmed21n0245.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0245.xml.gz"
    rm pubmed21n0245.xml.gz
  fi
fi
if [ ! -f pubmed21n0246.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0246.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0246.xml.gz"
  if ! gzip -d "pubmed21n0246.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0246.xml.gz"
    rm pubmed21n0246.xml.gz
  fi
fi
if [ ! -f pubmed21n0247.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0247.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0247.xml.gz"
  if ! gzip -d "pubmed21n0247.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0247.xml.gz"
    rm pubmed21n0247.xml.gz
  fi
fi
if [ ! -f pubmed21n0248.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0248.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0248.xml.gz"
  if ! gzip -d "pubmed21n0248.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0248.xml.gz"
    rm pubmed21n0248.xml.gz
  fi
fi
if [ ! -f pubmed21n0249.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0249.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0249.xml.gz"
  if ! gzip -d "pubmed21n0249.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0249.xml.gz"
    rm pubmed21n0249.xml.gz
  fi
fi
if [ ! -f pubmed21n0250.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0250.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0250.xml.gz"
  if ! gzip -d "pubmed21n0250.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0250.xml.gz"
    rm pubmed21n0250.xml.gz
  fi
fi
if [ ! -f pubmed21n0251.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0251.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0251.xml.gz"
  if ! gzip -d "pubmed21n0251.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0251.xml.gz"
    rm pubmed21n0251.xml.gz
  fi
fi
if [ ! -f pubmed21n0252.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0252.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0252.xml.gz"
  if ! gzip -d "pubmed21n0252.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0252.xml.gz"
    rm pubmed21n0252.xml.gz
  fi
fi
if [ ! -f pubmed21n0253.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0253.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0253.xml.gz"
  if ! gzip -d "pubmed21n0253.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0253.xml.gz"
    rm pubmed21n0253.xml.gz
  fi
fi
if [ ! -f pubmed21n0254.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0254.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0254.xml.gz"
  if ! gzip -d "pubmed21n0254.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0254.xml.gz"
    rm pubmed21n0254.xml.gz
  fi
fi
if [ ! -f pubmed21n0255.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0255.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0255.xml.gz"
  if ! gzip -d "pubmed21n0255.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0255.xml.gz"
    rm pubmed21n0255.xml.gz
  fi
fi
if [ ! -f pubmed21n0256.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0256.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0256.xml.gz"
  if ! gzip -d "pubmed21n0256.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0256.xml.gz"
    rm pubmed21n0256.xml.gz
  fi
fi
if [ ! -f pubmed21n0257.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0257.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0257.xml.gz"
  if ! gzip -d "pubmed21n0257.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0257.xml.gz"
    rm pubmed21n0257.xml.gz
  fi
fi
if [ ! -f pubmed21n0258.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0258.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0258.xml.gz"
  if ! gzip -d "pubmed21n0258.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0258.xml.gz"
    rm pubmed21n0258.xml.gz
  fi
fi
if [ ! -f pubmed21n0259.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0259.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0259.xml.gz"
  if ! gzip -d "pubmed21n0259.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0259.xml.gz"
    rm pubmed21n0259.xml.gz
  fi
fi
if [ ! -f pubmed21n0260.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0260.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0260.xml.gz"
  if ! gzip -d "pubmed21n0260.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0260.xml.gz"
    rm pubmed21n0260.xml.gz
  fi
fi
if [ ! -f pubmed21n0261.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0261.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0261.xml.gz"
  if ! gzip -d "pubmed21n0261.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0261.xml.gz"
    rm pubmed21n0261.xml.gz
  fi
fi
if [ ! -f pubmed21n0262.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0262.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0262.xml.gz"
  if ! gzip -d "pubmed21n0262.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0262.xml.gz"
    rm pubmed21n0262.xml.gz
  fi
fi
if [ ! -f pubmed21n0263.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0263.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0263.xml.gz"
  if ! gzip -d "pubmed21n0263.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0263.xml.gz"
    rm pubmed21n0263.xml.gz
  fi
fi
if [ ! -f pubmed21n0264.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0264.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0264.xml.gz"
  if ! gzip -d "pubmed21n0264.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0264.xml.gz"
    rm pubmed21n0264.xml.gz
  fi
fi
if [ ! -f pubmed21n0265.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0265.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0265.xml.gz"
  if ! gzip -d "pubmed21n0265.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0265.xml.gz"
    rm pubmed21n0265.xml.gz
  fi
fi
if [ ! -f pubmed21n0266.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0266.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0266.xml.gz"
  if ! gzip -d "pubmed21n0266.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0266.xml.gz"
    rm pubmed21n0266.xml.gz
  fi
fi
if [ ! -f pubmed21n0267.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0267.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0267.xml.gz"
  if ! gzip -d "pubmed21n0267.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0267.xml.gz"
    rm pubmed21n0267.xml.gz
  fi
fi
if [ ! -f pubmed21n0268.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0268.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0268.xml.gz"
  if ! gzip -d "pubmed21n0268.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0268.xml.gz"
    rm pubmed21n0268.xml.gz
  fi
fi
if [ ! -f pubmed21n0269.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0269.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0269.xml.gz"
  if ! gzip -d "pubmed21n0269.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0269.xml.gz"
    rm pubmed21n0269.xml.gz
  fi
fi
if [ ! -f pubmed21n0270.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0270.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0270.xml.gz"
  if ! gzip -d "pubmed21n0270.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0270.xml.gz"
    rm pubmed21n0270.xml.gz
  fi
fi
if [ ! -f pubmed21n0271.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0271.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0271.xml.gz"
  if ! gzip -d "pubmed21n0271.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0271.xml.gz"
    rm pubmed21n0271.xml.gz
  fi
fi
if [ ! -f pubmed21n0272.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0272.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0272.xml.gz"
  if ! gzip -d "pubmed21n0272.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0272.xml.gz"
    rm pubmed21n0272.xml.gz
  fi
fi
if [ ! -f pubmed21n0273.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0273.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0273.xml.gz"
  if ! gzip -d "pubmed21n0273.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0273.xml.gz"
    rm pubmed21n0273.xml.gz
  fi
fi
if [ ! -f pubmed21n0274.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0274.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0274.xml.gz"
  if ! gzip -d "pubmed21n0274.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0274.xml.gz"
    rm pubmed21n0274.xml.gz
  fi
fi
if [ ! -f pubmed21n0275.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0275.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0275.xml.gz"
  if ! gzip -d "pubmed21n0275.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0275.xml.gz"
    rm pubmed21n0275.xml.gz
  fi
fi
if [ ! -f pubmed21n0276.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0276.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0276.xml.gz"
  if ! gzip -d "pubmed21n0276.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0276.xml.gz"
    rm pubmed21n0276.xml.gz
  fi
fi
if [ ! -f pubmed21n0277.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0277.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0277.xml.gz"
  if ! gzip -d "pubmed21n0277.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0277.xml.gz"
    rm pubmed21n0277.xml.gz
  fi
fi
if [ ! -f pubmed21n0278.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0278.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0278.xml.gz"
  if ! gzip -d "pubmed21n0278.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0278.xml.gz"
    rm pubmed21n0278.xml.gz
  fi
fi
if [ ! -f pubmed21n0279.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0279.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0279.xml.gz"
  if ! gzip -d "pubmed21n0279.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0279.xml.gz"
    rm pubmed21n0279.xml.gz
  fi
fi
if [ ! -f pubmed21n0280.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0280.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0280.xml.gz"
  if ! gzip -d "pubmed21n0280.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0280.xml.gz"
    rm pubmed21n0280.xml.gz
  fi
fi
if [ ! -f pubmed21n0281.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0281.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0281.xml.gz"
  if ! gzip -d "pubmed21n0281.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0281.xml.gz"
    rm pubmed21n0281.xml.gz
  fi
fi
if [ ! -f pubmed21n0282.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0282.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0282.xml.gz"
  if ! gzip -d "pubmed21n0282.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0282.xml.gz"
    rm pubmed21n0282.xml.gz
  fi
fi
if [ ! -f pubmed21n0283.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0283.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0283.xml.gz"
  if ! gzip -d "pubmed21n0283.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0283.xml.gz"
    rm pubmed21n0283.xml.gz
  fi
fi
if [ ! -f pubmed21n0284.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0284.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0284.xml.gz"
  if ! gzip -d "pubmed21n0284.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0284.xml.gz"
    rm pubmed21n0284.xml.gz
  fi
fi
if [ ! -f pubmed21n0285.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0285.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0285.xml.gz"
  if ! gzip -d "pubmed21n0285.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0285.xml.gz"
    rm pubmed21n0285.xml.gz
  fi
fi
if [ ! -f pubmed21n0286.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0286.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0286.xml.gz"
  if ! gzip -d "pubmed21n0286.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0286.xml.gz"
    rm pubmed21n0286.xml.gz
  fi
fi
if [ ! -f pubmed21n0287.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0287.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0287.xml.gz"
  if ! gzip -d "pubmed21n0287.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0287.xml.gz"
    rm pubmed21n0287.xml.gz
  fi
fi
if [ ! -f pubmed21n0288.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0288.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0288.xml.gz"
  if ! gzip -d "pubmed21n0288.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0288.xml.gz"
    rm pubmed21n0288.xml.gz
  fi
fi
if [ ! -f pubmed21n0289.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0289.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0289.xml.gz"
  if ! gzip -d "pubmed21n0289.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0289.xml.gz"
    rm pubmed21n0289.xml.gz
  fi
fi
if [ ! -f pubmed21n0290.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0290.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0290.xml.gz"
  if ! gzip -d "pubmed21n0290.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0290.xml.gz"
    rm pubmed21n0290.xml.gz
  fi
fi
if [ ! -f pubmed21n0291.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0291.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0291.xml.gz"
  if ! gzip -d "pubmed21n0291.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0291.xml.gz"
    rm pubmed21n0291.xml.gz
  fi
fi
if [ ! -f pubmed21n0292.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0292.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0292.xml.gz"
  if ! gzip -d "pubmed21n0292.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0292.xml.gz"
    rm pubmed21n0292.xml.gz
  fi
fi
if [ ! -f pubmed21n0293.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0293.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0293.xml.gz"
  if ! gzip -d "pubmed21n0293.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0293.xml.gz"
    rm pubmed21n0293.xml.gz
  fi
fi
if [ ! -f pubmed21n0294.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0294.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0294.xml.gz"
  if ! gzip -d "pubmed21n0294.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0294.xml.gz"
    rm pubmed21n0294.xml.gz
  fi
fi
if [ ! -f pubmed21n0295.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0295.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0295.xml.gz"
  if ! gzip -d "pubmed21n0295.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0295.xml.gz"
    rm pubmed21n0295.xml.gz
  fi
fi
if [ ! -f pubmed21n0296.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0296.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0296.xml.gz"
  if ! gzip -d "pubmed21n0296.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0296.xml.gz"
    rm pubmed21n0296.xml.gz
  fi
fi
if [ ! -f pubmed21n0297.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0297.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0297.xml.gz"
  if ! gzip -d "pubmed21n0297.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0297.xml.gz"
    rm pubmed21n0297.xml.gz
  fi
fi
if [ ! -f pubmed21n0298.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0298.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0298.xml.gz"
  if ! gzip -d "pubmed21n0298.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0298.xml.gz"
    rm pubmed21n0298.xml.gz
  fi
fi
if [ ! -f pubmed21n0299.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0299.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0299.xml.gz"
  if ! gzip -d "pubmed21n0299.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0299.xml.gz"
    rm pubmed21n0299.xml.gz
  fi
fi
if [ ! -f pubmed21n0300.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0300.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0300.xml.gz"
  if ! gzip -d "pubmed21n0300.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0300.xml.gz"
    rm pubmed21n0300.xml.gz
  fi
fi
if [ ! -f pubmed21n0301.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0301.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0301.xml.gz"
  if ! gzip -d "pubmed21n0301.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0301.xml.gz"
    rm pubmed21n0301.xml.gz
  fi
fi
if [ ! -f pubmed21n0302.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0302.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0302.xml.gz"
  if ! gzip -d "pubmed21n0302.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0302.xml.gz"
    rm pubmed21n0302.xml.gz
  fi
fi
if [ ! -f pubmed21n0303.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0303.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0303.xml.gz"
  if ! gzip -d "pubmed21n0303.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0303.xml.gz"
    rm pubmed21n0303.xml.gz
  fi
fi
if [ ! -f pubmed21n0304.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0304.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0304.xml.gz"
  if ! gzip -d "pubmed21n0304.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0304.xml.gz"
    rm pubmed21n0304.xml.gz
  fi
fi
if [ ! -f pubmed21n0305.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0305.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0305.xml.gz"
  if ! gzip -d "pubmed21n0305.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0305.xml.gz"
    rm pubmed21n0305.xml.gz
  fi
fi
if [ ! -f pubmed21n0306.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0306.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0306.xml.gz"
  if ! gzip -d "pubmed21n0306.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0306.xml.gz"
    rm pubmed21n0306.xml.gz
  fi
fi
if [ ! -f pubmed21n0307.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0307.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0307.xml.gz"
  if ! gzip -d "pubmed21n0307.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0307.xml.gz"
    rm pubmed21n0307.xml.gz
  fi
fi
if [ ! -f pubmed21n0308.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0308.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0308.xml.gz"
  if ! gzip -d "pubmed21n0308.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0308.xml.gz"
    rm pubmed21n0308.xml.gz
  fi
fi
if [ ! -f pubmed21n0309.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0309.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0309.xml.gz"
  if ! gzip -d "pubmed21n0309.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0309.xml.gz"
    rm pubmed21n0309.xml.gz
  fi
fi
if [ ! -f pubmed21n0310.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0310.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0310.xml.gz"
  if ! gzip -d "pubmed21n0310.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0310.xml.gz"
    rm pubmed21n0310.xml.gz
  fi
fi
if [ ! -f pubmed21n0311.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0311.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0311.xml.gz"
  if ! gzip -d "pubmed21n0311.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0311.xml.gz"
    rm pubmed21n0311.xml.gz
  fi
fi
if [ ! -f pubmed21n0312.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0312.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0312.xml.gz"
  if ! gzip -d "pubmed21n0312.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0312.xml.gz"
    rm pubmed21n0312.xml.gz
  fi
fi
if [ ! -f pubmed21n0313.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0313.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0313.xml.gz"
  if ! gzip -d "pubmed21n0313.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0313.xml.gz"
    rm pubmed21n0313.xml.gz
  fi
fi
if [ ! -f pubmed21n0314.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0314.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0314.xml.gz"
  if ! gzip -d "pubmed21n0314.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0314.xml.gz"
    rm pubmed21n0314.xml.gz
  fi
fi
if [ ! -f pubmed21n0315.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0315.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0315.xml.gz"
  if ! gzip -d "pubmed21n0315.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0315.xml.gz"
    rm pubmed21n0315.xml.gz
  fi
fi
if [ ! -f pubmed21n0316.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0316.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0316.xml.gz"
  if ! gzip -d "pubmed21n0316.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0316.xml.gz"
    rm pubmed21n0316.xml.gz
  fi
fi
if [ ! -f pubmed21n0317.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0317.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0317.xml.gz"
  if ! gzip -d "pubmed21n0317.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0317.xml.gz"
    rm pubmed21n0317.xml.gz
  fi
fi
if [ ! -f pubmed21n0318.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0318.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0318.xml.gz"
  if ! gzip -d "pubmed21n0318.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0318.xml.gz"
    rm pubmed21n0318.xml.gz
  fi
fi
if [ ! -f pubmed21n0319.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0319.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0319.xml.gz"
  if ! gzip -d "pubmed21n0319.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0319.xml.gz"
    rm pubmed21n0319.xml.gz
  fi
fi
if [ ! -f pubmed21n0320.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0320.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0320.xml.gz"
  if ! gzip -d "pubmed21n0320.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0320.xml.gz"
    rm pubmed21n0320.xml.gz
  fi
fi
if [ ! -f pubmed21n0321.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0321.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0321.xml.gz"
  if ! gzip -d "pubmed21n0321.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0321.xml.gz"
    rm pubmed21n0321.xml.gz
  fi
fi
if [ ! -f pubmed21n0322.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0322.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0322.xml.gz"
  if ! gzip -d "pubmed21n0322.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0322.xml.gz"
    rm pubmed21n0322.xml.gz
  fi
fi
if [ ! -f pubmed21n0323.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0323.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0323.xml.gz"
  if ! gzip -d "pubmed21n0323.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0323.xml.gz"
    rm pubmed21n0323.xml.gz
  fi
fi
if [ ! -f pubmed21n0324.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0324.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0324.xml.gz"
  if ! gzip -d "pubmed21n0324.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0324.xml.gz"
    rm pubmed21n0324.xml.gz
  fi
fi
if [ ! -f pubmed21n0325.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0325.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0325.xml.gz"
  if ! gzip -d "pubmed21n0325.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0325.xml.gz"
    rm pubmed21n0325.xml.gz
  fi
fi
if [ ! -f pubmed21n0326.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0326.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0326.xml.gz"
  if ! gzip -d "pubmed21n0326.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0326.xml.gz"
    rm pubmed21n0326.xml.gz
  fi
fi
if [ ! -f pubmed21n0327.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0327.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0327.xml.gz"
  if ! gzip -d "pubmed21n0327.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0327.xml.gz"
    rm pubmed21n0327.xml.gz
  fi
fi
if [ ! -f pubmed21n0328.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0328.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0328.xml.gz"
  if ! gzip -d "pubmed21n0328.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0328.xml.gz"
    rm pubmed21n0328.xml.gz
  fi
fi
if [ ! -f pubmed21n0329.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0329.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0329.xml.gz"
  if ! gzip -d "pubmed21n0329.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0329.xml.gz"
    rm pubmed21n0329.xml.gz
  fi
fi
if [ ! -f pubmed21n0330.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0330.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0330.xml.gz"
  if ! gzip -d "pubmed21n0330.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0330.xml.gz"
    rm pubmed21n0330.xml.gz
  fi
fi
if [ ! -f pubmed21n0331.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0331.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0331.xml.gz"
  if ! gzip -d "pubmed21n0331.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0331.xml.gz"
    rm pubmed21n0331.xml.gz
  fi
fi
if [ ! -f pubmed21n0332.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0332.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0332.xml.gz"
  if ! gzip -d "pubmed21n0332.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0332.xml.gz"
    rm pubmed21n0332.xml.gz
  fi
fi
if [ ! -f pubmed21n0333.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0333.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0333.xml.gz"
  if ! gzip -d "pubmed21n0333.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0333.xml.gz"
    rm pubmed21n0333.xml.gz
  fi
fi
if [ ! -f pubmed21n0334.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0334.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0334.xml.gz"
  if ! gzip -d "pubmed21n0334.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0334.xml.gz"
    rm pubmed21n0334.xml.gz
  fi
fi
if [ ! -f pubmed21n0335.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0335.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0335.xml.gz"
  if ! gzip -d "pubmed21n0335.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0335.xml.gz"
    rm pubmed21n0335.xml.gz
  fi
fi
if [ ! -f pubmed21n0336.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0336.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0336.xml.gz"
  if ! gzip -d "pubmed21n0336.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0336.xml.gz"
    rm pubmed21n0336.xml.gz
  fi
fi
if [ ! -f pubmed21n0337.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0337.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0337.xml.gz"
  if ! gzip -d "pubmed21n0337.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0337.xml.gz"
    rm pubmed21n0337.xml.gz
  fi
fi
if [ ! -f pubmed21n0338.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0338.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0338.xml.gz"
  if ! gzip -d "pubmed21n0338.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0338.xml.gz"
    rm pubmed21n0338.xml.gz
  fi
fi
if [ ! -f pubmed21n0339.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0339.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0339.xml.gz"
  if ! gzip -d "pubmed21n0339.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0339.xml.gz"
    rm pubmed21n0339.xml.gz
  fi
fi
if [ ! -f pubmed21n0340.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0340.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0340.xml.gz"
  if ! gzip -d "pubmed21n0340.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0340.xml.gz"
    rm pubmed21n0340.xml.gz
  fi
fi
if [ ! -f pubmed21n0341.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0341.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0341.xml.gz"
  if ! gzip -d "pubmed21n0341.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0341.xml.gz"
    rm pubmed21n0341.xml.gz
  fi
fi
if [ ! -f pubmed21n0342.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0342.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0342.xml.gz"
  if ! gzip -d "pubmed21n0342.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0342.xml.gz"
    rm pubmed21n0342.xml.gz
  fi
fi
if [ ! -f pubmed21n0343.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0343.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0343.xml.gz"
  if ! gzip -d "pubmed21n0343.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0343.xml.gz"
    rm pubmed21n0343.xml.gz
  fi
fi
if [ ! -f pubmed21n0344.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0344.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0344.xml.gz"
  if ! gzip -d "pubmed21n0344.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0344.xml.gz"
    rm pubmed21n0344.xml.gz
  fi
fi
if [ ! -f pubmed21n0345.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0345.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0345.xml.gz"
  if ! gzip -d "pubmed21n0345.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0345.xml.gz"
    rm pubmed21n0345.xml.gz
  fi
fi
if [ ! -f pubmed21n0346.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0346.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0346.xml.gz"
  if ! gzip -d "pubmed21n0346.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0346.xml.gz"
    rm pubmed21n0346.xml.gz
  fi
fi
if [ ! -f pubmed21n0347.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0347.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0347.xml.gz"
  if ! gzip -d "pubmed21n0347.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0347.xml.gz"
    rm pubmed21n0347.xml.gz
  fi
fi
if [ ! -f pubmed21n0348.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0348.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0348.xml.gz"
  if ! gzip -d "pubmed21n0348.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0348.xml.gz"
    rm pubmed21n0348.xml.gz
  fi
fi
if [ ! -f pubmed21n0349.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0349.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0349.xml.gz"
  if ! gzip -d "pubmed21n0349.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0349.xml.gz"
    rm pubmed21n0349.xml.gz
  fi
fi
if [ ! -f pubmed21n0350.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0350.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0350.xml.gz"
  if ! gzip -d "pubmed21n0350.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0350.xml.gz"
    rm pubmed21n0350.xml.gz
  fi
fi
if [ ! -f pubmed21n0351.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0351.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0351.xml.gz"
  if ! gzip -d "pubmed21n0351.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0351.xml.gz"
    rm pubmed21n0351.xml.gz
  fi
fi
if [ ! -f pubmed21n0352.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0352.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0352.xml.gz"
  if ! gzip -d "pubmed21n0352.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0352.xml.gz"
    rm pubmed21n0352.xml.gz
  fi
fi
if [ ! -f pubmed21n0353.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0353.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0353.xml.gz"
  if ! gzip -d "pubmed21n0353.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0353.xml.gz"
    rm pubmed21n0353.xml.gz
  fi
fi
if [ ! -f pubmed21n0354.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0354.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0354.xml.gz"
  if ! gzip -d "pubmed21n0354.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0354.xml.gz"
    rm pubmed21n0354.xml.gz
  fi
fi
if [ ! -f pubmed21n0355.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0355.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0355.xml.gz"
  if ! gzip -d "pubmed21n0355.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0355.xml.gz"
    rm pubmed21n0355.xml.gz
  fi
fi
if [ ! -f pubmed21n0356.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0356.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0356.xml.gz"
  if ! gzip -d "pubmed21n0356.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0356.xml.gz"
    rm pubmed21n0356.xml.gz
  fi
fi
if [ ! -f pubmed21n0357.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0357.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0357.xml.gz"
  if ! gzip -d "pubmed21n0357.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0357.xml.gz"
    rm pubmed21n0357.xml.gz
  fi
fi
if [ ! -f pubmed21n0358.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0358.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0358.xml.gz"
  if ! gzip -d "pubmed21n0358.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0358.xml.gz"
    rm pubmed21n0358.xml.gz
  fi
fi
if [ ! -f pubmed21n0359.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0359.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0359.xml.gz"
  if ! gzip -d "pubmed21n0359.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0359.xml.gz"
    rm pubmed21n0359.xml.gz
  fi
fi
if [ ! -f pubmed21n0360.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0360.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0360.xml.gz"
  if ! gzip -d "pubmed21n0360.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0360.xml.gz"
    rm pubmed21n0360.xml.gz
  fi
fi
if [ ! -f pubmed21n0361.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0361.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0361.xml.gz"
  if ! gzip -d "pubmed21n0361.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0361.xml.gz"
    rm pubmed21n0361.xml.gz
  fi
fi
if [ ! -f pubmed21n0362.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0362.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0362.xml.gz"
  if ! gzip -d "pubmed21n0362.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0362.xml.gz"
    rm pubmed21n0362.xml.gz
  fi
fi
if [ ! -f pubmed21n0363.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0363.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0363.xml.gz"
  if ! gzip -d "pubmed21n0363.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0363.xml.gz"
    rm pubmed21n0363.xml.gz
  fi
fi
if [ ! -f pubmed21n0364.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0364.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0364.xml.gz"
  if ! gzip -d "pubmed21n0364.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0364.xml.gz"
    rm pubmed21n0364.xml.gz
  fi
fi
if [ ! -f pubmed21n0365.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0365.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0365.xml.gz"
  if ! gzip -d "pubmed21n0365.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0365.xml.gz"
    rm pubmed21n0365.xml.gz
  fi
fi
if [ ! -f pubmed21n0366.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0366.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0366.xml.gz"
  if ! gzip -d "pubmed21n0366.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0366.xml.gz"
    rm pubmed21n0366.xml.gz
  fi
fi
if [ ! -f pubmed21n0367.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0367.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0367.xml.gz"
  if ! gzip -d "pubmed21n0367.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0367.xml.gz"
    rm pubmed21n0367.xml.gz
  fi
fi
if [ ! -f pubmed21n0368.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0368.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0368.xml.gz"
  if ! gzip -d "pubmed21n0368.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0368.xml.gz"
    rm pubmed21n0368.xml.gz
  fi
fi
if [ ! -f pubmed21n0369.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0369.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0369.xml.gz"
  if ! gzip -d "pubmed21n0369.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0369.xml.gz"
    rm pubmed21n0369.xml.gz
  fi
fi
if [ ! -f pubmed21n0370.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0370.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0370.xml.gz"
  if ! gzip -d "pubmed21n0370.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0370.xml.gz"
    rm pubmed21n0370.xml.gz
  fi
fi
if [ ! -f pubmed21n0371.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0371.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0371.xml.gz"
  if ! gzip -d "pubmed21n0371.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0371.xml.gz"
    rm pubmed21n0371.xml.gz
  fi
fi
if [ ! -f pubmed21n0372.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0372.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0372.xml.gz"
  if ! gzip -d "pubmed21n0372.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0372.xml.gz"
    rm pubmed21n0372.xml.gz
  fi
fi
if [ ! -f pubmed21n0373.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0373.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0373.xml.gz"
  if ! gzip -d "pubmed21n0373.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0373.xml.gz"
    rm pubmed21n0373.xml.gz
  fi
fi
if [ ! -f pubmed21n0374.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0374.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0374.xml.gz"
  if ! gzip -d "pubmed21n0374.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0374.xml.gz"
    rm pubmed21n0374.xml.gz
  fi
fi
if [ ! -f pubmed21n0375.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0375.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0375.xml.gz"
  if ! gzip -d "pubmed21n0375.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0375.xml.gz"
    rm pubmed21n0375.xml.gz
  fi
fi
if [ ! -f pubmed21n0376.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0376.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0376.xml.gz"
  if ! gzip -d "pubmed21n0376.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0376.xml.gz"
    rm pubmed21n0376.xml.gz
  fi
fi
if [ ! -f pubmed21n0377.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0377.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0377.xml.gz"
  if ! gzip -d "pubmed21n0377.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0377.xml.gz"
    rm pubmed21n0377.xml.gz
  fi
fi
if [ ! -f pubmed21n0378.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0378.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0378.xml.gz"
  if ! gzip -d "pubmed21n0378.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0378.xml.gz"
    rm pubmed21n0378.xml.gz
  fi
fi
if [ ! -f pubmed21n0379.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0379.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0379.xml.gz"
  if ! gzip -d "pubmed21n0379.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0379.xml.gz"
    rm pubmed21n0379.xml.gz
  fi
fi
if [ ! -f pubmed21n0380.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0380.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0380.xml.gz"
  if ! gzip -d "pubmed21n0380.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0380.xml.gz"
    rm pubmed21n0380.xml.gz
  fi
fi
if [ ! -f pubmed21n0381.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0381.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0381.xml.gz"
  if ! gzip -d "pubmed21n0381.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0381.xml.gz"
    rm pubmed21n0381.xml.gz
  fi
fi
if [ ! -f pubmed21n0382.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0382.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0382.xml.gz"
  if ! gzip -d "pubmed21n0382.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0382.xml.gz"
    rm pubmed21n0382.xml.gz
  fi
fi
if [ ! -f pubmed21n0383.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0383.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0383.xml.gz"
  if ! gzip -d "pubmed21n0383.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0383.xml.gz"
    rm pubmed21n0383.xml.gz
  fi
fi
if [ ! -f pubmed21n0384.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0384.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0384.xml.gz"
  if ! gzip -d "pubmed21n0384.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0384.xml.gz"
    rm pubmed21n0384.xml.gz
  fi
fi
if [ ! -f pubmed21n0385.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0385.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0385.xml.gz"
  if ! gzip -d "pubmed21n0385.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0385.xml.gz"
    rm pubmed21n0385.xml.gz
  fi
fi
if [ ! -f pubmed21n0386.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0386.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0386.xml.gz"
  if ! gzip -d "pubmed21n0386.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0386.xml.gz"
    rm pubmed21n0386.xml.gz
  fi
fi
if [ ! -f pubmed21n0387.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0387.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0387.xml.gz"
  if ! gzip -d "pubmed21n0387.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0387.xml.gz"
    rm pubmed21n0387.xml.gz
  fi
fi
if [ ! -f pubmed21n0388.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0388.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0388.xml.gz"
  if ! gzip -d "pubmed21n0388.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0388.xml.gz"
    rm pubmed21n0388.xml.gz
  fi
fi
if [ ! -f pubmed21n0389.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0389.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0389.xml.gz"
  if ! gzip -d "pubmed21n0389.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0389.xml.gz"
    rm pubmed21n0389.xml.gz
  fi
fi
if [ ! -f pubmed21n0390.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0390.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0390.xml.gz"
  if ! gzip -d "pubmed21n0390.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0390.xml.gz"
    rm pubmed21n0390.xml.gz
  fi
fi
if [ ! -f pubmed21n0391.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0391.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0391.xml.gz"
  if ! gzip -d "pubmed21n0391.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0391.xml.gz"
    rm pubmed21n0391.xml.gz
  fi
fi
if [ ! -f pubmed21n0392.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0392.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0392.xml.gz"
  if ! gzip -d "pubmed21n0392.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0392.xml.gz"
    rm pubmed21n0392.xml.gz
  fi
fi
if [ ! -f pubmed21n0393.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0393.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0393.xml.gz"
  if ! gzip -d "pubmed21n0393.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0393.xml.gz"
    rm pubmed21n0393.xml.gz
  fi
fi
if [ ! -f pubmed21n0394.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0394.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0394.xml.gz"
  if ! gzip -d "pubmed21n0394.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0394.xml.gz"
    rm pubmed21n0394.xml.gz
  fi
fi
if [ ! -f pubmed21n0395.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0395.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0395.xml.gz"
  if ! gzip -d "pubmed21n0395.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0395.xml.gz"
    rm pubmed21n0395.xml.gz
  fi
fi
if [ ! -f pubmed21n0396.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0396.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0396.xml.gz"
  if ! gzip -d "pubmed21n0396.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0396.xml.gz"
    rm pubmed21n0396.xml.gz
  fi
fi
if [ ! -f pubmed21n0397.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0397.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0397.xml.gz"
  if ! gzip -d "pubmed21n0397.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0397.xml.gz"
    rm pubmed21n0397.xml.gz
  fi
fi
if [ ! -f pubmed21n0398.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0398.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0398.xml.gz"
  if ! gzip -d "pubmed21n0398.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0398.xml.gz"
    rm pubmed21n0398.xml.gz
  fi
fi
if [ ! -f pubmed21n0399.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0399.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0399.xml.gz"
  if ! gzip -d "pubmed21n0399.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0399.xml.gz"
    rm pubmed21n0399.xml.gz
  fi
fi
if [ ! -f pubmed21n0400.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0400.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0400.xml.gz"
  if ! gzip -d "pubmed21n0400.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0400.xml.gz"
    rm pubmed21n0400.xml.gz
  fi
fi
if [ ! -f pubmed21n0401.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0401.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0401.xml.gz"
  if ! gzip -d "pubmed21n0401.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0401.xml.gz"
    rm pubmed21n0401.xml.gz
  fi
fi
if [ ! -f pubmed21n0402.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0402.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0402.xml.gz"
  if ! gzip -d "pubmed21n0402.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0402.xml.gz"
    rm pubmed21n0402.xml.gz
  fi
fi
if [ ! -f pubmed21n0403.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0403.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0403.xml.gz"
  if ! gzip -d "pubmed21n0403.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0403.xml.gz"
    rm pubmed21n0403.xml.gz
  fi
fi
if [ ! -f pubmed21n0404.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0404.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0404.xml.gz"
  if ! gzip -d "pubmed21n0404.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0404.xml.gz"
    rm pubmed21n0404.xml.gz
  fi
fi
if [ ! -f pubmed21n0405.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0405.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0405.xml.gz"
  if ! gzip -d "pubmed21n0405.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0405.xml.gz"
    rm pubmed21n0405.xml.gz
  fi
fi
if [ ! -f pubmed21n0406.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0406.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0406.xml.gz"
  if ! gzip -d "pubmed21n0406.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0406.xml.gz"
    rm pubmed21n0406.xml.gz
  fi
fi
if [ ! -f pubmed21n0407.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0407.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0407.xml.gz"
  if ! gzip -d "pubmed21n0407.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0407.xml.gz"
    rm pubmed21n0407.xml.gz
  fi
fi
if [ ! -f pubmed21n0408.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0408.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0408.xml.gz"
  if ! gzip -d "pubmed21n0408.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0408.xml.gz"
    rm pubmed21n0408.xml.gz
  fi
fi
if [ ! -f pubmed21n0409.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0409.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0409.xml.gz"
  if ! gzip -d "pubmed21n0409.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0409.xml.gz"
    rm pubmed21n0409.xml.gz
  fi
fi
if [ ! -f pubmed21n0410.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0410.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0410.xml.gz"
  if ! gzip -d "pubmed21n0410.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0410.xml.gz"
    rm pubmed21n0410.xml.gz
  fi
fi
if [ ! -f pubmed21n0411.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0411.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0411.xml.gz"
  if ! gzip -d "pubmed21n0411.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0411.xml.gz"
    rm pubmed21n0411.xml.gz
  fi
fi
if [ ! -f pubmed21n0412.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0412.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0412.xml.gz"
  if ! gzip -d "pubmed21n0412.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0412.xml.gz"
    rm pubmed21n0412.xml.gz
  fi
fi
if [ ! -f pubmed21n0413.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0413.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0413.xml.gz"
  if ! gzip -d "pubmed21n0413.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0413.xml.gz"
    rm pubmed21n0413.xml.gz
  fi
fi
if [ ! -f pubmed21n0414.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0414.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0414.xml.gz"
  if ! gzip -d "pubmed21n0414.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0414.xml.gz"
    rm pubmed21n0414.xml.gz
  fi
fi
if [ ! -f pubmed21n0415.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0415.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0415.xml.gz"
  if ! gzip -d "pubmed21n0415.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0415.xml.gz"
    rm pubmed21n0415.xml.gz
  fi
fi
if [ ! -f pubmed21n0416.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0416.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0416.xml.gz"
  if ! gzip -d "pubmed21n0416.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0416.xml.gz"
    rm pubmed21n0416.xml.gz
  fi
fi
if [ ! -f pubmed21n0417.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0417.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0417.xml.gz"
  if ! gzip -d "pubmed21n0417.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0417.xml.gz"
    rm pubmed21n0417.xml.gz
  fi
fi
if [ ! -f pubmed21n0418.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0418.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0418.xml.gz"
  if ! gzip -d "pubmed21n0418.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0418.xml.gz"
    rm pubmed21n0418.xml.gz
  fi
fi
if [ ! -f pubmed21n0419.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0419.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0419.xml.gz"
  if ! gzip -d "pubmed21n0419.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0419.xml.gz"
    rm pubmed21n0419.xml.gz
  fi
fi
if [ ! -f pubmed21n0420.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0420.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0420.xml.gz"
  if ! gzip -d "pubmed21n0420.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0420.xml.gz"
    rm pubmed21n0420.xml.gz
  fi
fi
if [ ! -f pubmed21n0421.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0421.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0421.xml.gz"
  if ! gzip -d "pubmed21n0421.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0421.xml.gz"
    rm pubmed21n0421.xml.gz
  fi
fi
if [ ! -f pubmed21n0422.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0422.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0422.xml.gz"
  if ! gzip -d "pubmed21n0422.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0422.xml.gz"
    rm pubmed21n0422.xml.gz
  fi
fi
if [ ! -f pubmed21n0423.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0423.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0423.xml.gz"
  if ! gzip -d "pubmed21n0423.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0423.xml.gz"
    rm pubmed21n0423.xml.gz
  fi
fi
if [ ! -f pubmed21n0424.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0424.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0424.xml.gz"
  if ! gzip -d "pubmed21n0424.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0424.xml.gz"
    rm pubmed21n0424.xml.gz
  fi
fi
if [ ! -f pubmed21n0425.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0425.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0425.xml.gz"
  if ! gzip -d "pubmed21n0425.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0425.xml.gz"
    rm pubmed21n0425.xml.gz
  fi
fi
if [ ! -f pubmed21n0426.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0426.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0426.xml.gz"
  if ! gzip -d "pubmed21n0426.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0426.xml.gz"
    rm pubmed21n0426.xml.gz
  fi
fi
if [ ! -f pubmed21n0427.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0427.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0427.xml.gz"
  if ! gzip -d "pubmed21n0427.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0427.xml.gz"
    rm pubmed21n0427.xml.gz
  fi
fi
if [ ! -f pubmed21n0428.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0428.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0428.xml.gz"
  if ! gzip -d "pubmed21n0428.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0428.xml.gz"
    rm pubmed21n0428.xml.gz
  fi
fi
if [ ! -f pubmed21n0429.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0429.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0429.xml.gz"
  if ! gzip -d "pubmed21n0429.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0429.xml.gz"
    rm pubmed21n0429.xml.gz
  fi
fi
if [ ! -f pubmed21n0430.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0430.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0430.xml.gz"
  if ! gzip -d "pubmed21n0430.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0430.xml.gz"
    rm pubmed21n0430.xml.gz
  fi
fi
if [ ! -f pubmed21n0431.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0431.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0431.xml.gz"
  if ! gzip -d "pubmed21n0431.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0431.xml.gz"
    rm pubmed21n0431.xml.gz
  fi
fi
if [ ! -f pubmed21n0432.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0432.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0432.xml.gz"
  if ! gzip -d "pubmed21n0432.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0432.xml.gz"
    rm pubmed21n0432.xml.gz
  fi
fi
if [ ! -f pubmed21n0433.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0433.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0433.xml.gz"
  if ! gzip -d "pubmed21n0433.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0433.xml.gz"
    rm pubmed21n0433.xml.gz
  fi
fi
if [ ! -f pubmed21n0434.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0434.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0434.xml.gz"
  if ! gzip -d "pubmed21n0434.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0434.xml.gz"
    rm pubmed21n0434.xml.gz
  fi
fi
if [ ! -f pubmed21n0435.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0435.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0435.xml.gz"
  if ! gzip -d "pubmed21n0435.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0435.xml.gz"
    rm pubmed21n0435.xml.gz
  fi
fi
if [ ! -f pubmed21n0436.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0436.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0436.xml.gz"
  if ! gzip -d "pubmed21n0436.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0436.xml.gz"
    rm pubmed21n0436.xml.gz
  fi
fi
if [ ! -f pubmed21n0437.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0437.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0437.xml.gz"
  if ! gzip -d "pubmed21n0437.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0437.xml.gz"
    rm pubmed21n0437.xml.gz
  fi
fi
if [ ! -f pubmed21n0438.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0438.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0438.xml.gz"
  if ! gzip -d "pubmed21n0438.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0438.xml.gz"
    rm pubmed21n0438.xml.gz
  fi
fi
if [ ! -f pubmed21n0439.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0439.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0439.xml.gz"
  if ! gzip -d "pubmed21n0439.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0439.xml.gz"
    rm pubmed21n0439.xml.gz
  fi
fi
if [ ! -f pubmed21n0440.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0440.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0440.xml.gz"
  if ! gzip -d "pubmed21n0440.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0440.xml.gz"
    rm pubmed21n0440.xml.gz
  fi
fi
if [ ! -f pubmed21n0441.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0441.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0441.xml.gz"
  if ! gzip -d "pubmed21n0441.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0441.xml.gz"
    rm pubmed21n0441.xml.gz
  fi
fi
if [ ! -f pubmed21n0442.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0442.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0442.xml.gz"
  if ! gzip -d "pubmed21n0442.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0442.xml.gz"
    rm pubmed21n0442.xml.gz
  fi
fi
if [ ! -f pubmed21n0443.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0443.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0443.xml.gz"
  if ! gzip -d "pubmed21n0443.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0443.xml.gz"
    rm pubmed21n0443.xml.gz
  fi
fi
if [ ! -f pubmed21n0444.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0444.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0444.xml.gz"
  if ! gzip -d "pubmed21n0444.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0444.xml.gz"
    rm pubmed21n0444.xml.gz
  fi
fi
if [ ! -f pubmed21n0445.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0445.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0445.xml.gz"
  if ! gzip -d "pubmed21n0445.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0445.xml.gz"
    rm pubmed21n0445.xml.gz
  fi
fi
if [ ! -f pubmed21n0446.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0446.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0446.xml.gz"
  if ! gzip -d "pubmed21n0446.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0446.xml.gz"
    rm pubmed21n0446.xml.gz
  fi
fi
if [ ! -f pubmed21n0447.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0447.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0447.xml.gz"
  if ! gzip -d "pubmed21n0447.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0447.xml.gz"
    rm pubmed21n0447.xml.gz
  fi
fi
if [ ! -f pubmed21n0448.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0448.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0448.xml.gz"
  if ! gzip -d "pubmed21n0448.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0448.xml.gz"
    rm pubmed21n0448.xml.gz
  fi
fi
if [ ! -f pubmed21n0449.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0449.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0449.xml.gz"
  if ! gzip -d "pubmed21n0449.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0449.xml.gz"
    rm pubmed21n0449.xml.gz
  fi
fi
if [ ! -f pubmed21n0450.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0450.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0450.xml.gz"
  if ! gzip -d "pubmed21n0450.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0450.xml.gz"
    rm pubmed21n0450.xml.gz
  fi
fi
if [ ! -f pubmed21n0451.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0451.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0451.xml.gz"
  if ! gzip -d "pubmed21n0451.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0451.xml.gz"
    rm pubmed21n0451.xml.gz
  fi
fi
if [ ! -f pubmed21n0452.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0452.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0452.xml.gz"
  if ! gzip -d "pubmed21n0452.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0452.xml.gz"
    rm pubmed21n0452.xml.gz
  fi
fi
if [ ! -f pubmed21n0453.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0453.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0453.xml.gz"
  if ! gzip -d "pubmed21n0453.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0453.xml.gz"
    rm pubmed21n0453.xml.gz
  fi
fi
if [ ! -f pubmed21n0454.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0454.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0454.xml.gz"
  if ! gzip -d "pubmed21n0454.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0454.xml.gz"
    rm pubmed21n0454.xml.gz
  fi
fi
if [ ! -f pubmed21n0455.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0455.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0455.xml.gz"
  if ! gzip -d "pubmed21n0455.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0455.xml.gz"
    rm pubmed21n0455.xml.gz
  fi
fi
if [ ! -f pubmed21n0456.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0456.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0456.xml.gz"
  if ! gzip -d "pubmed21n0456.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0456.xml.gz"
    rm pubmed21n0456.xml.gz
  fi
fi
if [ ! -f pubmed21n0457.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0457.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0457.xml.gz"
  if ! gzip -d "pubmed21n0457.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0457.xml.gz"
    rm pubmed21n0457.xml.gz
  fi
fi
if [ ! -f pubmed21n0458.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0458.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0458.xml.gz"
  if ! gzip -d "pubmed21n0458.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0458.xml.gz"
    rm pubmed21n0458.xml.gz
  fi
fi
if [ ! -f pubmed21n0459.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0459.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0459.xml.gz"
  if ! gzip -d "pubmed21n0459.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0459.xml.gz"
    rm pubmed21n0459.xml.gz
  fi
fi
if [ ! -f pubmed21n0460.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0460.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0460.xml.gz"
  if ! gzip -d "pubmed21n0460.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0460.xml.gz"
    rm pubmed21n0460.xml.gz
  fi
fi
if [ ! -f pubmed21n0461.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0461.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0461.xml.gz"
  if ! gzip -d "pubmed21n0461.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0461.xml.gz"
    rm pubmed21n0461.xml.gz
  fi
fi
if [ ! -f pubmed21n0462.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0462.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0462.xml.gz"
  if ! gzip -d "pubmed21n0462.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0462.xml.gz"
    rm pubmed21n0462.xml.gz
  fi
fi
if [ ! -f pubmed21n0463.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0463.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0463.xml.gz"
  if ! gzip -d "pubmed21n0463.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0463.xml.gz"
    rm pubmed21n0463.xml.gz
  fi
fi
if [ ! -f pubmed21n0464.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0464.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0464.xml.gz"
  if ! gzip -d "pubmed21n0464.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0464.xml.gz"
    rm pubmed21n0464.xml.gz
  fi
fi
if [ ! -f pubmed21n0465.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0465.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0465.xml.gz"
  if ! gzip -d "pubmed21n0465.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0465.xml.gz"
    rm pubmed21n0465.xml.gz
  fi
fi
if [ ! -f pubmed21n0466.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0466.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0466.xml.gz"
  if ! gzip -d "pubmed21n0466.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0466.xml.gz"
    rm pubmed21n0466.xml.gz
  fi
fi
if [ ! -f pubmed21n0467.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0467.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0467.xml.gz"
  if ! gzip -d "pubmed21n0467.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0467.xml.gz"
    rm pubmed21n0467.xml.gz
  fi
fi
if [ ! -f pubmed21n0468.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0468.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0468.xml.gz"
  if ! gzip -d "pubmed21n0468.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0468.xml.gz"
    rm pubmed21n0468.xml.gz
  fi
fi
if [ ! -f pubmed21n0469.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0469.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0469.xml.gz"
  if ! gzip -d "pubmed21n0469.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0469.xml.gz"
    rm pubmed21n0469.xml.gz
  fi
fi
if [ ! -f pubmed21n0470.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0470.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0470.xml.gz"
  if ! gzip -d "pubmed21n0470.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0470.xml.gz"
    rm pubmed21n0470.xml.gz
  fi
fi
if [ ! -f pubmed21n0471.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0471.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0471.xml.gz"
  if ! gzip -d "pubmed21n0471.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0471.xml.gz"
    rm pubmed21n0471.xml.gz
  fi
fi
if [ ! -f pubmed21n0472.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0472.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0472.xml.gz"
  if ! gzip -d "pubmed21n0472.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0472.xml.gz"
    rm pubmed21n0472.xml.gz
  fi
fi
if [ ! -f pubmed21n0473.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0473.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0473.xml.gz"
  if ! gzip -d "pubmed21n0473.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0473.xml.gz"
    rm pubmed21n0473.xml.gz
  fi
fi
if [ ! -f pubmed21n0474.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0474.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0474.xml.gz"
  if ! gzip -d "pubmed21n0474.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0474.xml.gz"
    rm pubmed21n0474.xml.gz
  fi
fi
if [ ! -f pubmed21n0475.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0475.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0475.xml.gz"
  if ! gzip -d "pubmed21n0475.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0475.xml.gz"
    rm pubmed21n0475.xml.gz
  fi
fi
if [ ! -f pubmed21n0476.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0476.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0476.xml.gz"
  if ! gzip -d "pubmed21n0476.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0476.xml.gz"
    rm pubmed21n0476.xml.gz
  fi
fi
if [ ! -f pubmed21n0477.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0477.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0477.xml.gz"
  if ! gzip -d "pubmed21n0477.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0477.xml.gz"
    rm pubmed21n0477.xml.gz
  fi
fi
if [ ! -f pubmed21n0478.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0478.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0478.xml.gz"
  if ! gzip -d "pubmed21n0478.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0478.xml.gz"
    rm pubmed21n0478.xml.gz
  fi
fi
if [ ! -f pubmed21n0479.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0479.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0479.xml.gz"
  if ! gzip -d "pubmed21n0479.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0479.xml.gz"
    rm pubmed21n0479.xml.gz
  fi
fi
if [ ! -f pubmed21n0480.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0480.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0480.xml.gz"
  if ! gzip -d "pubmed21n0480.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0480.xml.gz"
    rm pubmed21n0480.xml.gz
  fi
fi
if [ ! -f pubmed21n0481.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0481.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0481.xml.gz"
  if ! gzip -d "pubmed21n0481.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0481.xml.gz"
    rm pubmed21n0481.xml.gz
  fi
fi
if [ ! -f pubmed21n0482.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0482.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0482.xml.gz"
  if ! gzip -d "pubmed21n0482.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0482.xml.gz"
    rm pubmed21n0482.xml.gz
  fi
fi
if [ ! -f pubmed21n0483.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0483.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0483.xml.gz"
  if ! gzip -d "pubmed21n0483.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0483.xml.gz"
    rm pubmed21n0483.xml.gz
  fi
fi
if [ ! -f pubmed21n0484.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0484.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0484.xml.gz"
  if ! gzip -d "pubmed21n0484.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0484.xml.gz"
    rm pubmed21n0484.xml.gz
  fi
fi
if [ ! -f pubmed21n0485.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0485.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0485.xml.gz"
  if ! gzip -d "pubmed21n0485.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0485.xml.gz"
    rm pubmed21n0485.xml.gz
  fi
fi
if [ ! -f pubmed21n0486.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0486.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0486.xml.gz"
  if ! gzip -d "pubmed21n0486.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0486.xml.gz"
    rm pubmed21n0486.xml.gz
  fi
fi
if [ ! -f pubmed21n0487.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0487.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0487.xml.gz"
  if ! gzip -d "pubmed21n0487.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0487.xml.gz"
    rm pubmed21n0487.xml.gz
  fi
fi
if [ ! -f pubmed21n0488.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0488.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0488.xml.gz"
  if ! gzip -d "pubmed21n0488.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0488.xml.gz"
    rm pubmed21n0488.xml.gz
  fi
fi
if [ ! -f pubmed21n0489.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0489.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0489.xml.gz"
  if ! gzip -d "pubmed21n0489.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0489.xml.gz"
    rm pubmed21n0489.xml.gz
  fi
fi
if [ ! -f pubmed21n0490.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0490.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0490.xml.gz"
  if ! gzip -d "pubmed21n0490.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0490.xml.gz"
    rm pubmed21n0490.xml.gz
  fi
fi
if [ ! -f pubmed21n0491.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0491.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0491.xml.gz"
  if ! gzip -d "pubmed21n0491.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0491.xml.gz"
    rm pubmed21n0491.xml.gz
  fi
fi
if [ ! -f pubmed21n0492.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0492.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0492.xml.gz"
  if ! gzip -d "pubmed21n0492.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0492.xml.gz"
    rm pubmed21n0492.xml.gz
  fi
fi
if [ ! -f pubmed21n0493.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0493.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0493.xml.gz"
  if ! gzip -d "pubmed21n0493.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0493.xml.gz"
    rm pubmed21n0493.xml.gz
  fi
fi
if [ ! -f pubmed21n0494.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0494.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0494.xml.gz"
  if ! gzip -d "pubmed21n0494.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0494.xml.gz"
    rm pubmed21n0494.xml.gz
  fi
fi
if [ ! -f pubmed21n0495.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0495.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0495.xml.gz"
  if ! gzip -d "pubmed21n0495.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0495.xml.gz"
    rm pubmed21n0495.xml.gz
  fi
fi
if [ ! -f pubmed21n0496.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0496.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0496.xml.gz"
  if ! gzip -d "pubmed21n0496.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0496.xml.gz"
    rm pubmed21n0496.xml.gz
  fi
fi
if [ ! -f pubmed21n0497.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0497.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0497.xml.gz"
  if ! gzip -d "pubmed21n0497.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0497.xml.gz"
    rm pubmed21n0497.xml.gz
  fi
fi
if [ ! -f pubmed21n0498.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0498.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0498.xml.gz"
  if ! gzip -d "pubmed21n0498.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0498.xml.gz"
    rm pubmed21n0498.xml.gz
  fi
fi
if [ ! -f pubmed21n0499.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0499.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0499.xml.gz"
  if ! gzip -d "pubmed21n0499.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0499.xml.gz"
    rm pubmed21n0499.xml.gz
  fi
fi
if [ ! -f pubmed21n0500.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0500.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0500.xml.gz"
  if ! gzip -d "pubmed21n0500.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0500.xml.gz"
    rm pubmed21n0500.xml.gz
  fi
fi
if [ ! -f pubmed21n0501.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0501.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0501.xml.gz"
  if ! gzip -d "pubmed21n0501.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0501.xml.gz"
    rm pubmed21n0501.xml.gz
  fi
fi
if [ ! -f pubmed21n0502.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0502.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0502.xml.gz"
  if ! gzip -d "pubmed21n0502.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0502.xml.gz"
    rm pubmed21n0502.xml.gz
  fi
fi
if [ ! -f pubmed21n0503.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0503.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0503.xml.gz"
  if ! gzip -d "pubmed21n0503.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0503.xml.gz"
    rm pubmed21n0503.xml.gz
  fi
fi
if [ ! -f pubmed21n0504.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0504.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0504.xml.gz"
  if ! gzip -d "pubmed21n0504.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0504.xml.gz"
    rm pubmed21n0504.xml.gz
  fi
fi
if [ ! -f pubmed21n0505.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0505.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0505.xml.gz"
  if ! gzip -d "pubmed21n0505.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0505.xml.gz"
    rm pubmed21n0505.xml.gz
  fi
fi
if [ ! -f pubmed21n0506.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0506.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0506.xml.gz"
  if ! gzip -d "pubmed21n0506.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0506.xml.gz"
    rm pubmed21n0506.xml.gz
  fi
fi
if [ ! -f pubmed21n0507.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0507.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0507.xml.gz"
  if ! gzip -d "pubmed21n0507.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0507.xml.gz"
    rm pubmed21n0507.xml.gz
  fi
fi
if [ ! -f pubmed21n0508.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0508.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0508.xml.gz"
  if ! gzip -d "pubmed21n0508.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0508.xml.gz"
    rm pubmed21n0508.xml.gz
  fi
fi
if [ ! -f pubmed21n0509.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0509.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0509.xml.gz"
  if ! gzip -d "pubmed21n0509.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0509.xml.gz"
    rm pubmed21n0509.xml.gz
  fi
fi
if [ ! -f pubmed21n0510.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0510.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0510.xml.gz"
  if ! gzip -d "pubmed21n0510.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0510.xml.gz"
    rm pubmed21n0510.xml.gz
  fi
fi
if [ ! -f pubmed21n0511.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0511.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0511.xml.gz"
  if ! gzip -d "pubmed21n0511.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0511.xml.gz"
    rm pubmed21n0511.xml.gz
  fi
fi
if [ ! -f pubmed21n0512.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0512.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0512.xml.gz"
  if ! gzip -d "pubmed21n0512.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0512.xml.gz"
    rm pubmed21n0512.xml.gz
  fi
fi
if [ ! -f pubmed21n0513.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0513.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0513.xml.gz"
  if ! gzip -d "pubmed21n0513.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0513.xml.gz"
    rm pubmed21n0513.xml.gz
  fi
fi
if [ ! -f pubmed21n0514.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0514.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0514.xml.gz"
  if ! gzip -d "pubmed21n0514.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0514.xml.gz"
    rm pubmed21n0514.xml.gz
  fi
fi
if [ ! -f pubmed21n0515.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0515.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0515.xml.gz"
  if ! gzip -d "pubmed21n0515.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0515.xml.gz"
    rm pubmed21n0515.xml.gz
  fi
fi
if [ ! -f pubmed21n0516.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0516.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0516.xml.gz"
  if ! gzip -d "pubmed21n0516.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0516.xml.gz"
    rm pubmed21n0516.xml.gz
  fi
fi
if [ ! -f pubmed21n0517.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0517.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0517.xml.gz"
  if ! gzip -d "pubmed21n0517.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0517.xml.gz"
    rm pubmed21n0517.xml.gz
  fi
fi
if [ ! -f pubmed21n0518.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0518.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0518.xml.gz"
  if ! gzip -d "pubmed21n0518.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0518.xml.gz"
    rm pubmed21n0518.xml.gz
  fi
fi
if [ ! -f pubmed21n0519.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0519.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0519.xml.gz"
  if ! gzip -d "pubmed21n0519.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0519.xml.gz"
    rm pubmed21n0519.xml.gz
  fi
fi
if [ ! -f pubmed21n0520.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0520.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0520.xml.gz"
  if ! gzip -d "pubmed21n0520.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0520.xml.gz"
    rm pubmed21n0520.xml.gz
  fi
fi
if [ ! -f pubmed21n0521.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0521.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0521.xml.gz"
  if ! gzip -d "pubmed21n0521.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0521.xml.gz"
    rm pubmed21n0521.xml.gz
  fi
fi
if [ ! -f pubmed21n0522.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0522.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0522.xml.gz"
  if ! gzip -d "pubmed21n0522.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0522.xml.gz"
    rm pubmed21n0522.xml.gz
  fi
fi
if [ ! -f pubmed21n0523.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0523.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0523.xml.gz"
  if ! gzip -d "pubmed21n0523.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0523.xml.gz"
    rm pubmed21n0523.xml.gz
  fi
fi
if [ ! -f pubmed21n0524.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0524.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0524.xml.gz"
  if ! gzip -d "pubmed21n0524.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0524.xml.gz"
    rm pubmed21n0524.xml.gz
  fi
fi
if [ ! -f pubmed21n0525.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0525.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0525.xml.gz"
  if ! gzip -d "pubmed21n0525.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0525.xml.gz"
    rm pubmed21n0525.xml.gz
  fi
fi
if [ ! -f pubmed21n0526.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0526.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0526.xml.gz"
  if ! gzip -d "pubmed21n0526.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0526.xml.gz"
    rm pubmed21n0526.xml.gz
  fi
fi
if [ ! -f pubmed21n0527.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0527.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0527.xml.gz"
  if ! gzip -d "pubmed21n0527.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0527.xml.gz"
    rm pubmed21n0527.xml.gz
  fi
fi
if [ ! -f pubmed21n0528.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0528.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0528.xml.gz"
  if ! gzip -d "pubmed21n0528.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0528.xml.gz"
    rm pubmed21n0528.xml.gz
  fi
fi
if [ ! -f pubmed21n0529.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0529.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0529.xml.gz"
  if ! gzip -d "pubmed21n0529.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0529.xml.gz"
    rm pubmed21n0529.xml.gz
  fi
fi
if [ ! -f pubmed21n0530.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0530.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0530.xml.gz"
  if ! gzip -d "pubmed21n0530.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0530.xml.gz"
    rm pubmed21n0530.xml.gz
  fi
fi
if [ ! -f pubmed21n0531.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0531.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0531.xml.gz"
  if ! gzip -d "pubmed21n0531.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0531.xml.gz"
    rm pubmed21n0531.xml.gz
  fi
fi
if [ ! -f pubmed21n0532.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0532.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0532.xml.gz"
  if ! gzip -d "pubmed21n0532.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0532.xml.gz"
    rm pubmed21n0532.xml.gz
  fi
fi
if [ ! -f pubmed21n0533.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0533.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0533.xml.gz"
  if ! gzip -d "pubmed21n0533.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0533.xml.gz"
    rm pubmed21n0533.xml.gz
  fi
fi
if [ ! -f pubmed21n0534.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0534.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0534.xml.gz"
  if ! gzip -d "pubmed21n0534.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0534.xml.gz"
    rm pubmed21n0534.xml.gz
  fi
fi
if [ ! -f pubmed21n0535.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0535.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0535.xml.gz"
  if ! gzip -d "pubmed21n0535.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0535.xml.gz"
    rm pubmed21n0535.xml.gz
  fi
fi
if [ ! -f pubmed21n0536.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0536.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0536.xml.gz"
  if ! gzip -d "pubmed21n0536.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0536.xml.gz"
    rm pubmed21n0536.xml.gz
  fi
fi
if [ ! -f pubmed21n0537.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0537.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0537.xml.gz"
  if ! gzip -d "pubmed21n0537.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0537.xml.gz"
    rm pubmed21n0537.xml.gz
  fi
fi
if [ ! -f pubmed21n0538.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0538.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0538.xml.gz"
  if ! gzip -d "pubmed21n0538.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0538.xml.gz"
    rm pubmed21n0538.xml.gz
  fi
fi
if [ ! -f pubmed21n0539.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0539.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0539.xml.gz"
  if ! gzip -d "pubmed21n0539.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0539.xml.gz"
    rm pubmed21n0539.xml.gz
  fi
fi
if [ ! -f pubmed21n0540.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0540.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0540.xml.gz"
  if ! gzip -d "pubmed21n0540.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0540.xml.gz"
    rm pubmed21n0540.xml.gz
  fi
fi
if [ ! -f pubmed21n0541.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0541.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0541.xml.gz"
  if ! gzip -d "pubmed21n0541.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0541.xml.gz"
    rm pubmed21n0541.xml.gz
  fi
fi
if [ ! -f pubmed21n0542.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0542.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0542.xml.gz"
  if ! gzip -d "pubmed21n0542.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0542.xml.gz"
    rm pubmed21n0542.xml.gz
  fi
fi
if [ ! -f pubmed21n0543.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0543.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0543.xml.gz"
  if ! gzip -d "pubmed21n0543.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0543.xml.gz"
    rm pubmed21n0543.xml.gz
  fi
fi
if [ ! -f pubmed21n0544.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0544.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0544.xml.gz"
  if ! gzip -d "pubmed21n0544.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0544.xml.gz"
    rm pubmed21n0544.xml.gz
  fi
fi
if [ ! -f pubmed21n0545.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0545.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0545.xml.gz"
  if ! gzip -d "pubmed21n0545.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0545.xml.gz"
    rm pubmed21n0545.xml.gz
  fi
fi
if [ ! -f pubmed21n0546.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0546.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0546.xml.gz"
  if ! gzip -d "pubmed21n0546.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0546.xml.gz"
    rm pubmed21n0546.xml.gz
  fi
fi
if [ ! -f pubmed21n0547.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0547.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0547.xml.gz"
  if ! gzip -d "pubmed21n0547.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0547.xml.gz"
    rm pubmed21n0547.xml.gz
  fi
fi
if [ ! -f pubmed21n0548.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0548.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0548.xml.gz"
  if ! gzip -d "pubmed21n0548.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0548.xml.gz"
    rm pubmed21n0548.xml.gz
  fi
fi
if [ ! -f pubmed21n0549.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0549.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0549.xml.gz"
  if ! gzip -d "pubmed21n0549.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0549.xml.gz"
    rm pubmed21n0549.xml.gz
  fi
fi
if [ ! -f pubmed21n0550.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0550.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0550.xml.gz"
  if ! gzip -d "pubmed21n0550.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0550.xml.gz"
    rm pubmed21n0550.xml.gz
  fi
fi
if [ ! -f pubmed21n0551.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0551.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0551.xml.gz"
  if ! gzip -d "pubmed21n0551.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0551.xml.gz"
    rm pubmed21n0551.xml.gz
  fi
fi
if [ ! -f pubmed21n0552.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0552.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0552.xml.gz"
  if ! gzip -d "pubmed21n0552.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0552.xml.gz"
    rm pubmed21n0552.xml.gz
  fi
fi
if [ ! -f pubmed21n0553.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0553.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0553.xml.gz"
  if ! gzip -d "pubmed21n0553.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0553.xml.gz"
    rm pubmed21n0553.xml.gz
  fi
fi
if [ ! -f pubmed21n0554.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0554.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0554.xml.gz"
  if ! gzip -d "pubmed21n0554.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0554.xml.gz"
    rm pubmed21n0554.xml.gz
  fi
fi
if [ ! -f pubmed21n0555.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0555.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0555.xml.gz"
  if ! gzip -d "pubmed21n0555.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0555.xml.gz"
    rm pubmed21n0555.xml.gz
  fi
fi
if [ ! -f pubmed21n0556.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0556.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0556.xml.gz"
  if ! gzip -d "pubmed21n0556.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0556.xml.gz"
    rm pubmed21n0556.xml.gz
  fi
fi
if [ ! -f pubmed21n0557.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0557.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0557.xml.gz"
  if ! gzip -d "pubmed21n0557.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0557.xml.gz"
    rm pubmed21n0557.xml.gz
  fi
fi
if [ ! -f pubmed21n0558.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0558.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0558.xml.gz"
  if ! gzip -d "pubmed21n0558.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0558.xml.gz"
    rm pubmed21n0558.xml.gz
  fi
fi
if [ ! -f pubmed21n0559.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0559.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0559.xml.gz"
  if ! gzip -d "pubmed21n0559.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0559.xml.gz"
    rm pubmed21n0559.xml.gz
  fi
fi
if [ ! -f pubmed21n0560.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0560.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0560.xml.gz"
  if ! gzip -d "pubmed21n0560.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0560.xml.gz"
    rm pubmed21n0560.xml.gz
  fi
fi
if [ ! -f pubmed21n0561.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0561.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0561.xml.gz"
  if ! gzip -d "pubmed21n0561.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0561.xml.gz"
    rm pubmed21n0561.xml.gz
  fi
fi
if [ ! -f pubmed21n0562.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0562.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0562.xml.gz"
  if ! gzip -d "pubmed21n0562.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0562.xml.gz"
    rm pubmed21n0562.xml.gz
  fi
fi
if [ ! -f pubmed21n0563.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0563.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0563.xml.gz"
  if ! gzip -d "pubmed21n0563.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0563.xml.gz"
    rm pubmed21n0563.xml.gz
  fi
fi
if [ ! -f pubmed21n0564.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0564.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0564.xml.gz"
  if ! gzip -d "pubmed21n0564.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0564.xml.gz"
    rm pubmed21n0564.xml.gz
  fi
fi
if [ ! -f pubmed21n0565.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0565.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0565.xml.gz"
  if ! gzip -d "pubmed21n0565.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0565.xml.gz"
    rm pubmed21n0565.xml.gz
  fi
fi
if [ ! -f pubmed21n0566.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0566.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0566.xml.gz"
  if ! gzip -d "pubmed21n0566.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0566.xml.gz"
    rm pubmed21n0566.xml.gz
  fi
fi
if [ ! -f pubmed21n0567.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0567.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0567.xml.gz"
  if ! gzip -d "pubmed21n0567.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0567.xml.gz"
    rm pubmed21n0567.xml.gz
  fi
fi
if [ ! -f pubmed21n0568.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0568.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0568.xml.gz"
  if ! gzip -d "pubmed21n0568.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0568.xml.gz"
    rm pubmed21n0568.xml.gz
  fi
fi
if [ ! -f pubmed21n0569.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0569.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0569.xml.gz"
  if ! gzip -d "pubmed21n0569.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0569.xml.gz"
    rm pubmed21n0569.xml.gz
  fi
fi
if [ ! -f pubmed21n0570.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0570.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0570.xml.gz"
  if ! gzip -d "pubmed21n0570.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0570.xml.gz"
    rm pubmed21n0570.xml.gz
  fi
fi
if [ ! -f pubmed21n0571.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0571.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0571.xml.gz"
  if ! gzip -d "pubmed21n0571.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0571.xml.gz"
    rm pubmed21n0571.xml.gz
  fi
fi
if [ ! -f pubmed21n0572.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0572.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0572.xml.gz"
  if ! gzip -d "pubmed21n0572.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0572.xml.gz"
    rm pubmed21n0572.xml.gz
  fi
fi
if [ ! -f pubmed21n0573.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0573.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0573.xml.gz"
  if ! gzip -d "pubmed21n0573.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0573.xml.gz"
    rm pubmed21n0573.xml.gz
  fi
fi
if [ ! -f pubmed21n0574.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0574.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0574.xml.gz"
  if ! gzip -d "pubmed21n0574.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0574.xml.gz"
    rm pubmed21n0574.xml.gz
  fi
fi
if [ ! -f pubmed21n0575.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0575.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0575.xml.gz"
  if ! gzip -d "pubmed21n0575.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0575.xml.gz"
    rm pubmed21n0575.xml.gz
  fi
fi
if [ ! -f pubmed21n0576.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0576.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0576.xml.gz"
  if ! gzip -d "pubmed21n0576.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0576.xml.gz"
    rm pubmed21n0576.xml.gz
  fi
fi
if [ ! -f pubmed21n0577.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0577.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0577.xml.gz"
  if ! gzip -d "pubmed21n0577.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0577.xml.gz"
    rm pubmed21n0577.xml.gz
  fi
fi
if [ ! -f pubmed21n0578.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0578.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0578.xml.gz"
  if ! gzip -d "pubmed21n0578.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0578.xml.gz"
    rm pubmed21n0578.xml.gz
  fi
fi
if [ ! -f pubmed21n0579.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0579.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0579.xml.gz"
  if ! gzip -d "pubmed21n0579.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0579.xml.gz"
    rm pubmed21n0579.xml.gz
  fi
fi
if [ ! -f pubmed21n0580.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0580.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0580.xml.gz"
  if ! gzip -d "pubmed21n0580.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0580.xml.gz"
    rm pubmed21n0580.xml.gz
  fi
fi
if [ ! -f pubmed21n0581.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0581.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0581.xml.gz"
  if ! gzip -d "pubmed21n0581.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0581.xml.gz"
    rm pubmed21n0581.xml.gz
  fi
fi
if [ ! -f pubmed21n0582.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0582.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0582.xml.gz"
  if ! gzip -d "pubmed21n0582.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0582.xml.gz"
    rm pubmed21n0582.xml.gz
  fi
fi
if [ ! -f pubmed21n0583.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0583.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0583.xml.gz"
  if ! gzip -d "pubmed21n0583.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0583.xml.gz"
    rm pubmed21n0583.xml.gz
  fi
fi
if [ ! -f pubmed21n0584.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0584.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0584.xml.gz"
  if ! gzip -d "pubmed21n0584.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0584.xml.gz"
    rm pubmed21n0584.xml.gz
  fi
fi
if [ ! -f pubmed21n0585.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0585.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0585.xml.gz"
  if ! gzip -d "pubmed21n0585.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0585.xml.gz"
    rm pubmed21n0585.xml.gz
  fi
fi
if [ ! -f pubmed21n0586.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0586.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0586.xml.gz"
  if ! gzip -d "pubmed21n0586.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0586.xml.gz"
    rm pubmed21n0586.xml.gz
  fi
fi
if [ ! -f pubmed21n0587.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0587.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0587.xml.gz"
  if ! gzip -d "pubmed21n0587.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0587.xml.gz"
    rm pubmed21n0587.xml.gz
  fi
fi
if [ ! -f pubmed21n0588.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0588.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0588.xml.gz"
  if ! gzip -d "pubmed21n0588.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0588.xml.gz"
    rm pubmed21n0588.xml.gz
  fi
fi
if [ ! -f pubmed21n0589.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0589.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0589.xml.gz"
  if ! gzip -d "pubmed21n0589.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0589.xml.gz"
    rm pubmed21n0589.xml.gz
  fi
fi
if [ ! -f pubmed21n0590.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0590.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0590.xml.gz"
  if ! gzip -d "pubmed21n0590.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0590.xml.gz"
    rm pubmed21n0590.xml.gz
  fi
fi
if [ ! -f pubmed21n0591.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0591.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0591.xml.gz"
  if ! gzip -d "pubmed21n0591.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0591.xml.gz"
    rm pubmed21n0591.xml.gz
  fi
fi
if [ ! -f pubmed21n0592.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0592.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0592.xml.gz"
  if ! gzip -d "pubmed21n0592.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0592.xml.gz"
    rm pubmed21n0592.xml.gz
  fi
fi
if [ ! -f pubmed21n0593.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0593.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0593.xml.gz"
  if ! gzip -d "pubmed21n0593.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0593.xml.gz"
    rm pubmed21n0593.xml.gz
  fi
fi
if [ ! -f pubmed21n0594.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0594.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0594.xml.gz"
  if ! gzip -d "pubmed21n0594.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0594.xml.gz"
    rm pubmed21n0594.xml.gz
  fi
fi
if [ ! -f pubmed21n0595.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0595.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0595.xml.gz"
  if ! gzip -d "pubmed21n0595.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0595.xml.gz"
    rm pubmed21n0595.xml.gz
  fi
fi
if [ ! -f pubmed21n0596.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0596.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0596.xml.gz"
  if ! gzip -d "pubmed21n0596.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0596.xml.gz"
    rm pubmed21n0596.xml.gz
  fi
fi
if [ ! -f pubmed21n0597.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0597.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0597.xml.gz"
  if ! gzip -d "pubmed21n0597.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0597.xml.gz"
    rm pubmed21n0597.xml.gz
  fi
fi
if [ ! -f pubmed21n0598.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0598.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0598.xml.gz"
  if ! gzip -d "pubmed21n0598.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0598.xml.gz"
    rm pubmed21n0598.xml.gz
  fi
fi
if [ ! -f pubmed21n0599.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0599.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0599.xml.gz"
  if ! gzip -d "pubmed21n0599.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0599.xml.gz"
    rm pubmed21n0599.xml.gz
  fi
fi
if [ ! -f pubmed21n0600.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0600.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0600.xml.gz"
  if ! gzip -d "pubmed21n0600.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0600.xml.gz"
    rm pubmed21n0600.xml.gz
  fi
fi
if [ ! -f pubmed21n0601.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0601.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0601.xml.gz"
  if ! gzip -d "pubmed21n0601.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0601.xml.gz"
    rm pubmed21n0601.xml.gz
  fi
fi
if [ ! -f pubmed21n0602.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0602.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0602.xml.gz"
  if ! gzip -d "pubmed21n0602.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0602.xml.gz"
    rm pubmed21n0602.xml.gz
  fi
fi
if [ ! -f pubmed21n0603.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0603.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0603.xml.gz"
  if ! gzip -d "pubmed21n0603.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0603.xml.gz"
    rm pubmed21n0603.xml.gz
  fi
fi
if [ ! -f pubmed21n0604.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0604.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0604.xml.gz"
  if ! gzip -d "pubmed21n0604.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0604.xml.gz"
    rm pubmed21n0604.xml.gz
  fi
fi
if [ ! -f pubmed21n0605.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0605.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0605.xml.gz"
  if ! gzip -d "pubmed21n0605.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0605.xml.gz"
    rm pubmed21n0605.xml.gz
  fi
fi
if [ ! -f pubmed21n0606.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0606.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0606.xml.gz"
  if ! gzip -d "pubmed21n0606.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0606.xml.gz"
    rm pubmed21n0606.xml.gz
  fi
fi
if [ ! -f pubmed21n0607.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0607.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0607.xml.gz"
  if ! gzip -d "pubmed21n0607.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0607.xml.gz"
    rm pubmed21n0607.xml.gz
  fi
fi
if [ ! -f pubmed21n0608.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0608.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0608.xml.gz"
  if ! gzip -d "pubmed21n0608.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0608.xml.gz"
    rm pubmed21n0608.xml.gz
  fi
fi
if [ ! -f pubmed21n0609.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0609.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0609.xml.gz"
  if ! gzip -d "pubmed21n0609.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0609.xml.gz"
    rm pubmed21n0609.xml.gz
  fi
fi
if [ ! -f pubmed21n0610.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0610.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0610.xml.gz"
  if ! gzip -d "pubmed21n0610.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0610.xml.gz"
    rm pubmed21n0610.xml.gz
  fi
fi
if [ ! -f pubmed21n0611.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0611.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0611.xml.gz"
  if ! gzip -d "pubmed21n0611.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0611.xml.gz"
    rm pubmed21n0611.xml.gz
  fi
fi
if [ ! -f pubmed21n0612.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0612.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0612.xml.gz"
  if ! gzip -d "pubmed21n0612.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0612.xml.gz"
    rm pubmed21n0612.xml.gz
  fi
fi
if [ ! -f pubmed21n0613.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0613.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0613.xml.gz"
  if ! gzip -d "pubmed21n0613.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0613.xml.gz"
    rm pubmed21n0613.xml.gz
  fi
fi
if [ ! -f pubmed21n0614.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0614.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0614.xml.gz"
  if ! gzip -d "pubmed21n0614.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0614.xml.gz"
    rm pubmed21n0614.xml.gz
  fi
fi
if [ ! -f pubmed21n0615.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0615.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0615.xml.gz"
  if ! gzip -d "pubmed21n0615.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0615.xml.gz"
    rm pubmed21n0615.xml.gz
  fi
fi
if [ ! -f pubmed21n0616.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0616.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0616.xml.gz"
  if ! gzip -d "pubmed21n0616.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0616.xml.gz"
    rm pubmed21n0616.xml.gz
  fi
fi
if [ ! -f pubmed21n0617.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0617.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0617.xml.gz"
  if ! gzip -d "pubmed21n0617.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0617.xml.gz"
    rm pubmed21n0617.xml.gz
  fi
fi
if [ ! -f pubmed21n0618.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0618.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0618.xml.gz"
  if ! gzip -d "pubmed21n0618.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0618.xml.gz"
    rm pubmed21n0618.xml.gz
  fi
fi
if [ ! -f pubmed21n0619.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0619.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0619.xml.gz"
  if ! gzip -d "pubmed21n0619.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0619.xml.gz"
    rm pubmed21n0619.xml.gz
  fi
fi
if [ ! -f pubmed21n0620.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0620.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0620.xml.gz"
  if ! gzip -d "pubmed21n0620.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0620.xml.gz"
    rm pubmed21n0620.xml.gz
  fi
fi
if [ ! -f pubmed21n0621.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0621.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0621.xml.gz"
  if ! gzip -d "pubmed21n0621.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0621.xml.gz"
    rm pubmed21n0621.xml.gz
  fi
fi
if [ ! -f pubmed21n0622.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0622.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0622.xml.gz"
  if ! gzip -d "pubmed21n0622.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0622.xml.gz"
    rm pubmed21n0622.xml.gz
  fi
fi
if [ ! -f pubmed21n0623.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0623.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0623.xml.gz"
  if ! gzip -d "pubmed21n0623.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0623.xml.gz"
    rm pubmed21n0623.xml.gz
  fi
fi
if [ ! -f pubmed21n0624.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0624.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0624.xml.gz"
  if ! gzip -d "pubmed21n0624.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0624.xml.gz"
    rm pubmed21n0624.xml.gz
  fi
fi
if [ ! -f pubmed21n0625.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0625.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0625.xml.gz"
  if ! gzip -d "pubmed21n0625.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0625.xml.gz"
    rm pubmed21n0625.xml.gz
  fi
fi
if [ ! -f pubmed21n0626.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0626.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0626.xml.gz"
  if ! gzip -d "pubmed21n0626.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0626.xml.gz"
    rm pubmed21n0626.xml.gz
  fi
fi
if [ ! -f pubmed21n0627.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0627.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0627.xml.gz"
  if ! gzip -d "pubmed21n0627.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0627.xml.gz"
    rm pubmed21n0627.xml.gz
  fi
fi
if [ ! -f pubmed21n0628.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0628.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0628.xml.gz"
  if ! gzip -d "pubmed21n0628.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0628.xml.gz"
    rm pubmed21n0628.xml.gz
  fi
fi
if [ ! -f pubmed21n0629.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0629.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0629.xml.gz"
  if ! gzip -d "pubmed21n0629.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0629.xml.gz"
    rm pubmed21n0629.xml.gz
  fi
fi
if [ ! -f pubmed21n0630.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0630.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0630.xml.gz"
  if ! gzip -d "pubmed21n0630.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0630.xml.gz"
    rm pubmed21n0630.xml.gz
  fi
fi
if [ ! -f pubmed21n0631.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0631.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0631.xml.gz"
  if ! gzip -d "pubmed21n0631.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0631.xml.gz"
    rm pubmed21n0631.xml.gz
  fi
fi
if [ ! -f pubmed21n0632.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0632.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0632.xml.gz"
  if ! gzip -d "pubmed21n0632.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0632.xml.gz"
    rm pubmed21n0632.xml.gz
  fi
fi
if [ ! -f pubmed21n0633.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0633.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0633.xml.gz"
  if ! gzip -d "pubmed21n0633.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0633.xml.gz"
    rm pubmed21n0633.xml.gz
  fi
fi
if [ ! -f pubmed21n0634.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0634.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0634.xml.gz"
  if ! gzip -d "pubmed21n0634.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0634.xml.gz"
    rm pubmed21n0634.xml.gz
  fi
fi
if [ ! -f pubmed21n0635.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0635.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0635.xml.gz"
  if ! gzip -d "pubmed21n0635.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0635.xml.gz"
    rm pubmed21n0635.xml.gz
  fi
fi
if [ ! -f pubmed21n0636.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0636.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0636.xml.gz"
  if ! gzip -d "pubmed21n0636.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0636.xml.gz"
    rm pubmed21n0636.xml.gz
  fi
fi
if [ ! -f pubmed21n0637.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0637.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0637.xml.gz"
  if ! gzip -d "pubmed21n0637.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0637.xml.gz"
    rm pubmed21n0637.xml.gz
  fi
fi
if [ ! -f pubmed21n0638.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0638.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0638.xml.gz"
  if ! gzip -d "pubmed21n0638.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0638.xml.gz"
    rm pubmed21n0638.xml.gz
  fi
fi
if [ ! -f pubmed21n0639.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0639.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0639.xml.gz"
  if ! gzip -d "pubmed21n0639.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0639.xml.gz"
    rm pubmed21n0639.xml.gz
  fi
fi
if [ ! -f pubmed21n0640.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0640.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0640.xml.gz"
  if ! gzip -d "pubmed21n0640.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0640.xml.gz"
    rm pubmed21n0640.xml.gz
  fi
fi
if [ ! -f pubmed21n0641.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0641.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0641.xml.gz"
  if ! gzip -d "pubmed21n0641.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0641.xml.gz"
    rm pubmed21n0641.xml.gz
  fi
fi
if [ ! -f pubmed21n0642.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0642.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0642.xml.gz"
  if ! gzip -d "pubmed21n0642.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0642.xml.gz"
    rm pubmed21n0642.xml.gz
  fi
fi
if [ ! -f pubmed21n0643.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0643.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0643.xml.gz"
  if ! gzip -d "pubmed21n0643.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0643.xml.gz"
    rm pubmed21n0643.xml.gz
  fi
fi
if [ ! -f pubmed21n0644.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0644.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0644.xml.gz"
  if ! gzip -d "pubmed21n0644.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0644.xml.gz"
    rm pubmed21n0644.xml.gz
  fi
fi
if [ ! -f pubmed21n0645.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0645.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0645.xml.gz"
  if ! gzip -d "pubmed21n0645.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0645.xml.gz"
    rm pubmed21n0645.xml.gz
  fi
fi
if [ ! -f pubmed21n0646.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0646.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0646.xml.gz"
  if ! gzip -d "pubmed21n0646.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0646.xml.gz"
    rm pubmed21n0646.xml.gz
  fi
fi
if [ ! -f pubmed21n0647.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0647.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0647.xml.gz"
  if ! gzip -d "pubmed21n0647.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0647.xml.gz"
    rm pubmed21n0647.xml.gz
  fi
fi
if [ ! -f pubmed21n0648.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0648.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0648.xml.gz"
  if ! gzip -d "pubmed21n0648.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0648.xml.gz"
    rm pubmed21n0648.xml.gz
  fi
fi
if [ ! -f pubmed21n0649.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0649.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0649.xml.gz"
  if ! gzip -d "pubmed21n0649.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0649.xml.gz"
    rm pubmed21n0649.xml.gz
  fi
fi
if [ ! -f pubmed21n0650.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0650.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0650.xml.gz"
  if ! gzip -d "pubmed21n0650.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0650.xml.gz"
    rm pubmed21n0650.xml.gz
  fi
fi
if [ ! -f pubmed21n0651.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0651.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0651.xml.gz"
  if ! gzip -d "pubmed21n0651.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0651.xml.gz"
    rm pubmed21n0651.xml.gz
  fi
fi
if [ ! -f pubmed21n0652.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0652.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0652.xml.gz"
  if ! gzip -d "pubmed21n0652.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0652.xml.gz"
    rm pubmed21n0652.xml.gz
  fi
fi
if [ ! -f pubmed21n0653.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0653.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0653.xml.gz"
  if ! gzip -d "pubmed21n0653.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0653.xml.gz"
    rm pubmed21n0653.xml.gz
  fi
fi
if [ ! -f pubmed21n0654.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0654.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0654.xml.gz"
  if ! gzip -d "pubmed21n0654.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0654.xml.gz"
    rm pubmed21n0654.xml.gz
  fi
fi
if [ ! -f pubmed21n0655.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0655.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0655.xml.gz"
  if ! gzip -d "pubmed21n0655.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0655.xml.gz"
    rm pubmed21n0655.xml.gz
  fi
fi
if [ ! -f pubmed21n0656.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0656.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0656.xml.gz"
  if ! gzip -d "pubmed21n0656.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0656.xml.gz"
    rm pubmed21n0656.xml.gz
  fi
fi
if [ ! -f pubmed21n0657.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0657.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0657.xml.gz"
  if ! gzip -d "pubmed21n0657.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0657.xml.gz"
    rm pubmed21n0657.xml.gz
  fi
fi
if [ ! -f pubmed21n0658.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0658.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0658.xml.gz"
  if ! gzip -d "pubmed21n0658.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0658.xml.gz"
    rm pubmed21n0658.xml.gz
  fi
fi
if [ ! -f pubmed21n0659.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0659.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0659.xml.gz"
  if ! gzip -d "pubmed21n0659.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0659.xml.gz"
    rm pubmed21n0659.xml.gz
  fi
fi
if [ ! -f pubmed21n0660.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0660.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0660.xml.gz"
  if ! gzip -d "pubmed21n0660.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0660.xml.gz"
    rm pubmed21n0660.xml.gz
  fi
fi
if [ ! -f pubmed21n0661.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0661.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0661.xml.gz"
  if ! gzip -d "pubmed21n0661.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0661.xml.gz"
    rm pubmed21n0661.xml.gz
  fi
fi
if [ ! -f pubmed21n0662.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0662.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0662.xml.gz"
  if ! gzip -d "pubmed21n0662.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0662.xml.gz"
    rm pubmed21n0662.xml.gz
  fi
fi
if [ ! -f pubmed21n0663.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0663.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0663.xml.gz"
  if ! gzip -d "pubmed21n0663.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0663.xml.gz"
    rm pubmed21n0663.xml.gz
  fi
fi
if [ ! -f pubmed21n0664.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0664.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0664.xml.gz"
  if ! gzip -d "pubmed21n0664.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0664.xml.gz"
    rm pubmed21n0664.xml.gz
  fi
fi
if [ ! -f pubmed21n0665.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0665.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0665.xml.gz"
  if ! gzip -d "pubmed21n0665.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0665.xml.gz"
    rm pubmed21n0665.xml.gz
  fi
fi
if [ ! -f pubmed21n0666.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0666.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0666.xml.gz"
  if ! gzip -d "pubmed21n0666.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0666.xml.gz"
    rm pubmed21n0666.xml.gz
  fi
fi
if [ ! -f pubmed21n0667.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0667.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0667.xml.gz"
  if ! gzip -d "pubmed21n0667.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0667.xml.gz"
    rm pubmed21n0667.xml.gz
  fi
fi
if [ ! -f pubmed21n0668.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0668.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0668.xml.gz"
  if ! gzip -d "pubmed21n0668.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0668.xml.gz"
    rm pubmed21n0668.xml.gz
  fi
fi
if [ ! -f pubmed21n0669.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0669.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0669.xml.gz"
  if ! gzip -d "pubmed21n0669.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0669.xml.gz"
    rm pubmed21n0669.xml.gz
  fi
fi
if [ ! -f pubmed21n0670.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0670.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0670.xml.gz"
  if ! gzip -d "pubmed21n0670.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0670.xml.gz"
    rm pubmed21n0670.xml.gz
  fi
fi
if [ ! -f pubmed21n0671.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0671.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0671.xml.gz"
  if ! gzip -d "pubmed21n0671.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0671.xml.gz"
    rm pubmed21n0671.xml.gz
  fi
fi
if [ ! -f pubmed21n0672.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0672.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0672.xml.gz"
  if ! gzip -d "pubmed21n0672.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0672.xml.gz"
    rm pubmed21n0672.xml.gz
  fi
fi
if [ ! -f pubmed21n0673.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0673.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0673.xml.gz"
  if ! gzip -d "pubmed21n0673.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0673.xml.gz"
    rm pubmed21n0673.xml.gz
  fi
fi
if [ ! -f pubmed21n0674.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0674.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0674.xml.gz"
  if ! gzip -d "pubmed21n0674.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0674.xml.gz"
    rm pubmed21n0674.xml.gz
  fi
fi
if [ ! -f pubmed21n0675.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0675.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0675.xml.gz"
  if ! gzip -d "pubmed21n0675.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0675.xml.gz"
    rm pubmed21n0675.xml.gz
  fi
fi
if [ ! -f pubmed21n0676.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0676.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0676.xml.gz"
  if ! gzip -d "pubmed21n0676.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0676.xml.gz"
    rm pubmed21n0676.xml.gz
  fi
fi
if [ ! -f pubmed21n0677.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0677.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0677.xml.gz"
  if ! gzip -d "pubmed21n0677.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0677.xml.gz"
    rm pubmed21n0677.xml.gz
  fi
fi
if [ ! -f pubmed21n0678.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0678.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0678.xml.gz"
  if ! gzip -d "pubmed21n0678.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0678.xml.gz"
    rm pubmed21n0678.xml.gz
  fi
fi
if [ ! -f pubmed21n0679.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0679.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0679.xml.gz"
  if ! gzip -d "pubmed21n0679.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0679.xml.gz"
    rm pubmed21n0679.xml.gz
  fi
fi
if [ ! -f pubmed21n0680.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0680.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0680.xml.gz"
  if ! gzip -d "pubmed21n0680.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0680.xml.gz"
    rm pubmed21n0680.xml.gz
  fi
fi
if [ ! -f pubmed21n0681.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0681.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0681.xml.gz"
  if ! gzip -d "pubmed21n0681.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0681.xml.gz"
    rm pubmed21n0681.xml.gz
  fi
fi
if [ ! -f pubmed21n0682.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0682.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0682.xml.gz"
  if ! gzip -d "pubmed21n0682.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0682.xml.gz"
    rm pubmed21n0682.xml.gz
  fi
fi
if [ ! -f pubmed21n0683.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0683.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0683.xml.gz"
  if ! gzip -d "pubmed21n0683.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0683.xml.gz"
    rm pubmed21n0683.xml.gz
  fi
fi
if [ ! -f pubmed21n0684.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0684.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0684.xml.gz"
  if ! gzip -d "pubmed21n0684.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0684.xml.gz"
    rm pubmed21n0684.xml.gz
  fi
fi
if [ ! -f pubmed21n0685.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0685.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0685.xml.gz"
  if ! gzip -d "pubmed21n0685.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0685.xml.gz"
    rm pubmed21n0685.xml.gz
  fi
fi
if [ ! -f pubmed21n0686.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0686.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0686.xml.gz"
  if ! gzip -d "pubmed21n0686.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0686.xml.gz"
    rm pubmed21n0686.xml.gz
  fi
fi
if [ ! -f pubmed21n0687.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0687.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0687.xml.gz"
  if ! gzip -d "pubmed21n0687.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0687.xml.gz"
    rm pubmed21n0687.xml.gz
  fi
fi
if [ ! -f pubmed21n0688.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0688.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0688.xml.gz"
  if ! gzip -d "pubmed21n0688.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0688.xml.gz"
    rm pubmed21n0688.xml.gz
  fi
fi
if [ ! -f pubmed21n0689.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0689.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0689.xml.gz"
  if ! gzip -d "pubmed21n0689.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0689.xml.gz"
    rm pubmed21n0689.xml.gz
  fi
fi
if [ ! -f pubmed21n0690.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0690.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0690.xml.gz"
  if ! gzip -d "pubmed21n0690.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0690.xml.gz"
    rm pubmed21n0690.xml.gz
  fi
fi
if [ ! -f pubmed21n0691.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0691.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0691.xml.gz"
  if ! gzip -d "pubmed21n0691.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0691.xml.gz"
    rm pubmed21n0691.xml.gz
  fi
fi
if [ ! -f pubmed21n0692.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0692.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0692.xml.gz"
  if ! gzip -d "pubmed21n0692.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0692.xml.gz"
    rm pubmed21n0692.xml.gz
  fi
fi
if [ ! -f pubmed21n0693.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0693.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0693.xml.gz"
  if ! gzip -d "pubmed21n0693.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0693.xml.gz"
    rm pubmed21n0693.xml.gz
  fi
fi
if [ ! -f pubmed21n0694.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0694.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0694.xml.gz"
  if ! gzip -d "pubmed21n0694.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0694.xml.gz"
    rm pubmed21n0694.xml.gz
  fi
fi
if [ ! -f pubmed21n0695.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0695.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0695.xml.gz"
  if ! gzip -d "pubmed21n0695.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0695.xml.gz"
    rm pubmed21n0695.xml.gz
  fi
fi
if [ ! -f pubmed21n0696.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0696.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0696.xml.gz"
  if ! gzip -d "pubmed21n0696.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0696.xml.gz"
    rm pubmed21n0696.xml.gz
  fi
fi
if [ ! -f pubmed21n0697.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0697.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0697.xml.gz"
  if ! gzip -d "pubmed21n0697.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0697.xml.gz"
    rm pubmed21n0697.xml.gz
  fi
fi
if [ ! -f pubmed21n0698.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0698.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0698.xml.gz"
  if ! gzip -d "pubmed21n0698.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0698.xml.gz"
    rm pubmed21n0698.xml.gz
  fi
fi
if [ ! -f pubmed21n0699.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0699.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0699.xml.gz"
  if ! gzip -d "pubmed21n0699.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0699.xml.gz"
    rm pubmed21n0699.xml.gz
  fi
fi
if [ ! -f pubmed21n0700.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0700.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0700.xml.gz"
  if ! gzip -d "pubmed21n0700.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0700.xml.gz"
    rm pubmed21n0700.xml.gz
  fi
fi
if [ ! -f pubmed21n0701.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0701.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0701.xml.gz"
  if ! gzip -d "pubmed21n0701.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0701.xml.gz"
    rm pubmed21n0701.xml.gz
  fi
fi
if [ ! -f pubmed21n0702.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0702.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0702.xml.gz"
  if ! gzip -d "pubmed21n0702.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0702.xml.gz"
    rm pubmed21n0702.xml.gz
  fi
fi
if [ ! -f pubmed21n0703.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0703.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0703.xml.gz"
  if ! gzip -d "pubmed21n0703.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0703.xml.gz"
    rm pubmed21n0703.xml.gz
  fi
fi
if [ ! -f pubmed21n0704.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0704.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0704.xml.gz"
  if ! gzip -d "pubmed21n0704.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0704.xml.gz"
    rm pubmed21n0704.xml.gz
  fi
fi
if [ ! -f pubmed21n0705.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0705.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0705.xml.gz"
  if ! gzip -d "pubmed21n0705.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0705.xml.gz"
    rm pubmed21n0705.xml.gz
  fi
fi
if [ ! -f pubmed21n0706.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0706.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0706.xml.gz"
  if ! gzip -d "pubmed21n0706.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0706.xml.gz"
    rm pubmed21n0706.xml.gz
  fi
fi
if [ ! -f pubmed21n0707.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0707.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0707.xml.gz"
  if ! gzip -d "pubmed21n0707.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0707.xml.gz"
    rm pubmed21n0707.xml.gz
  fi
fi
if [ ! -f pubmed21n0708.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0708.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0708.xml.gz"
  if ! gzip -d "pubmed21n0708.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0708.xml.gz"
    rm pubmed21n0708.xml.gz
  fi
fi
if [ ! -f pubmed21n0709.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0709.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0709.xml.gz"
  if ! gzip -d "pubmed21n0709.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0709.xml.gz"
    rm pubmed21n0709.xml.gz
  fi
fi
if [ ! -f pubmed21n0710.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0710.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0710.xml.gz"
  if ! gzip -d "pubmed21n0710.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0710.xml.gz"
    rm pubmed21n0710.xml.gz
  fi
fi
if [ ! -f pubmed21n0711.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0711.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0711.xml.gz"
  if ! gzip -d "pubmed21n0711.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0711.xml.gz"
    rm pubmed21n0711.xml.gz
  fi
fi
if [ ! -f pubmed21n0712.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0712.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0712.xml.gz"
  if ! gzip -d "pubmed21n0712.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0712.xml.gz"
    rm pubmed21n0712.xml.gz
  fi
fi
if [ ! -f pubmed21n0713.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0713.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0713.xml.gz"
  if ! gzip -d "pubmed21n0713.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0713.xml.gz"
    rm pubmed21n0713.xml.gz
  fi
fi
if [ ! -f pubmed21n0714.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0714.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0714.xml.gz"
  if ! gzip -d "pubmed21n0714.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0714.xml.gz"
    rm pubmed21n0714.xml.gz
  fi
fi
if [ ! -f pubmed21n0715.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0715.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0715.xml.gz"
  if ! gzip -d "pubmed21n0715.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0715.xml.gz"
    rm pubmed21n0715.xml.gz
  fi
fi
if [ ! -f pubmed21n0716.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0716.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0716.xml.gz"
  if ! gzip -d "pubmed21n0716.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0716.xml.gz"
    rm pubmed21n0716.xml.gz
  fi
fi
if [ ! -f pubmed21n0717.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0717.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0717.xml.gz"
  if ! gzip -d "pubmed21n0717.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0717.xml.gz"
    rm pubmed21n0717.xml.gz
  fi
fi
if [ ! -f pubmed21n0718.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0718.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0718.xml.gz"
  if ! gzip -d "pubmed21n0718.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0718.xml.gz"
    rm pubmed21n0718.xml.gz
  fi
fi
if [ ! -f pubmed21n0719.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0719.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0719.xml.gz"
  if ! gzip -d "pubmed21n0719.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0719.xml.gz"
    rm pubmed21n0719.xml.gz
  fi
fi
if [ ! -f pubmed21n0720.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0720.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0720.xml.gz"
  if ! gzip -d "pubmed21n0720.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0720.xml.gz"
    rm pubmed21n0720.xml.gz
  fi
fi
if [ ! -f pubmed21n0721.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0721.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0721.xml.gz"
  if ! gzip -d "pubmed21n0721.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0721.xml.gz"
    rm pubmed21n0721.xml.gz
  fi
fi
if [ ! -f pubmed21n0722.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0722.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0722.xml.gz"
  if ! gzip -d "pubmed21n0722.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0722.xml.gz"
    rm pubmed21n0722.xml.gz
  fi
fi
if [ ! -f pubmed21n0723.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0723.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0723.xml.gz"
  if ! gzip -d "pubmed21n0723.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0723.xml.gz"
    rm pubmed21n0723.xml.gz
  fi
fi
if [ ! -f pubmed21n0724.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0724.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0724.xml.gz"
  if ! gzip -d "pubmed21n0724.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0724.xml.gz"
    rm pubmed21n0724.xml.gz
  fi
fi
if [ ! -f pubmed21n0725.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0725.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0725.xml.gz"
  if ! gzip -d "pubmed21n0725.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0725.xml.gz"
    rm pubmed21n0725.xml.gz
  fi
fi
if [ ! -f pubmed21n0726.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0726.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0726.xml.gz"
  if ! gzip -d "pubmed21n0726.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0726.xml.gz"
    rm pubmed21n0726.xml.gz
  fi
fi
if [ ! -f pubmed21n0727.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0727.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0727.xml.gz"
  if ! gzip -d "pubmed21n0727.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0727.xml.gz"
    rm pubmed21n0727.xml.gz
  fi
fi
if [ ! -f pubmed21n0728.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0728.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0728.xml.gz"
  if ! gzip -d "pubmed21n0728.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0728.xml.gz"
    rm pubmed21n0728.xml.gz
  fi
fi
if [ ! -f pubmed21n0729.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0729.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0729.xml.gz"
  if ! gzip -d "pubmed21n0729.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0729.xml.gz"
    rm pubmed21n0729.xml.gz
  fi
fi
if [ ! -f pubmed21n0730.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0730.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0730.xml.gz"
  if ! gzip -d "pubmed21n0730.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0730.xml.gz"
    rm pubmed21n0730.xml.gz
  fi
fi
if [ ! -f pubmed21n0731.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0731.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0731.xml.gz"
  if ! gzip -d "pubmed21n0731.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0731.xml.gz"
    rm pubmed21n0731.xml.gz
  fi
fi
if [ ! -f pubmed21n0732.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0732.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0732.xml.gz"
  if ! gzip -d "pubmed21n0732.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0732.xml.gz"
    rm pubmed21n0732.xml.gz
  fi
fi
if [ ! -f pubmed21n0733.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0733.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0733.xml.gz"
  if ! gzip -d "pubmed21n0733.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0733.xml.gz"
    rm pubmed21n0733.xml.gz
  fi
fi
if [ ! -f pubmed21n0734.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0734.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0734.xml.gz"
  if ! gzip -d "pubmed21n0734.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0734.xml.gz"
    rm pubmed21n0734.xml.gz
  fi
fi
if [ ! -f pubmed21n0735.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0735.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0735.xml.gz"
  if ! gzip -d "pubmed21n0735.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0735.xml.gz"
    rm pubmed21n0735.xml.gz
  fi
fi
if [ ! -f pubmed21n0736.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0736.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0736.xml.gz"
  if ! gzip -d "pubmed21n0736.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0736.xml.gz"
    rm pubmed21n0736.xml.gz
  fi
fi
if [ ! -f pubmed21n0737.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0737.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0737.xml.gz"
  if ! gzip -d "pubmed21n0737.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0737.xml.gz"
    rm pubmed21n0737.xml.gz
  fi
fi
if [ ! -f pubmed21n0738.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0738.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0738.xml.gz"
  if ! gzip -d "pubmed21n0738.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0738.xml.gz"
    rm pubmed21n0738.xml.gz
  fi
fi
if [ ! -f pubmed21n0739.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0739.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0739.xml.gz"
  if ! gzip -d "pubmed21n0739.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0739.xml.gz"
    rm pubmed21n0739.xml.gz
  fi
fi
if [ ! -f pubmed21n0740.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0740.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0740.xml.gz"
  if ! gzip -d "pubmed21n0740.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0740.xml.gz"
    rm pubmed21n0740.xml.gz
  fi
fi
if [ ! -f pubmed21n0741.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0741.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0741.xml.gz"
  if ! gzip -d "pubmed21n0741.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0741.xml.gz"
    rm pubmed21n0741.xml.gz
  fi
fi
if [ ! -f pubmed21n0742.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0742.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0742.xml.gz"
  if ! gzip -d "pubmed21n0742.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0742.xml.gz"
    rm pubmed21n0742.xml.gz
  fi
fi
if [ ! -f pubmed21n0743.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0743.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0743.xml.gz"
  if ! gzip -d "pubmed21n0743.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0743.xml.gz"
    rm pubmed21n0743.xml.gz
  fi
fi
if [ ! -f pubmed21n0744.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0744.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0744.xml.gz"
  if ! gzip -d "pubmed21n0744.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0744.xml.gz"
    rm pubmed21n0744.xml.gz
  fi
fi
if [ ! -f pubmed21n0745.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0745.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0745.xml.gz"
  if ! gzip -d "pubmed21n0745.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0745.xml.gz"
    rm pubmed21n0745.xml.gz
  fi
fi
if [ ! -f pubmed21n0746.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0746.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0746.xml.gz"
  if ! gzip -d "pubmed21n0746.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0746.xml.gz"
    rm pubmed21n0746.xml.gz
  fi
fi
if [ ! -f pubmed21n0747.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0747.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0747.xml.gz"
  if ! gzip -d "pubmed21n0747.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0747.xml.gz"
    rm pubmed21n0747.xml.gz
  fi
fi
if [ ! -f pubmed21n0748.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0748.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0748.xml.gz"
  if ! gzip -d "pubmed21n0748.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0748.xml.gz"
    rm pubmed21n0748.xml.gz
  fi
fi
if [ ! -f pubmed21n0749.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0749.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0749.xml.gz"
  if ! gzip -d "pubmed21n0749.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0749.xml.gz"
    rm pubmed21n0749.xml.gz
  fi
fi
if [ ! -f pubmed21n0750.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0750.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0750.xml.gz"
  if ! gzip -d "pubmed21n0750.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0750.xml.gz"
    rm pubmed21n0750.xml.gz
  fi
fi
if [ ! -f pubmed21n0751.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0751.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0751.xml.gz"
  if ! gzip -d "pubmed21n0751.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0751.xml.gz"
    rm pubmed21n0751.xml.gz
  fi
fi
if [ ! -f pubmed21n0752.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0752.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0752.xml.gz"
  if ! gzip -d "pubmed21n0752.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0752.xml.gz"
    rm pubmed21n0752.xml.gz
  fi
fi
if [ ! -f pubmed21n0753.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0753.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0753.xml.gz"
  if ! gzip -d "pubmed21n0753.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0753.xml.gz"
    rm pubmed21n0753.xml.gz
  fi
fi
if [ ! -f pubmed21n0754.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0754.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0754.xml.gz"
  if ! gzip -d "pubmed21n0754.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0754.xml.gz"
    rm pubmed21n0754.xml.gz
  fi
fi
if [ ! -f pubmed21n0755.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0755.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0755.xml.gz"
  if ! gzip -d "pubmed21n0755.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0755.xml.gz"
    rm pubmed21n0755.xml.gz
  fi
fi
if [ ! -f pubmed21n0756.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0756.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0756.xml.gz"
  if ! gzip -d "pubmed21n0756.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0756.xml.gz"
    rm pubmed21n0756.xml.gz
  fi
fi
if [ ! -f pubmed21n0757.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0757.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0757.xml.gz"
  if ! gzip -d "pubmed21n0757.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0757.xml.gz"
    rm pubmed21n0757.xml.gz
  fi
fi
if [ ! -f pubmed21n0758.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0758.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0758.xml.gz"
  if ! gzip -d "pubmed21n0758.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0758.xml.gz"
    rm pubmed21n0758.xml.gz
  fi
fi
if [ ! -f pubmed21n0759.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0759.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0759.xml.gz"
  if ! gzip -d "pubmed21n0759.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0759.xml.gz"
    rm pubmed21n0759.xml.gz
  fi
fi
if [ ! -f pubmed21n0760.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0760.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0760.xml.gz"
  if ! gzip -d "pubmed21n0760.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0760.xml.gz"
    rm pubmed21n0760.xml.gz
  fi
fi
if [ ! -f pubmed21n0761.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0761.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0761.xml.gz"
  if ! gzip -d "pubmed21n0761.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0761.xml.gz"
    rm pubmed21n0761.xml.gz
  fi
fi
if [ ! -f pubmed21n0762.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0762.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0762.xml.gz"
  if ! gzip -d "pubmed21n0762.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0762.xml.gz"
    rm pubmed21n0762.xml.gz
  fi
fi
if [ ! -f pubmed21n0763.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0763.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0763.xml.gz"
  if ! gzip -d "pubmed21n0763.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0763.xml.gz"
    rm pubmed21n0763.xml.gz
  fi
fi
if [ ! -f pubmed21n0764.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0764.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0764.xml.gz"
  if ! gzip -d "pubmed21n0764.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0764.xml.gz"
    rm pubmed21n0764.xml.gz
  fi
fi
if [ ! -f pubmed21n0765.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0765.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0765.xml.gz"
  if ! gzip -d "pubmed21n0765.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0765.xml.gz"
    rm pubmed21n0765.xml.gz
  fi
fi
if [ ! -f pubmed21n0766.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0766.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0766.xml.gz"
  if ! gzip -d "pubmed21n0766.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0766.xml.gz"
    rm pubmed21n0766.xml.gz
  fi
fi
if [ ! -f pubmed21n0767.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0767.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0767.xml.gz"
  if ! gzip -d "pubmed21n0767.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0767.xml.gz"
    rm pubmed21n0767.xml.gz
  fi
fi
if [ ! -f pubmed21n0768.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0768.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0768.xml.gz"
  if ! gzip -d "pubmed21n0768.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0768.xml.gz"
    rm pubmed21n0768.xml.gz
  fi
fi
if [ ! -f pubmed21n0769.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0769.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0769.xml.gz"
  if ! gzip -d "pubmed21n0769.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0769.xml.gz"
    rm pubmed21n0769.xml.gz
  fi
fi
if [ ! -f pubmed21n0770.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0770.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0770.xml.gz"
  if ! gzip -d "pubmed21n0770.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0770.xml.gz"
    rm pubmed21n0770.xml.gz
  fi
fi
if [ ! -f pubmed21n0771.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0771.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0771.xml.gz"
  if ! gzip -d "pubmed21n0771.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0771.xml.gz"
    rm pubmed21n0771.xml.gz
  fi
fi
if [ ! -f pubmed21n0772.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0772.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0772.xml.gz"
  if ! gzip -d "pubmed21n0772.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0772.xml.gz"
    rm pubmed21n0772.xml.gz
  fi
fi
if [ ! -f pubmed21n0773.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0773.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0773.xml.gz"
  if ! gzip -d "pubmed21n0773.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0773.xml.gz"
    rm pubmed21n0773.xml.gz
  fi
fi
if [ ! -f pubmed21n0774.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0774.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0774.xml.gz"
  if ! gzip -d "pubmed21n0774.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0774.xml.gz"
    rm pubmed21n0774.xml.gz
  fi
fi
if [ ! -f pubmed21n0775.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0775.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0775.xml.gz"
  if ! gzip -d "pubmed21n0775.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0775.xml.gz"
    rm pubmed21n0775.xml.gz
  fi
fi
if [ ! -f pubmed21n0776.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0776.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0776.xml.gz"
  if ! gzip -d "pubmed21n0776.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0776.xml.gz"
    rm pubmed21n0776.xml.gz
  fi
fi
if [ ! -f pubmed21n0777.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0777.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0777.xml.gz"
  if ! gzip -d "pubmed21n0777.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0777.xml.gz"
    rm pubmed21n0777.xml.gz
  fi
fi
if [ ! -f pubmed21n0778.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0778.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0778.xml.gz"
  if ! gzip -d "pubmed21n0778.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0778.xml.gz"
    rm pubmed21n0778.xml.gz
  fi
fi
if [ ! -f pubmed21n0779.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0779.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0779.xml.gz"
  if ! gzip -d "pubmed21n0779.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0779.xml.gz"
    rm pubmed21n0779.xml.gz
  fi
fi
if [ ! -f pubmed21n0780.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0780.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0780.xml.gz"
  if ! gzip -d "pubmed21n0780.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0780.xml.gz"
    rm pubmed21n0780.xml.gz
  fi
fi
if [ ! -f pubmed21n0781.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0781.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0781.xml.gz"
  if ! gzip -d "pubmed21n0781.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0781.xml.gz"
    rm pubmed21n0781.xml.gz
  fi
fi
if [ ! -f pubmed21n0782.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0782.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0782.xml.gz"
  if ! gzip -d "pubmed21n0782.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0782.xml.gz"
    rm pubmed21n0782.xml.gz
  fi
fi
if [ ! -f pubmed21n0783.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0783.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0783.xml.gz"
  if ! gzip -d "pubmed21n0783.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0783.xml.gz"
    rm pubmed21n0783.xml.gz
  fi
fi
if [ ! -f pubmed21n0784.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0784.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0784.xml.gz"
  if ! gzip -d "pubmed21n0784.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0784.xml.gz"
    rm pubmed21n0784.xml.gz
  fi
fi
if [ ! -f pubmed21n0785.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0785.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0785.xml.gz"
  if ! gzip -d "pubmed21n0785.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0785.xml.gz"
    rm pubmed21n0785.xml.gz
  fi
fi
if [ ! -f pubmed21n0786.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0786.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0786.xml.gz"
  if ! gzip -d "pubmed21n0786.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0786.xml.gz"
    rm pubmed21n0786.xml.gz
  fi
fi
if [ ! -f pubmed21n0787.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0787.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0787.xml.gz"
  if ! gzip -d "pubmed21n0787.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0787.xml.gz"
    rm pubmed21n0787.xml.gz
  fi
fi
if [ ! -f pubmed21n0788.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0788.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0788.xml.gz"
  if ! gzip -d "pubmed21n0788.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0788.xml.gz"
    rm pubmed21n0788.xml.gz
  fi
fi
if [ ! -f pubmed21n0789.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0789.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0789.xml.gz"
  if ! gzip -d "pubmed21n0789.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0789.xml.gz"
    rm pubmed21n0789.xml.gz
  fi
fi
if [ ! -f pubmed21n0790.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0790.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0790.xml.gz"
  if ! gzip -d "pubmed21n0790.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0790.xml.gz"
    rm pubmed21n0790.xml.gz
  fi
fi
if [ ! -f pubmed21n0791.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0791.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0791.xml.gz"
  if ! gzip -d "pubmed21n0791.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0791.xml.gz"
    rm pubmed21n0791.xml.gz
  fi
fi
if [ ! -f pubmed21n0792.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0792.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0792.xml.gz"
  if ! gzip -d "pubmed21n0792.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0792.xml.gz"
    rm pubmed21n0792.xml.gz
  fi
fi
if [ ! -f pubmed21n0793.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0793.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0793.xml.gz"
  if ! gzip -d "pubmed21n0793.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0793.xml.gz"
    rm pubmed21n0793.xml.gz
  fi
fi
if [ ! -f pubmed21n0794.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0794.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0794.xml.gz"
  if ! gzip -d "pubmed21n0794.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0794.xml.gz"
    rm pubmed21n0794.xml.gz
  fi
fi
if [ ! -f pubmed21n0795.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0795.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0795.xml.gz"
  if ! gzip -d "pubmed21n0795.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0795.xml.gz"
    rm pubmed21n0795.xml.gz
  fi
fi
if [ ! -f pubmed21n0796.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0796.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0796.xml.gz"
  if ! gzip -d "pubmed21n0796.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0796.xml.gz"
    rm pubmed21n0796.xml.gz
  fi
fi
if [ ! -f pubmed21n0797.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0797.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0797.xml.gz"
  if ! gzip -d "pubmed21n0797.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0797.xml.gz"
    rm pubmed21n0797.xml.gz
  fi
fi
if [ ! -f pubmed21n0798.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0798.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0798.xml.gz"
  if ! gzip -d "pubmed21n0798.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0798.xml.gz"
    rm pubmed21n0798.xml.gz
  fi
fi
if [ ! -f pubmed21n0799.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0799.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0799.xml.gz"
  if ! gzip -d "pubmed21n0799.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0799.xml.gz"
    rm pubmed21n0799.xml.gz
  fi
fi
if [ ! -f pubmed21n0800.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0800.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0800.xml.gz"
  if ! gzip -d "pubmed21n0800.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0800.xml.gz"
    rm pubmed21n0800.xml.gz
  fi
fi
if [ ! -f pubmed21n0801.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0801.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0801.xml.gz"
  if ! gzip -d "pubmed21n0801.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0801.xml.gz"
    rm pubmed21n0801.xml.gz
  fi
fi
if [ ! -f pubmed21n0802.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0802.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0802.xml.gz"
  if ! gzip -d "pubmed21n0802.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0802.xml.gz"
    rm pubmed21n0802.xml.gz
  fi
fi
if [ ! -f pubmed21n0803.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0803.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0803.xml.gz"
  if ! gzip -d "pubmed21n0803.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0803.xml.gz"
    rm pubmed21n0803.xml.gz
  fi
fi
if [ ! -f pubmed21n0804.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0804.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0804.xml.gz"
  if ! gzip -d "pubmed21n0804.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0804.xml.gz"
    rm pubmed21n0804.xml.gz
  fi
fi
if [ ! -f pubmed21n0805.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0805.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0805.xml.gz"
  if ! gzip -d "pubmed21n0805.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0805.xml.gz"
    rm pubmed21n0805.xml.gz
  fi
fi
if [ ! -f pubmed21n0806.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0806.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0806.xml.gz"
  if ! gzip -d "pubmed21n0806.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0806.xml.gz"
    rm pubmed21n0806.xml.gz
  fi
fi
if [ ! -f pubmed21n0807.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0807.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0807.xml.gz"
  if ! gzip -d "pubmed21n0807.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0807.xml.gz"
    rm pubmed21n0807.xml.gz
  fi
fi
if [ ! -f pubmed21n0808.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0808.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0808.xml.gz"
  if ! gzip -d "pubmed21n0808.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0808.xml.gz"
    rm pubmed21n0808.xml.gz
  fi
fi
if [ ! -f pubmed21n0809.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0809.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0809.xml.gz"
  if ! gzip -d "pubmed21n0809.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0809.xml.gz"
    rm pubmed21n0809.xml.gz
  fi
fi
if [ ! -f pubmed21n0810.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0810.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0810.xml.gz"
  if ! gzip -d "pubmed21n0810.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0810.xml.gz"
    rm pubmed21n0810.xml.gz
  fi
fi
if [ ! -f pubmed21n0811.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0811.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0811.xml.gz"
  if ! gzip -d "pubmed21n0811.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0811.xml.gz"
    rm pubmed21n0811.xml.gz
  fi
fi
if [ ! -f pubmed21n0812.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0812.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0812.xml.gz"
  if ! gzip -d "pubmed21n0812.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0812.xml.gz"
    rm pubmed21n0812.xml.gz
  fi
fi
if [ ! -f pubmed21n0813.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0813.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0813.xml.gz"
  if ! gzip -d "pubmed21n0813.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0813.xml.gz"
    rm pubmed21n0813.xml.gz
  fi
fi
if [ ! -f pubmed21n0814.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0814.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0814.xml.gz"
  if ! gzip -d "pubmed21n0814.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0814.xml.gz"
    rm pubmed21n0814.xml.gz
  fi
fi
if [ ! -f pubmed21n0815.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0815.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0815.xml.gz"
  if ! gzip -d "pubmed21n0815.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0815.xml.gz"
    rm pubmed21n0815.xml.gz
  fi
fi
if [ ! -f pubmed21n0816.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0816.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0816.xml.gz"
  if ! gzip -d "pubmed21n0816.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0816.xml.gz"
    rm pubmed21n0816.xml.gz
  fi
fi
if [ ! -f pubmed21n0817.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0817.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0817.xml.gz"
  if ! gzip -d "pubmed21n0817.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0817.xml.gz"
    rm pubmed21n0817.xml.gz
  fi
fi
if [ ! -f pubmed21n0818.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0818.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0818.xml.gz"
  if ! gzip -d "pubmed21n0818.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0818.xml.gz"
    rm pubmed21n0818.xml.gz
  fi
fi
if [ ! -f pubmed21n0819.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0819.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0819.xml.gz"
  if ! gzip -d "pubmed21n0819.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0819.xml.gz"
    rm pubmed21n0819.xml.gz
  fi
fi
if [ ! -f pubmed21n0820.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0820.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0820.xml.gz"
  if ! gzip -d "pubmed21n0820.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0820.xml.gz"
    rm pubmed21n0820.xml.gz
  fi
fi
if [ ! -f pubmed21n0821.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0821.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0821.xml.gz"
  if ! gzip -d "pubmed21n0821.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0821.xml.gz"
    rm pubmed21n0821.xml.gz
  fi
fi
if [ ! -f pubmed21n0822.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0822.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0822.xml.gz"
  if ! gzip -d "pubmed21n0822.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0822.xml.gz"
    rm pubmed21n0822.xml.gz
  fi
fi
if [ ! -f pubmed21n0823.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0823.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0823.xml.gz"
  if ! gzip -d "pubmed21n0823.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0823.xml.gz"
    rm pubmed21n0823.xml.gz
  fi
fi
if [ ! -f pubmed21n0824.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0824.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0824.xml.gz"
  if ! gzip -d "pubmed21n0824.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0824.xml.gz"
    rm pubmed21n0824.xml.gz
  fi
fi
if [ ! -f pubmed21n0825.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0825.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0825.xml.gz"
  if ! gzip -d "pubmed21n0825.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0825.xml.gz"
    rm pubmed21n0825.xml.gz
  fi
fi
if [ ! -f pubmed21n0826.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0826.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0826.xml.gz"
  if ! gzip -d "pubmed21n0826.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0826.xml.gz"
    rm pubmed21n0826.xml.gz
  fi
fi
if [ ! -f pubmed21n0827.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0827.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0827.xml.gz"
  if ! gzip -d "pubmed21n0827.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0827.xml.gz"
    rm pubmed21n0827.xml.gz
  fi
fi
if [ ! -f pubmed21n0828.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0828.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0828.xml.gz"
  if ! gzip -d "pubmed21n0828.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0828.xml.gz"
    rm pubmed21n0828.xml.gz
  fi
fi
if [ ! -f pubmed21n0829.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0829.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0829.xml.gz"
  if ! gzip -d "pubmed21n0829.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0829.xml.gz"
    rm pubmed21n0829.xml.gz
  fi
fi
if [ ! -f pubmed21n0830.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0830.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0830.xml.gz"
  if ! gzip -d "pubmed21n0830.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0830.xml.gz"
    rm pubmed21n0830.xml.gz
  fi
fi
if [ ! -f pubmed21n0831.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0831.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0831.xml.gz"
  if ! gzip -d "pubmed21n0831.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0831.xml.gz"
    rm pubmed21n0831.xml.gz
  fi
fi
if [ ! -f pubmed21n0832.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0832.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0832.xml.gz"
  if ! gzip -d "pubmed21n0832.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0832.xml.gz"
    rm pubmed21n0832.xml.gz
  fi
fi
if [ ! -f pubmed21n0833.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0833.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0833.xml.gz"
  if ! gzip -d "pubmed21n0833.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0833.xml.gz"
    rm pubmed21n0833.xml.gz
  fi
fi
if [ ! -f pubmed21n0834.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0834.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0834.xml.gz"
  if ! gzip -d "pubmed21n0834.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0834.xml.gz"
    rm pubmed21n0834.xml.gz
  fi
fi
if [ ! -f pubmed21n0835.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0835.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0835.xml.gz"
  if ! gzip -d "pubmed21n0835.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0835.xml.gz"
    rm pubmed21n0835.xml.gz
  fi
fi
if [ ! -f pubmed21n0836.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0836.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0836.xml.gz"
  if ! gzip -d "pubmed21n0836.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0836.xml.gz"
    rm pubmed21n0836.xml.gz
  fi
fi
if [ ! -f pubmed21n0837.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0837.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0837.xml.gz"
  if ! gzip -d "pubmed21n0837.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0837.xml.gz"
    rm pubmed21n0837.xml.gz
  fi
fi
if [ ! -f pubmed21n0838.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0838.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0838.xml.gz"
  if ! gzip -d "pubmed21n0838.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0838.xml.gz"
    rm pubmed21n0838.xml.gz
  fi
fi
if [ ! -f pubmed21n0839.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0839.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0839.xml.gz"
  if ! gzip -d "pubmed21n0839.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0839.xml.gz"
    rm pubmed21n0839.xml.gz
  fi
fi
if [ ! -f pubmed21n0840.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0840.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0840.xml.gz"
  if ! gzip -d "pubmed21n0840.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0840.xml.gz"
    rm pubmed21n0840.xml.gz
  fi
fi
if [ ! -f pubmed21n0841.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0841.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0841.xml.gz"
  if ! gzip -d "pubmed21n0841.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0841.xml.gz"
    rm pubmed21n0841.xml.gz
  fi
fi
if [ ! -f pubmed21n0842.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0842.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0842.xml.gz"
  if ! gzip -d "pubmed21n0842.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0842.xml.gz"
    rm pubmed21n0842.xml.gz
  fi
fi
if [ ! -f pubmed21n0843.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0843.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0843.xml.gz"
  if ! gzip -d "pubmed21n0843.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0843.xml.gz"
    rm pubmed21n0843.xml.gz
  fi
fi
if [ ! -f pubmed21n0844.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0844.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0844.xml.gz"
  if ! gzip -d "pubmed21n0844.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0844.xml.gz"
    rm pubmed21n0844.xml.gz
  fi
fi
if [ ! -f pubmed21n0845.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0845.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0845.xml.gz"
  if ! gzip -d "pubmed21n0845.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0845.xml.gz"
    rm pubmed21n0845.xml.gz
  fi
fi
if [ ! -f pubmed21n0846.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0846.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0846.xml.gz"
  if ! gzip -d "pubmed21n0846.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0846.xml.gz"
    rm pubmed21n0846.xml.gz
  fi
fi
if [ ! -f pubmed21n0847.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0847.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0847.xml.gz"
  if ! gzip -d "pubmed21n0847.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0847.xml.gz"
    rm pubmed21n0847.xml.gz
  fi
fi
if [ ! -f pubmed21n0848.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0848.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0848.xml.gz"
  if ! gzip -d "pubmed21n0848.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0848.xml.gz"
    rm pubmed21n0848.xml.gz
  fi
fi
if [ ! -f pubmed21n0849.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0849.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0849.xml.gz"
  if ! gzip -d "pubmed21n0849.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0849.xml.gz"
    rm pubmed21n0849.xml.gz
  fi
fi
if [ ! -f pubmed21n0850.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0850.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0850.xml.gz"
  if ! gzip -d "pubmed21n0850.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0850.xml.gz"
    rm pubmed21n0850.xml.gz
  fi
fi
if [ ! -f pubmed21n0851.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0851.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0851.xml.gz"
  if ! gzip -d "pubmed21n0851.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0851.xml.gz"
    rm pubmed21n0851.xml.gz
  fi
fi
if [ ! -f pubmed21n0852.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0852.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0852.xml.gz"
  if ! gzip -d "pubmed21n0852.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0852.xml.gz"
    rm pubmed21n0852.xml.gz
  fi
fi
if [ ! -f pubmed21n0853.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0853.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0853.xml.gz"
  if ! gzip -d "pubmed21n0853.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0853.xml.gz"
    rm pubmed21n0853.xml.gz
  fi
fi
if [ ! -f pubmed21n0854.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0854.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0854.xml.gz"
  if ! gzip -d "pubmed21n0854.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0854.xml.gz"
    rm pubmed21n0854.xml.gz
  fi
fi
if [ ! -f pubmed21n0855.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0855.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0855.xml.gz"
  if ! gzip -d "pubmed21n0855.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0855.xml.gz"
    rm pubmed21n0855.xml.gz
  fi
fi
if [ ! -f pubmed21n0856.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0856.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0856.xml.gz"
  if ! gzip -d "pubmed21n0856.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0856.xml.gz"
    rm pubmed21n0856.xml.gz
  fi
fi
if [ ! -f pubmed21n0857.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0857.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0857.xml.gz"
  if ! gzip -d "pubmed21n0857.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0857.xml.gz"
    rm pubmed21n0857.xml.gz
  fi
fi
if [ ! -f pubmed21n0858.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0858.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0858.xml.gz"
  if ! gzip -d "pubmed21n0858.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0858.xml.gz"
    rm pubmed21n0858.xml.gz
  fi
fi
if [ ! -f pubmed21n0859.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0859.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0859.xml.gz"
  if ! gzip -d "pubmed21n0859.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0859.xml.gz"
    rm pubmed21n0859.xml.gz
  fi
fi
if [ ! -f pubmed21n0860.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0860.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0860.xml.gz"
  if ! gzip -d "pubmed21n0860.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0860.xml.gz"
    rm pubmed21n0860.xml.gz
  fi
fi
if [ ! -f pubmed21n0861.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0861.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0861.xml.gz"
  if ! gzip -d "pubmed21n0861.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0861.xml.gz"
    rm pubmed21n0861.xml.gz
  fi
fi
if [ ! -f pubmed21n0862.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0862.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0862.xml.gz"
  if ! gzip -d "pubmed21n0862.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0862.xml.gz"
    rm pubmed21n0862.xml.gz
  fi
fi
if [ ! -f pubmed21n0863.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0863.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0863.xml.gz"
  if ! gzip -d "pubmed21n0863.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0863.xml.gz"
    rm pubmed21n0863.xml.gz
  fi
fi
if [ ! -f pubmed21n0864.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0864.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0864.xml.gz"
  if ! gzip -d "pubmed21n0864.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0864.xml.gz"
    rm pubmed21n0864.xml.gz
  fi
fi
if [ ! -f pubmed21n0865.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0865.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0865.xml.gz"
  if ! gzip -d "pubmed21n0865.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0865.xml.gz"
    rm pubmed21n0865.xml.gz
  fi
fi
if [ ! -f pubmed21n0866.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0866.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0866.xml.gz"
  if ! gzip -d "pubmed21n0866.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0866.xml.gz"
    rm pubmed21n0866.xml.gz
  fi
fi
if [ ! -f pubmed21n0867.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0867.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0867.xml.gz"
  if ! gzip -d "pubmed21n0867.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0867.xml.gz"
    rm pubmed21n0867.xml.gz
  fi
fi
if [ ! -f pubmed21n0868.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0868.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0868.xml.gz"
  if ! gzip -d "pubmed21n0868.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0868.xml.gz"
    rm pubmed21n0868.xml.gz
  fi
fi
if [ ! -f pubmed21n0869.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0869.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0869.xml.gz"
  if ! gzip -d "pubmed21n0869.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0869.xml.gz"
    rm pubmed21n0869.xml.gz
  fi
fi
if [ ! -f pubmed21n0870.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0870.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0870.xml.gz"
  if ! gzip -d "pubmed21n0870.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0870.xml.gz"
    rm pubmed21n0870.xml.gz
  fi
fi
if [ ! -f pubmed21n0871.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0871.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0871.xml.gz"
  if ! gzip -d "pubmed21n0871.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0871.xml.gz"
    rm pubmed21n0871.xml.gz
  fi
fi
if [ ! -f pubmed21n0872.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0872.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0872.xml.gz"
  if ! gzip -d "pubmed21n0872.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0872.xml.gz"
    rm pubmed21n0872.xml.gz
  fi
fi
if [ ! -f pubmed21n0873.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0873.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0873.xml.gz"
  if ! gzip -d "pubmed21n0873.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0873.xml.gz"
    rm pubmed21n0873.xml.gz
  fi
fi
if [ ! -f pubmed21n0874.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0874.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0874.xml.gz"
  if ! gzip -d "pubmed21n0874.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0874.xml.gz"
    rm pubmed21n0874.xml.gz
  fi
fi
if [ ! -f pubmed21n0875.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0875.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0875.xml.gz"
  if ! gzip -d "pubmed21n0875.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0875.xml.gz"
    rm pubmed21n0875.xml.gz
  fi
fi
if [ ! -f pubmed21n0876.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0876.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0876.xml.gz"
  if ! gzip -d "pubmed21n0876.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0876.xml.gz"
    rm pubmed21n0876.xml.gz
  fi
fi
if [ ! -f pubmed21n0877.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0877.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0877.xml.gz"
  if ! gzip -d "pubmed21n0877.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0877.xml.gz"
    rm pubmed21n0877.xml.gz
  fi
fi
if [ ! -f pubmed21n0878.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0878.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0878.xml.gz"
  if ! gzip -d "pubmed21n0878.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0878.xml.gz"
    rm pubmed21n0878.xml.gz
  fi
fi
if [ ! -f pubmed21n0879.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0879.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0879.xml.gz"
  if ! gzip -d "pubmed21n0879.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0879.xml.gz"
    rm pubmed21n0879.xml.gz
  fi
fi
if [ ! -f pubmed21n0880.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0880.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0880.xml.gz"
  if ! gzip -d "pubmed21n0880.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0880.xml.gz"
    rm pubmed21n0880.xml.gz
  fi
fi
if [ ! -f pubmed21n0881.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0881.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0881.xml.gz"
  if ! gzip -d "pubmed21n0881.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0881.xml.gz"
    rm pubmed21n0881.xml.gz
  fi
fi
if [ ! -f pubmed21n0882.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0882.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0882.xml.gz"
  if ! gzip -d "pubmed21n0882.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0882.xml.gz"
    rm pubmed21n0882.xml.gz
  fi
fi
if [ ! -f pubmed21n0883.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0883.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0883.xml.gz"
  if ! gzip -d "pubmed21n0883.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0883.xml.gz"
    rm pubmed21n0883.xml.gz
  fi
fi
if [ ! -f pubmed21n0884.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0884.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0884.xml.gz"
  if ! gzip -d "pubmed21n0884.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0884.xml.gz"
    rm pubmed21n0884.xml.gz
  fi
fi
if [ ! -f pubmed21n0885.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0885.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0885.xml.gz"
  if ! gzip -d "pubmed21n0885.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0885.xml.gz"
    rm pubmed21n0885.xml.gz
  fi
fi
if [ ! -f pubmed21n0886.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0886.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0886.xml.gz"
  if ! gzip -d "pubmed21n0886.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0886.xml.gz"
    rm pubmed21n0886.xml.gz
  fi
fi
if [ ! -f pubmed21n0887.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0887.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0887.xml.gz"
  if ! gzip -d "pubmed21n0887.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0887.xml.gz"
    rm pubmed21n0887.xml.gz
  fi
fi
if [ ! -f pubmed21n0888.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0888.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0888.xml.gz"
  if ! gzip -d "pubmed21n0888.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0888.xml.gz"
    rm pubmed21n0888.xml.gz
  fi
fi
if [ ! -f pubmed21n0889.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0889.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0889.xml.gz"
  if ! gzip -d "pubmed21n0889.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0889.xml.gz"
    rm pubmed21n0889.xml.gz
  fi
fi
if [ ! -f pubmed21n0890.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0890.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0890.xml.gz"
  if ! gzip -d "pubmed21n0890.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0890.xml.gz"
    rm pubmed21n0890.xml.gz
  fi
fi
if [ ! -f pubmed21n0891.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0891.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0891.xml.gz"
  if ! gzip -d "pubmed21n0891.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0891.xml.gz"
    rm pubmed21n0891.xml.gz
  fi
fi
if [ ! -f pubmed21n0892.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0892.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0892.xml.gz"
  if ! gzip -d "pubmed21n0892.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0892.xml.gz"
    rm pubmed21n0892.xml.gz
  fi
fi
if [ ! -f pubmed21n0893.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0893.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0893.xml.gz"
  if ! gzip -d "pubmed21n0893.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0893.xml.gz"
    rm pubmed21n0893.xml.gz
  fi
fi
if [ ! -f pubmed21n0894.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0894.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0894.xml.gz"
  if ! gzip -d "pubmed21n0894.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0894.xml.gz"
    rm pubmed21n0894.xml.gz
  fi
fi
if [ ! -f pubmed21n0895.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0895.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0895.xml.gz"
  if ! gzip -d "pubmed21n0895.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0895.xml.gz"
    rm pubmed21n0895.xml.gz
  fi
fi
if [ ! -f pubmed21n0896.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0896.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0896.xml.gz"
  if ! gzip -d "pubmed21n0896.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0896.xml.gz"
    rm pubmed21n0896.xml.gz
  fi
fi
if [ ! -f pubmed21n0897.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0897.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0897.xml.gz"
  if ! gzip -d "pubmed21n0897.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0897.xml.gz"
    rm pubmed21n0897.xml.gz
  fi
fi
if [ ! -f pubmed21n0898.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0898.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0898.xml.gz"
  if ! gzip -d "pubmed21n0898.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0898.xml.gz"
    rm pubmed21n0898.xml.gz
  fi
fi
if [ ! -f pubmed21n0899.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0899.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0899.xml.gz"
  if ! gzip -d "pubmed21n0899.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0899.xml.gz"
    rm pubmed21n0899.xml.gz
  fi
fi
if [ ! -f pubmed21n0900.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0900.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0900.xml.gz"
  if ! gzip -d "pubmed21n0900.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0900.xml.gz"
    rm pubmed21n0900.xml.gz
  fi
fi
if [ ! -f pubmed21n0901.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0901.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0901.xml.gz"
  if ! gzip -d "pubmed21n0901.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0901.xml.gz"
    rm pubmed21n0901.xml.gz
  fi
fi
if [ ! -f pubmed21n0902.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0902.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0902.xml.gz"
  if ! gzip -d "pubmed21n0902.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0902.xml.gz"
    rm pubmed21n0902.xml.gz
  fi
fi
if [ ! -f pubmed21n0903.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0903.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0903.xml.gz"
  if ! gzip -d "pubmed21n0903.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0903.xml.gz"
    rm pubmed21n0903.xml.gz
  fi
fi
if [ ! -f pubmed21n0904.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0904.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0904.xml.gz"
  if ! gzip -d "pubmed21n0904.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0904.xml.gz"
    rm pubmed21n0904.xml.gz
  fi
fi
if [ ! -f pubmed21n0905.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0905.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0905.xml.gz"
  if ! gzip -d "pubmed21n0905.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0905.xml.gz"
    rm pubmed21n0905.xml.gz
  fi
fi
if [ ! -f pubmed21n0906.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0906.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0906.xml.gz"
  if ! gzip -d "pubmed21n0906.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0906.xml.gz"
    rm pubmed21n0906.xml.gz
  fi
fi
if [ ! -f pubmed21n0907.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0907.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0907.xml.gz"
  if ! gzip -d "pubmed21n0907.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0907.xml.gz"
    rm pubmed21n0907.xml.gz
  fi
fi
if [ ! -f pubmed21n0908.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0908.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0908.xml.gz"
  if ! gzip -d "pubmed21n0908.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0908.xml.gz"
    rm pubmed21n0908.xml.gz
  fi
fi
if [ ! -f pubmed21n0909.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0909.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0909.xml.gz"
  if ! gzip -d "pubmed21n0909.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0909.xml.gz"
    rm pubmed21n0909.xml.gz
  fi
fi
if [ ! -f pubmed21n0910.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0910.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0910.xml.gz"
  if ! gzip -d "pubmed21n0910.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0910.xml.gz"
    rm pubmed21n0910.xml.gz
  fi
fi
if [ ! -f pubmed21n0911.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0911.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0911.xml.gz"
  if ! gzip -d "pubmed21n0911.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0911.xml.gz"
    rm pubmed21n0911.xml.gz
  fi
fi
if [ ! -f pubmed21n0912.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0912.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0912.xml.gz"
  if ! gzip -d "pubmed21n0912.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0912.xml.gz"
    rm pubmed21n0912.xml.gz
  fi
fi
if [ ! -f pubmed21n0913.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0913.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0913.xml.gz"
  if ! gzip -d "pubmed21n0913.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0913.xml.gz"
    rm pubmed21n0913.xml.gz
  fi
fi
if [ ! -f pubmed21n0914.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0914.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0914.xml.gz"
  if ! gzip -d "pubmed21n0914.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0914.xml.gz"
    rm pubmed21n0914.xml.gz
  fi
fi
if [ ! -f pubmed21n0915.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0915.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0915.xml.gz"
  if ! gzip -d "pubmed21n0915.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0915.xml.gz"
    rm pubmed21n0915.xml.gz
  fi
fi
if [ ! -f pubmed21n0916.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0916.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0916.xml.gz"
  if ! gzip -d "pubmed21n0916.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0916.xml.gz"
    rm pubmed21n0916.xml.gz
  fi
fi
if [ ! -f pubmed21n0917.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0917.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0917.xml.gz"
  if ! gzip -d "pubmed21n0917.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0917.xml.gz"
    rm pubmed21n0917.xml.gz
  fi
fi
if [ ! -f pubmed21n0918.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0918.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0918.xml.gz"
  if ! gzip -d "pubmed21n0918.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0918.xml.gz"
    rm pubmed21n0918.xml.gz
  fi
fi
if [ ! -f pubmed21n0919.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0919.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0919.xml.gz"
  if ! gzip -d "pubmed21n0919.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0919.xml.gz"
    rm pubmed21n0919.xml.gz
  fi
fi
if [ ! -f pubmed21n0920.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0920.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0920.xml.gz"
  if ! gzip -d "pubmed21n0920.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0920.xml.gz"
    rm pubmed21n0920.xml.gz
  fi
fi
if [ ! -f pubmed21n0921.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0921.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0921.xml.gz"
  if ! gzip -d "pubmed21n0921.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0921.xml.gz"
    rm pubmed21n0921.xml.gz
  fi
fi
if [ ! -f pubmed21n0922.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0922.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0922.xml.gz"
  if ! gzip -d "pubmed21n0922.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0922.xml.gz"
    rm pubmed21n0922.xml.gz
  fi
fi
if [ ! -f pubmed21n0923.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0923.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0923.xml.gz"
  if ! gzip -d "pubmed21n0923.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0923.xml.gz"
    rm pubmed21n0923.xml.gz
  fi
fi
if [ ! -f pubmed21n0924.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0924.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0924.xml.gz"
  if ! gzip -d "pubmed21n0924.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0924.xml.gz"
    rm pubmed21n0924.xml.gz
  fi
fi
if [ ! -f pubmed21n0925.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0925.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0925.xml.gz"
  if ! gzip -d "pubmed21n0925.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0925.xml.gz"
    rm pubmed21n0925.xml.gz
  fi
fi
if [ ! -f pubmed21n0926.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0926.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0926.xml.gz"
  if ! gzip -d "pubmed21n0926.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0926.xml.gz"
    rm pubmed21n0926.xml.gz
  fi
fi
if [ ! -f pubmed21n0927.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0927.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0927.xml.gz"
  if ! gzip -d "pubmed21n0927.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0927.xml.gz"
    rm pubmed21n0927.xml.gz
  fi
fi
if [ ! -f pubmed21n0928.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0928.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0928.xml.gz"
  if ! gzip -d "pubmed21n0928.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0928.xml.gz"
    rm pubmed21n0928.xml.gz
  fi
fi
if [ ! -f pubmed21n0929.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0929.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0929.xml.gz"
  if ! gzip -d "pubmed21n0929.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0929.xml.gz"
    rm pubmed21n0929.xml.gz
  fi
fi
if [ ! -f pubmed21n0930.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0930.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0930.xml.gz"
  if ! gzip -d "pubmed21n0930.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0930.xml.gz"
    rm pubmed21n0930.xml.gz
  fi
fi
if [ ! -f pubmed21n0931.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0931.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0931.xml.gz"
  if ! gzip -d "pubmed21n0931.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0931.xml.gz"
    rm pubmed21n0931.xml.gz
  fi
fi
if [ ! -f pubmed21n0932.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0932.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0932.xml.gz"
  if ! gzip -d "pubmed21n0932.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0932.xml.gz"
    rm pubmed21n0932.xml.gz
  fi
fi
if [ ! -f pubmed21n0933.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0933.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0933.xml.gz"
  if ! gzip -d "pubmed21n0933.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0933.xml.gz"
    rm pubmed21n0933.xml.gz
  fi
fi
if [ ! -f pubmed21n0934.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0934.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0934.xml.gz"
  if ! gzip -d "pubmed21n0934.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0934.xml.gz"
    rm pubmed21n0934.xml.gz
  fi
fi
if [ ! -f pubmed21n0935.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0935.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0935.xml.gz"
  if ! gzip -d "pubmed21n0935.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0935.xml.gz"
    rm pubmed21n0935.xml.gz
  fi
fi
if [ ! -f pubmed21n0936.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0936.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0936.xml.gz"
  if ! gzip -d "pubmed21n0936.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0936.xml.gz"
    rm pubmed21n0936.xml.gz
  fi
fi
if [ ! -f pubmed21n0937.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0937.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0937.xml.gz"
  if ! gzip -d "pubmed21n0937.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0937.xml.gz"
    rm pubmed21n0937.xml.gz
  fi
fi
if [ ! -f pubmed21n0938.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0938.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0938.xml.gz"
  if ! gzip -d "pubmed21n0938.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0938.xml.gz"
    rm pubmed21n0938.xml.gz
  fi
fi
if [ ! -f pubmed21n0939.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0939.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0939.xml.gz"
  if ! gzip -d "pubmed21n0939.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0939.xml.gz"
    rm pubmed21n0939.xml.gz
  fi
fi
if [ ! -f pubmed21n0940.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0940.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0940.xml.gz"
  if ! gzip -d "pubmed21n0940.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0940.xml.gz"
    rm pubmed21n0940.xml.gz
  fi
fi
if [ ! -f pubmed21n0941.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0941.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0941.xml.gz"
  if ! gzip -d "pubmed21n0941.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0941.xml.gz"
    rm pubmed21n0941.xml.gz
  fi
fi
if [ ! -f pubmed21n0942.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0942.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0942.xml.gz"
  if ! gzip -d "pubmed21n0942.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0942.xml.gz"
    rm pubmed21n0942.xml.gz
  fi
fi
if [ ! -f pubmed21n0943.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0943.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0943.xml.gz"
  if ! gzip -d "pubmed21n0943.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0943.xml.gz"
    rm pubmed21n0943.xml.gz
  fi
fi
if [ ! -f pubmed21n0944.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0944.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0944.xml.gz"
  if ! gzip -d "pubmed21n0944.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0944.xml.gz"
    rm pubmed21n0944.xml.gz
  fi
fi
if [ ! -f pubmed21n0945.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0945.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0945.xml.gz"
  if ! gzip -d "pubmed21n0945.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0945.xml.gz"
    rm pubmed21n0945.xml.gz
  fi
fi
if [ ! -f pubmed21n0946.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0946.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0946.xml.gz"
  if ! gzip -d "pubmed21n0946.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0946.xml.gz"
    rm pubmed21n0946.xml.gz
  fi
fi
if [ ! -f pubmed21n0947.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0947.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0947.xml.gz"
  if ! gzip -d "pubmed21n0947.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0947.xml.gz"
    rm pubmed21n0947.xml.gz
  fi
fi
if [ ! -f pubmed21n0948.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0948.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0948.xml.gz"
  if ! gzip -d "pubmed21n0948.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0948.xml.gz"
    rm pubmed21n0948.xml.gz
  fi
fi
if [ ! -f pubmed21n0949.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0949.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0949.xml.gz"
  if ! gzip -d "pubmed21n0949.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0949.xml.gz"
    rm pubmed21n0949.xml.gz
  fi
fi
if [ ! -f pubmed21n0950.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0950.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0950.xml.gz"
  if ! gzip -d "pubmed21n0950.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0950.xml.gz"
    rm pubmed21n0950.xml.gz
  fi
fi
if [ ! -f pubmed21n0951.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0951.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0951.xml.gz"
  if ! gzip -d "pubmed21n0951.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0951.xml.gz"
    rm pubmed21n0951.xml.gz
  fi
fi
if [ ! -f pubmed21n0952.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0952.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0952.xml.gz"
  if ! gzip -d "pubmed21n0952.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0952.xml.gz"
    rm pubmed21n0952.xml.gz
  fi
fi
if [ ! -f pubmed21n0953.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0953.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0953.xml.gz"
  if ! gzip -d "pubmed21n0953.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0953.xml.gz"
    rm pubmed21n0953.xml.gz
  fi
fi
if [ ! -f pubmed21n0954.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0954.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0954.xml.gz"
  if ! gzip -d "pubmed21n0954.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0954.xml.gz"
    rm pubmed21n0954.xml.gz
  fi
fi
if [ ! -f pubmed21n0955.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0955.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0955.xml.gz"
  if ! gzip -d "pubmed21n0955.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0955.xml.gz"
    rm pubmed21n0955.xml.gz
  fi
fi
if [ ! -f pubmed21n0956.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0956.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0956.xml.gz"
  if ! gzip -d "pubmed21n0956.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0956.xml.gz"
    rm pubmed21n0956.xml.gz
  fi
fi
if [ ! -f pubmed21n0957.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0957.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0957.xml.gz"
  if ! gzip -d "pubmed21n0957.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0957.xml.gz"
    rm pubmed21n0957.xml.gz
  fi
fi
if [ ! -f pubmed21n0958.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0958.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0958.xml.gz"
  if ! gzip -d "pubmed21n0958.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0958.xml.gz"
    rm pubmed21n0958.xml.gz
  fi
fi
if [ ! -f pubmed21n0959.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0959.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0959.xml.gz"
  if ! gzip -d "pubmed21n0959.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0959.xml.gz"
    rm pubmed21n0959.xml.gz
  fi
fi
if [ ! -f pubmed21n0960.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0960.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0960.xml.gz"
  if ! gzip -d "pubmed21n0960.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0960.xml.gz"
    rm pubmed21n0960.xml.gz
  fi
fi
if [ ! -f pubmed21n0961.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0961.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0961.xml.gz"
  if ! gzip -d "pubmed21n0961.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0961.xml.gz"
    rm pubmed21n0961.xml.gz
  fi
fi
if [ ! -f pubmed21n0962.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0962.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0962.xml.gz"
  if ! gzip -d "pubmed21n0962.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0962.xml.gz"
    rm pubmed21n0962.xml.gz
  fi
fi
if [ ! -f pubmed21n0963.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0963.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0963.xml.gz"
  if ! gzip -d "pubmed21n0963.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0963.xml.gz"
    rm pubmed21n0963.xml.gz
  fi
fi
if [ ! -f pubmed21n0964.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0964.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0964.xml.gz"
  if ! gzip -d "pubmed21n0964.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0964.xml.gz"
    rm pubmed21n0964.xml.gz
  fi
fi
if [ ! -f pubmed21n0965.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0965.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0965.xml.gz"
  if ! gzip -d "pubmed21n0965.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0965.xml.gz"
    rm pubmed21n0965.xml.gz
  fi
fi
if [ ! -f pubmed21n0966.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0966.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0966.xml.gz"
  if ! gzip -d "pubmed21n0966.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0966.xml.gz"
    rm pubmed21n0966.xml.gz
  fi
fi
if [ ! -f pubmed21n0967.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0967.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0967.xml.gz"
  if ! gzip -d "pubmed21n0967.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0967.xml.gz"
    rm pubmed21n0967.xml.gz
  fi
fi
if [ ! -f pubmed21n0968.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0968.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0968.xml.gz"
  if ! gzip -d "pubmed21n0968.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0968.xml.gz"
    rm pubmed21n0968.xml.gz
  fi
fi
if [ ! -f pubmed21n0969.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0969.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0969.xml.gz"
  if ! gzip -d "pubmed21n0969.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0969.xml.gz"
    rm pubmed21n0969.xml.gz
  fi
fi
if [ ! -f pubmed21n0970.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0970.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0970.xml.gz"
  if ! gzip -d "pubmed21n0970.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0970.xml.gz"
    rm pubmed21n0970.xml.gz
  fi
fi
if [ ! -f pubmed21n0971.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0971.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0971.xml.gz"
  if ! gzip -d "pubmed21n0971.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0971.xml.gz"
    rm pubmed21n0971.xml.gz
  fi
fi
if [ ! -f pubmed21n0972.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0972.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0972.xml.gz"
  if ! gzip -d "pubmed21n0972.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0972.xml.gz"
    rm pubmed21n0972.xml.gz
  fi
fi
if [ ! -f pubmed21n0973.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0973.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0973.xml.gz"
  if ! gzip -d "pubmed21n0973.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0973.xml.gz"
    rm pubmed21n0973.xml.gz
  fi
fi
if [ ! -f pubmed21n0974.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0974.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0974.xml.gz"
  if ! gzip -d "pubmed21n0974.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0974.xml.gz"
    rm pubmed21n0974.xml.gz
  fi
fi
if [ ! -f pubmed21n0975.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0975.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0975.xml.gz"
  if ! gzip -d "pubmed21n0975.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0975.xml.gz"
    rm pubmed21n0975.xml.gz
  fi
fi
if [ ! -f pubmed21n0976.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0976.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0976.xml.gz"
  if ! gzip -d "pubmed21n0976.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0976.xml.gz"
    rm pubmed21n0976.xml.gz
  fi
fi
if [ ! -f pubmed21n0977.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0977.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0977.xml.gz"
  if ! gzip -d "pubmed21n0977.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0977.xml.gz"
    rm pubmed21n0977.xml.gz
  fi
fi
if [ ! -f pubmed21n0978.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0978.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0978.xml.gz"
  if ! gzip -d "pubmed21n0978.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0978.xml.gz"
    rm pubmed21n0978.xml.gz
  fi
fi
if [ ! -f pubmed21n0979.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0979.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0979.xml.gz"
  if ! gzip -d "pubmed21n0979.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0979.xml.gz"
    rm pubmed21n0979.xml.gz
  fi
fi
if [ ! -f pubmed21n0980.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0980.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0980.xml.gz"
  if ! gzip -d "pubmed21n0980.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0980.xml.gz"
    rm pubmed21n0980.xml.gz
  fi
fi
if [ ! -f pubmed21n0981.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0981.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0981.xml.gz"
  if ! gzip -d "pubmed21n0981.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0981.xml.gz"
    rm pubmed21n0981.xml.gz
  fi
fi
if [ ! -f pubmed21n0982.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0982.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0982.xml.gz"
  if ! gzip -d "pubmed21n0982.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0982.xml.gz"
    rm pubmed21n0982.xml.gz
  fi
fi
if [ ! -f pubmed21n0983.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0983.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0983.xml.gz"
  if ! gzip -d "pubmed21n0983.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0983.xml.gz"
    rm pubmed21n0983.xml.gz
  fi
fi
if [ ! -f pubmed21n0984.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0984.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0984.xml.gz"
  if ! gzip -d "pubmed21n0984.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0984.xml.gz"
    rm pubmed21n0984.xml.gz
  fi
fi
if [ ! -f pubmed21n0985.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0985.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0985.xml.gz"
  if ! gzip -d "pubmed21n0985.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0985.xml.gz"
    rm pubmed21n0985.xml.gz
  fi
fi
if [ ! -f pubmed21n0986.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0986.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0986.xml.gz"
  if ! gzip -d "pubmed21n0986.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0986.xml.gz"
    rm pubmed21n0986.xml.gz
  fi
fi
if [ ! -f pubmed21n0987.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0987.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0987.xml.gz"
  if ! gzip -d "pubmed21n0987.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0987.xml.gz"
    rm pubmed21n0987.xml.gz
  fi
fi
if [ ! -f pubmed21n0988.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0988.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0988.xml.gz"
  if ! gzip -d "pubmed21n0988.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0988.xml.gz"
    rm pubmed21n0988.xml.gz
  fi
fi
if [ ! -f pubmed21n0989.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0989.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0989.xml.gz"
  if ! gzip -d "pubmed21n0989.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0989.xml.gz"
    rm pubmed21n0989.xml.gz
  fi
fi
if [ ! -f pubmed21n0990.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0990.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0990.xml.gz"
  if ! gzip -d "pubmed21n0990.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0990.xml.gz"
    rm pubmed21n0990.xml.gz
  fi
fi
if [ ! -f pubmed21n0991.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0991.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0991.xml.gz"
  if ! gzip -d "pubmed21n0991.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0991.xml.gz"
    rm pubmed21n0991.xml.gz
  fi
fi
if [ ! -f pubmed21n0992.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0992.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0992.xml.gz"
  if ! gzip -d "pubmed21n0992.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0992.xml.gz"
    rm pubmed21n0992.xml.gz
  fi
fi
if [ ! -f pubmed21n0993.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0993.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0993.xml.gz"
  if ! gzip -d "pubmed21n0993.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0993.xml.gz"
    rm pubmed21n0993.xml.gz
  fi
fi
if [ ! -f pubmed21n0994.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0994.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0994.xml.gz"
  if ! gzip -d "pubmed21n0994.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0994.xml.gz"
    rm pubmed21n0994.xml.gz
  fi
fi
if [ ! -f pubmed21n0995.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0995.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0995.xml.gz"
  if ! gzip -d "pubmed21n0995.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0995.xml.gz"
    rm pubmed21n0995.xml.gz
  fi
fi
if [ ! -f pubmed21n0996.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0996.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0996.xml.gz"
  if ! gzip -d "pubmed21n0996.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0996.xml.gz"
    rm pubmed21n0996.xml.gz
  fi
fi
if [ ! -f pubmed21n0997.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0997.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0997.xml.gz"
  if ! gzip -d "pubmed21n0997.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0997.xml.gz"
    rm pubmed21n0997.xml.gz
  fi
fi
if [ ! -f pubmed21n0998.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0998.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0998.xml.gz"
  if ! gzip -d "pubmed21n0998.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0998.xml.gz"
    rm pubmed21n0998.xml.gz
  fi
fi
if [ ! -f pubmed21n0999.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n0999.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n0999.xml.gz"
  if ! gzip -d "pubmed21n0999.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n0999.xml.gz"
    rm pubmed21n0999.xml.gz
  fi
fi
if [ ! -f pubmed21n1000.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1000.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1000.xml.gz"
  if ! gzip -d "pubmed21n1000.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1000.xml.gz"
    rm pubmed21n1000.xml.gz
  fi
fi
if [ ! -f pubmed21n1001.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1001.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1001.xml.gz"
  if ! gzip -d "pubmed21n1001.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1001.xml.gz"
    rm pubmed21n1001.xml.gz
  fi
fi
if [ ! -f pubmed21n1002.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1002.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1002.xml.gz"
  if ! gzip -d "pubmed21n1002.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1002.xml.gz"
    rm pubmed21n1002.xml.gz
  fi
fi
if [ ! -f pubmed21n1003.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1003.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1003.xml.gz"
  if ! gzip -d "pubmed21n1003.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1003.xml.gz"
    rm pubmed21n1003.xml.gz
  fi
fi
if [ ! -f pubmed21n1004.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1004.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1004.xml.gz"
  if ! gzip -d "pubmed21n1004.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1004.xml.gz"
    rm pubmed21n1004.xml.gz
  fi
fi
if [ ! -f pubmed21n1005.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1005.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1005.xml.gz"
  if ! gzip -d "pubmed21n1005.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1005.xml.gz"
    rm pubmed21n1005.xml.gz
  fi
fi
if [ ! -f pubmed21n1006.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1006.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1006.xml.gz"
  if ! gzip -d "pubmed21n1006.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1006.xml.gz"
    rm pubmed21n1006.xml.gz
  fi
fi
if [ ! -f pubmed21n1007.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1007.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1007.xml.gz"
  if ! gzip -d "pubmed21n1007.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1007.xml.gz"
    rm pubmed21n1007.xml.gz
  fi
fi
if [ ! -f pubmed21n1008.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1008.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1008.xml.gz"
  if ! gzip -d "pubmed21n1008.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1008.xml.gz"
    rm pubmed21n1008.xml.gz
  fi
fi
if [ ! -f pubmed21n1009.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1009.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1009.xml.gz"
  if ! gzip -d "pubmed21n1009.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1009.xml.gz"
    rm pubmed21n1009.xml.gz
  fi
fi
if [ ! -f pubmed21n1010.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1010.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1010.xml.gz"
  if ! gzip -d "pubmed21n1010.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1010.xml.gz"
    rm pubmed21n1010.xml.gz
  fi
fi
if [ ! -f pubmed21n1011.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1011.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1011.xml.gz"
  if ! gzip -d "pubmed21n1011.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1011.xml.gz"
    rm pubmed21n1011.xml.gz
  fi
fi
if [ ! -f pubmed21n1012.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1012.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1012.xml.gz"
  if ! gzip -d "pubmed21n1012.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1012.xml.gz"
    rm pubmed21n1012.xml.gz
  fi
fi
if [ ! -f pubmed21n1013.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1013.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1013.xml.gz"
  if ! gzip -d "pubmed21n1013.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1013.xml.gz"
    rm pubmed21n1013.xml.gz
  fi
fi
if [ ! -f pubmed21n1014.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1014.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1014.xml.gz"
  if ! gzip -d "pubmed21n1014.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1014.xml.gz"
    rm pubmed21n1014.xml.gz
  fi
fi
if [ ! -f pubmed21n1015.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1015.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1015.xml.gz"
  if ! gzip -d "pubmed21n1015.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1015.xml.gz"
    rm pubmed21n1015.xml.gz
  fi
fi
if [ ! -f pubmed21n1016.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1016.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1016.xml.gz"
  if ! gzip -d "pubmed21n1016.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1016.xml.gz"
    rm pubmed21n1016.xml.gz
  fi
fi
if [ ! -f pubmed21n1017.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1017.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1017.xml.gz"
  if ! gzip -d "pubmed21n1017.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1017.xml.gz"
    rm pubmed21n1017.xml.gz
  fi
fi
if [ ! -f pubmed21n1018.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1018.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1018.xml.gz"
  if ! gzip -d "pubmed21n1018.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1018.xml.gz"
    rm pubmed21n1018.xml.gz
  fi
fi
if [ ! -f pubmed21n1019.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1019.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1019.xml.gz"
  if ! gzip -d "pubmed21n1019.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1019.xml.gz"
    rm pubmed21n1019.xml.gz
  fi
fi
if [ ! -f pubmed21n1020.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1020.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1020.xml.gz"
  if ! gzip -d "pubmed21n1020.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1020.xml.gz"
    rm pubmed21n1020.xml.gz
  fi
fi
if [ ! -f pubmed21n1021.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1021.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1021.xml.gz"
  if ! gzip -d "pubmed21n1021.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1021.xml.gz"
    rm pubmed21n1021.xml.gz
  fi
fi
if [ ! -f pubmed21n1022.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1022.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1022.xml.gz"
  if ! gzip -d "pubmed21n1022.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1022.xml.gz"
    rm pubmed21n1022.xml.gz
  fi
fi
if [ ! -f pubmed21n1023.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1023.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1023.xml.gz"
  if ! gzip -d "pubmed21n1023.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1023.xml.gz"
    rm pubmed21n1023.xml.gz
  fi
fi
if [ ! -f pubmed21n1024.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1024.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1024.xml.gz"
  if ! gzip -d "pubmed21n1024.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1024.xml.gz"
    rm pubmed21n1024.xml.gz
  fi
fi
if [ ! -f pubmed21n1025.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1025.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1025.xml.gz"
  if ! gzip -d "pubmed21n1025.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1025.xml.gz"
    rm pubmed21n1025.xml.gz
  fi
fi
if [ ! -f pubmed21n1026.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1026.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1026.xml.gz"
  if ! gzip -d "pubmed21n1026.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1026.xml.gz"
    rm pubmed21n1026.xml.gz
  fi
fi
if [ ! -f pubmed21n1027.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1027.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1027.xml.gz"
  if ! gzip -d "pubmed21n1027.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1027.xml.gz"
    rm pubmed21n1027.xml.gz
  fi
fi
if [ ! -f pubmed21n1028.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1028.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1028.xml.gz"
  if ! gzip -d "pubmed21n1028.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1028.xml.gz"
    rm pubmed21n1028.xml.gz
  fi
fi
if [ ! -f pubmed21n1029.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1029.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1029.xml.gz"
  if ! gzip -d "pubmed21n1029.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1029.xml.gz"
    rm pubmed21n1029.xml.gz
  fi
fi
if [ ! -f pubmed21n1030.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1030.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1030.xml.gz"
  if ! gzip -d "pubmed21n1030.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1030.xml.gz"
    rm pubmed21n1030.xml.gz
  fi
fi
if [ ! -f pubmed21n1031.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1031.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1031.xml.gz"
  if ! gzip -d "pubmed21n1031.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1031.xml.gz"
    rm pubmed21n1031.xml.gz
  fi
fi
if [ ! -f pubmed21n1032.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1032.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1032.xml.gz"
  if ! gzip -d "pubmed21n1032.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1032.xml.gz"
    rm pubmed21n1032.xml.gz
  fi
fi
if [ ! -f pubmed21n1033.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1033.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1033.xml.gz"
  if ! gzip -d "pubmed21n1033.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1033.xml.gz"
    rm pubmed21n1033.xml.gz
  fi
fi
if [ ! -f pubmed21n1034.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1034.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1034.xml.gz"
  if ! gzip -d "pubmed21n1034.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1034.xml.gz"
    rm pubmed21n1034.xml.gz
  fi
fi
if [ ! -f pubmed21n1035.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1035.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1035.xml.gz"
  if ! gzip -d "pubmed21n1035.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1035.xml.gz"
    rm pubmed21n1035.xml.gz
  fi
fi
if [ ! -f pubmed21n1036.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1036.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1036.xml.gz"
  if ! gzip -d "pubmed21n1036.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1036.xml.gz"
    rm pubmed21n1036.xml.gz
  fi
fi
if [ ! -f pubmed21n1037.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1037.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1037.xml.gz"
  if ! gzip -d "pubmed21n1037.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1037.xml.gz"
    rm pubmed21n1037.xml.gz
  fi
fi
if [ ! -f pubmed21n1038.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1038.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1038.xml.gz"
  if ! gzip -d "pubmed21n1038.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1038.xml.gz"
    rm pubmed21n1038.xml.gz
  fi
fi
if [ ! -f pubmed21n1039.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1039.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1039.xml.gz"
  if ! gzip -d "pubmed21n1039.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1039.xml.gz"
    rm pubmed21n1039.xml.gz
  fi
fi
if [ ! -f pubmed21n1040.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1040.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1040.xml.gz"
  if ! gzip -d "pubmed21n1040.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1040.xml.gz"
    rm pubmed21n1040.xml.gz
  fi
fi
if [ ! -f pubmed21n1041.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1041.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1041.xml.gz"
  if ! gzip -d "pubmed21n1041.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1041.xml.gz"
    rm pubmed21n1041.xml.gz
  fi
fi
if [ ! -f pubmed21n1042.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1042.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1042.xml.gz"
  if ! gzip -d "pubmed21n1042.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1042.xml.gz"
    rm pubmed21n1042.xml.gz
  fi
fi
if [ ! -f pubmed21n1043.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1043.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1043.xml.gz"
  if ! gzip -d "pubmed21n1043.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1043.xml.gz"
    rm pubmed21n1043.xml.gz
  fi
fi
if [ ! -f pubmed21n1044.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1044.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1044.xml.gz"
  if ! gzip -d "pubmed21n1044.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1044.xml.gz"
    rm pubmed21n1044.xml.gz
  fi
fi
if [ ! -f pubmed21n1045.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1045.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1045.xml.gz"
  if ! gzip -d "pubmed21n1045.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1045.xml.gz"
    rm pubmed21n1045.xml.gz
  fi
fi
if [ ! -f pubmed21n1046.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1046.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1046.xml.gz"
  if ! gzip -d "pubmed21n1046.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1046.xml.gz"
    rm pubmed21n1046.xml.gz
  fi
fi
if [ ! -f pubmed21n1047.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1047.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1047.xml.gz"
  if ! gzip -d "pubmed21n1047.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1047.xml.gz"
    rm pubmed21n1047.xml.gz
  fi
fi
if [ ! -f pubmed21n1048.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1048.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1048.xml.gz"
  if ! gzip -d "pubmed21n1048.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1048.xml.gz"
    rm pubmed21n1048.xml.gz
  fi
fi
if [ ! -f pubmed21n1049.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1049.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1049.xml.gz"
  if ! gzip -d "pubmed21n1049.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1049.xml.gz"
    rm pubmed21n1049.xml.gz
  fi
fi
if [ ! -f pubmed21n1050.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1050.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1050.xml.gz"
  if ! gzip -d "pubmed21n1050.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1050.xml.gz"
    rm pubmed21n1050.xml.gz
  fi
fi
if [ ! -f pubmed21n1051.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1051.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1051.xml.gz"
  if ! gzip -d "pubmed21n1051.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1051.xml.gz"
    rm pubmed21n1051.xml.gz
  fi
fi
if [ ! -f pubmed21n1052.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1052.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1052.xml.gz"
  if ! gzip -d "pubmed21n1052.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1052.xml.gz"
    rm pubmed21n1052.xml.gz
  fi
fi
if [ ! -f pubmed21n1053.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1053.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1053.xml.gz"
  if ! gzip -d "pubmed21n1053.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1053.xml.gz"
    rm pubmed21n1053.xml.gz
  fi
fi
if [ ! -f pubmed21n1054.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1054.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1054.xml.gz"
  if ! gzip -d "pubmed21n1054.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1054.xml.gz"
    rm pubmed21n1054.xml.gz
  fi
fi
if [ ! -f pubmed21n1055.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1055.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1055.xml.gz"
  if ! gzip -d "pubmed21n1055.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1055.xml.gz"
    rm pubmed21n1055.xml.gz
  fi
fi
if [ ! -f pubmed21n1056.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1056.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1056.xml.gz"
  if ! gzip -d "pubmed21n1056.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1056.xml.gz"
    rm pubmed21n1056.xml.gz
  fi
fi
if [ ! -f pubmed21n1057.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1057.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1057.xml.gz"
  if ! gzip -d "pubmed21n1057.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1057.xml.gz"
    rm pubmed21n1057.xml.gz
  fi
fi
if [ ! -f pubmed21n1058.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1058.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1058.xml.gz"
  if ! gzip -d "pubmed21n1058.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1058.xml.gz"
    rm pubmed21n1058.xml.gz
  fi
fi
if [ ! -f pubmed21n1059.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1059.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1059.xml.gz"
  if ! gzip -d "pubmed21n1059.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1059.xml.gz"
    rm pubmed21n1059.xml.gz
  fi
fi
if [ ! -f pubmed21n1060.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1060.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1060.xml.gz"
  if ! gzip -d "pubmed21n1060.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1060.xml.gz"
    rm pubmed21n1060.xml.gz
  fi
fi
if [ ! -f pubmed21n1061.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1061.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1061.xml.gz"
  if ! gzip -d "pubmed21n1061.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1061.xml.gz"
    rm pubmed21n1061.xml.gz
  fi
fi
if [ ! -f pubmed21n1062.xml ]; then
  curl -s --retry 9999 --retry-delay 3 --speed-limit 400000 --speed-time 10 --retry-max-time 0 -C - -o "pubmed21n1062.xml.gz" "ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed21n1062.xml.gz"
  if ! gzip -d "pubmed21n1062.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed21n1062.xml.gz"
    rm pubmed21n1062.xml.gz
  fi
fi
