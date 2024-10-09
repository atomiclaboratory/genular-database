#!/bin/sh


# Create data dir if doesn't exist
mkdir -p ./bulk
# Enter data dir
cd ./bulk
# Delete all data except sys files
# # rm  !(*.md|*.sh)

# Download Data and Extract it
if [ ! -f pubmed23n0001.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0001.xml.gz
  if ! gzip -d "pubmed23n0001.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0001.xml.gz"
    # rm pubmed23n0001.xml.gz
  fi
fi
if [ ! -f pubmed23n0002.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0002.xml.gz
  if ! gzip -d "pubmed23n0002.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0002.xml.gz"
    # rm pubmed23n0002.xml.gz
  fi
fi
if [ ! -f pubmed23n0003.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0003.xml.gz
  if ! gzip -d "pubmed23n0003.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0003.xml.gz"
    # rm pubmed23n0003.xml.gz
  fi
fi
if [ ! -f pubmed23n0004.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0004.xml.gz
  if ! gzip -d "pubmed23n0004.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0004.xml.gz"
    # rm pubmed23n0004.xml.gz
  fi
fi
if [ ! -f pubmed23n0005.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0005.xml.gz
  if ! gzip -d "pubmed23n0005.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0005.xml.gz"
    # rm pubmed23n0005.xml.gz
  fi
fi
if [ ! -f pubmed23n0006.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0006.xml.gz
  if ! gzip -d "pubmed23n0006.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0006.xml.gz"
    # rm pubmed23n0006.xml.gz
  fi
fi
if [ ! -f pubmed23n0007.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0007.xml.gz
  if ! gzip -d "pubmed23n0007.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0007.xml.gz"
    # rm pubmed23n0007.xml.gz
  fi
fi
if [ ! -f pubmed23n0008.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0008.xml.gz
  if ! gzip -d "pubmed23n0008.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0008.xml.gz"
    # rm pubmed23n0008.xml.gz
  fi
fi
if [ ! -f pubmed23n0009.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0009.xml.gz
  if ! gzip -d "pubmed23n0009.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0009.xml.gz"
    # rm pubmed23n0009.xml.gz
  fi
fi
if [ ! -f pubmed23n0010.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0010.xml.gz
  if ! gzip -d "pubmed23n0010.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0010.xml.gz"
    # rm pubmed23n0010.xml.gz
  fi
fi
if [ ! -f pubmed23n0011.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0011.xml.gz
  if ! gzip -d "pubmed23n0011.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0011.xml.gz"
    # rm pubmed23n0011.xml.gz
  fi
fi
if [ ! -f pubmed23n0012.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0012.xml.gz
  if ! gzip -d "pubmed23n0012.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0012.xml.gz"
    # rm pubmed23n0012.xml.gz
  fi
fi
if [ ! -f pubmed23n0013.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0013.xml.gz
  if ! gzip -d "pubmed23n0013.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0013.xml.gz"
    # rm pubmed23n0013.xml.gz
  fi
fi
if [ ! -f pubmed23n0014.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0014.xml.gz
  if ! gzip -d "pubmed23n0014.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0014.xml.gz"
    # rm pubmed23n0014.xml.gz
  fi
fi
if [ ! -f pubmed23n0015.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0015.xml.gz
  if ! gzip -d "pubmed23n0015.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0015.xml.gz"
    # rm pubmed23n0015.xml.gz
  fi
fi
if [ ! -f pubmed23n0016.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0016.xml.gz
  if ! gzip -d "pubmed23n0016.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0016.xml.gz"
    # rm pubmed23n0016.xml.gz
  fi
fi
if [ ! -f pubmed23n0017.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0017.xml.gz
  if ! gzip -d "pubmed23n0017.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0017.xml.gz"
    # rm pubmed23n0017.xml.gz
  fi
fi
if [ ! -f pubmed23n0018.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0018.xml.gz
  if ! gzip -d "pubmed23n0018.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0018.xml.gz"
    # rm pubmed23n0018.xml.gz
  fi
fi
if [ ! -f pubmed23n0019.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0019.xml.gz
  if ! gzip -d "pubmed23n0019.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0019.xml.gz"
    # rm pubmed23n0019.xml.gz
  fi
fi
if [ ! -f pubmed23n0020.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0020.xml.gz
  if ! gzip -d "pubmed23n0020.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0020.xml.gz"
    # rm pubmed23n0020.xml.gz
  fi
fi
if [ ! -f pubmed23n0021.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0021.xml.gz
  if ! gzip -d "pubmed23n0021.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0021.xml.gz"
    # rm pubmed23n0021.xml.gz
  fi
fi
if [ ! -f pubmed23n0022.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0022.xml.gz
  if ! gzip -d "pubmed23n0022.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0022.xml.gz"
    # rm pubmed23n0022.xml.gz
  fi
fi
if [ ! -f pubmed23n0023.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0023.xml.gz
  if ! gzip -d "pubmed23n0023.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0023.xml.gz"
    # rm pubmed23n0023.xml.gz
  fi
fi
if [ ! -f pubmed23n0024.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0024.xml.gz
  if ! gzip -d "pubmed23n0024.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0024.xml.gz"
    # rm pubmed23n0024.xml.gz
  fi
fi
if [ ! -f pubmed23n0025.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0025.xml.gz
  if ! gzip -d "pubmed23n0025.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0025.xml.gz"
    # rm pubmed23n0025.xml.gz
  fi
fi
if [ ! -f pubmed23n0026.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0026.xml.gz
  if ! gzip -d "pubmed23n0026.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0026.xml.gz"
    # rm pubmed23n0026.xml.gz
  fi
fi
if [ ! -f pubmed23n0027.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0027.xml.gz
  if ! gzip -d "pubmed23n0027.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0027.xml.gz"
    # rm pubmed23n0027.xml.gz
  fi
fi
if [ ! -f pubmed23n0028.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0028.xml.gz
  if ! gzip -d "pubmed23n0028.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0028.xml.gz"
    # rm pubmed23n0028.xml.gz
  fi
fi
if [ ! -f pubmed23n0029.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0029.xml.gz
  if ! gzip -d "pubmed23n0029.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0029.xml.gz"
    # rm pubmed23n0029.xml.gz
  fi
fi
if [ ! -f pubmed23n0030.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0030.xml.gz
  if ! gzip -d "pubmed23n0030.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0030.xml.gz"
    # rm pubmed23n0030.xml.gz
  fi
fi
if [ ! -f pubmed23n0031.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0031.xml.gz
  if ! gzip -d "pubmed23n0031.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0031.xml.gz"
    # rm pubmed23n0031.xml.gz
  fi
fi
if [ ! -f pubmed23n0032.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0032.xml.gz
  if ! gzip -d "pubmed23n0032.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0032.xml.gz"
    # rm pubmed23n0032.xml.gz
  fi
fi
if [ ! -f pubmed23n0033.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0033.xml.gz
  if ! gzip -d "pubmed23n0033.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0033.xml.gz"
    # rm pubmed23n0033.xml.gz
  fi
fi
if [ ! -f pubmed23n0034.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0034.xml.gz
  if ! gzip -d "pubmed23n0034.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0034.xml.gz"
    # rm pubmed23n0034.xml.gz
  fi
fi
if [ ! -f pubmed23n0035.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0035.xml.gz
  if ! gzip -d "pubmed23n0035.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0035.xml.gz"
    # rm pubmed23n0035.xml.gz
  fi
fi
if [ ! -f pubmed23n0036.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0036.xml.gz
  if ! gzip -d "pubmed23n0036.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0036.xml.gz"
    # rm pubmed23n0036.xml.gz
  fi
fi
if [ ! -f pubmed23n0037.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0037.xml.gz
  if ! gzip -d "pubmed23n0037.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0037.xml.gz"
    # rm pubmed23n0037.xml.gz
  fi
fi
if [ ! -f pubmed23n0038.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0038.xml.gz
  if ! gzip -d "pubmed23n0038.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0038.xml.gz"
    # rm pubmed23n0038.xml.gz
  fi
fi
if [ ! -f pubmed23n0039.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0039.xml.gz
  if ! gzip -d "pubmed23n0039.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0039.xml.gz"
    # rm pubmed23n0039.xml.gz
  fi
fi
if [ ! -f pubmed23n0040.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0040.xml.gz
  if ! gzip -d "pubmed23n0040.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0040.xml.gz"
    # rm pubmed23n0040.xml.gz
  fi
fi
if [ ! -f pubmed23n0041.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0041.xml.gz
  if ! gzip -d "pubmed23n0041.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0041.xml.gz"
    # rm pubmed23n0041.xml.gz
  fi
fi
if [ ! -f pubmed23n0042.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0042.xml.gz
  if ! gzip -d "pubmed23n0042.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0042.xml.gz"
    # rm pubmed23n0042.xml.gz
  fi
fi
if [ ! -f pubmed23n0043.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0043.xml.gz
  if ! gzip -d "pubmed23n0043.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0043.xml.gz"
    # rm pubmed23n0043.xml.gz
  fi
fi
if [ ! -f pubmed23n0044.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0044.xml.gz
  if ! gzip -d "pubmed23n0044.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0044.xml.gz"
    # rm pubmed23n0044.xml.gz
  fi
fi
if [ ! -f pubmed23n0045.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0045.xml.gz
  if ! gzip -d "pubmed23n0045.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0045.xml.gz"
    # rm pubmed23n0045.xml.gz
  fi
fi
if [ ! -f pubmed23n0046.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0046.xml.gz
  if ! gzip -d "pubmed23n0046.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0046.xml.gz"
    # rm pubmed23n0046.xml.gz
  fi
fi
if [ ! -f pubmed23n0047.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0047.xml.gz
  if ! gzip -d "pubmed23n0047.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0047.xml.gz"
    # rm pubmed23n0047.xml.gz
  fi
fi
if [ ! -f pubmed23n0048.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0048.xml.gz
  if ! gzip -d "pubmed23n0048.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0048.xml.gz"
    # rm pubmed23n0048.xml.gz
  fi
fi
if [ ! -f pubmed23n0049.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0049.xml.gz
  if ! gzip -d "pubmed23n0049.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0049.xml.gz"
    # rm pubmed23n0049.xml.gz
  fi
fi
if [ ! -f pubmed23n0050.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0050.xml.gz
  if ! gzip -d "pubmed23n0050.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0050.xml.gz"
    # rm pubmed23n0050.xml.gz
  fi
fi
if [ ! -f pubmed23n0051.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0051.xml.gz
  if ! gzip -d "pubmed23n0051.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0051.xml.gz"
    # rm pubmed23n0051.xml.gz
  fi
fi
if [ ! -f pubmed23n0052.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0052.xml.gz
  if ! gzip -d "pubmed23n0052.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0052.xml.gz"
    # rm pubmed23n0052.xml.gz
  fi
fi
if [ ! -f pubmed23n0053.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0053.xml.gz
  if ! gzip -d "pubmed23n0053.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0053.xml.gz"
    # rm pubmed23n0053.xml.gz
  fi
fi
if [ ! -f pubmed23n0054.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0054.xml.gz
  if ! gzip -d "pubmed23n0054.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0054.xml.gz"
    # rm pubmed23n0054.xml.gz
  fi
fi
if [ ! -f pubmed23n0055.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0055.xml.gz
  if ! gzip -d "pubmed23n0055.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0055.xml.gz"
    # rm pubmed23n0055.xml.gz
  fi
fi
if [ ! -f pubmed23n0056.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0056.xml.gz
  if ! gzip -d "pubmed23n0056.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0056.xml.gz"
    # rm pubmed23n0056.xml.gz
  fi
fi
if [ ! -f pubmed23n0057.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0057.xml.gz
  if ! gzip -d "pubmed23n0057.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0057.xml.gz"
    # rm pubmed23n0057.xml.gz
  fi
fi
if [ ! -f pubmed23n0058.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0058.xml.gz
  if ! gzip -d "pubmed23n0058.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0058.xml.gz"
    # rm pubmed23n0058.xml.gz
  fi
fi
if [ ! -f pubmed23n0059.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0059.xml.gz
  if ! gzip -d "pubmed23n0059.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0059.xml.gz"
    # rm pubmed23n0059.xml.gz
  fi
fi
if [ ! -f pubmed23n0060.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0060.xml.gz
  if ! gzip -d "pubmed23n0060.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0060.xml.gz"
    # rm pubmed23n0060.xml.gz
  fi
fi
if [ ! -f pubmed23n0061.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0061.xml.gz
  if ! gzip -d "pubmed23n0061.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0061.xml.gz"
    # rm pubmed23n0061.xml.gz
  fi
fi
if [ ! -f pubmed23n0062.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0062.xml.gz
  if ! gzip -d "pubmed23n0062.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0062.xml.gz"
    # rm pubmed23n0062.xml.gz
  fi
fi
if [ ! -f pubmed23n0063.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0063.xml.gz
  if ! gzip -d "pubmed23n0063.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0063.xml.gz"
    # rm pubmed23n0063.xml.gz
  fi
fi
if [ ! -f pubmed23n0064.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0064.xml.gz
  if ! gzip -d "pubmed23n0064.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0064.xml.gz"
    # rm pubmed23n0064.xml.gz
  fi
fi
if [ ! -f pubmed23n0065.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0065.xml.gz
  if ! gzip -d "pubmed23n0065.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0065.xml.gz"
    # rm pubmed23n0065.xml.gz
  fi
fi
if [ ! -f pubmed23n0066.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0066.xml.gz
  if ! gzip -d "pubmed23n0066.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0066.xml.gz"
    # rm pubmed23n0066.xml.gz
  fi
fi
if [ ! -f pubmed23n0067.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0067.xml.gz
  if ! gzip -d "pubmed23n0067.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0067.xml.gz"
    # rm pubmed23n0067.xml.gz
  fi
fi
if [ ! -f pubmed23n0068.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0068.xml.gz
  if ! gzip -d "pubmed23n0068.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0068.xml.gz"
    # rm pubmed23n0068.xml.gz
  fi
fi
if [ ! -f pubmed23n0069.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0069.xml.gz
  if ! gzip -d "pubmed23n0069.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0069.xml.gz"
    # rm pubmed23n0069.xml.gz
  fi
fi
if [ ! -f pubmed23n0070.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0070.xml.gz
  if ! gzip -d "pubmed23n0070.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0070.xml.gz"
    # rm pubmed23n0070.xml.gz
  fi
fi
if [ ! -f pubmed23n0071.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0071.xml.gz
  if ! gzip -d "pubmed23n0071.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0071.xml.gz"
    # rm pubmed23n0071.xml.gz
  fi
fi
if [ ! -f pubmed23n0072.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0072.xml.gz
  if ! gzip -d "pubmed23n0072.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0072.xml.gz"
    # rm pubmed23n0072.xml.gz
  fi
fi
if [ ! -f pubmed23n0073.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0073.xml.gz
  if ! gzip -d "pubmed23n0073.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0073.xml.gz"
    # rm pubmed23n0073.xml.gz
  fi
fi
if [ ! -f pubmed23n0074.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0074.xml.gz
  if ! gzip -d "pubmed23n0074.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0074.xml.gz"
    # rm pubmed23n0074.xml.gz
  fi
fi
if [ ! -f pubmed23n0075.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0075.xml.gz
  if ! gzip -d "pubmed23n0075.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0075.xml.gz"
    # rm pubmed23n0075.xml.gz
  fi
fi
if [ ! -f pubmed23n0076.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0076.xml.gz
  if ! gzip -d "pubmed23n0076.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0076.xml.gz"
    # rm pubmed23n0076.xml.gz
  fi
fi
if [ ! -f pubmed23n0077.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0077.xml.gz
  if ! gzip -d "pubmed23n0077.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0077.xml.gz"
    # rm pubmed23n0077.xml.gz
  fi
fi
if [ ! -f pubmed23n0078.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0078.xml.gz
  if ! gzip -d "pubmed23n0078.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0078.xml.gz"
    # rm pubmed23n0078.xml.gz
  fi
fi
if [ ! -f pubmed23n0079.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0079.xml.gz
  if ! gzip -d "pubmed23n0079.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0079.xml.gz"
    # rm pubmed23n0079.xml.gz
  fi
fi
if [ ! -f pubmed23n0080.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0080.xml.gz
  if ! gzip -d "pubmed23n0080.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0080.xml.gz"
    # rm pubmed23n0080.xml.gz
  fi
fi
if [ ! -f pubmed23n0081.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0081.xml.gz
  if ! gzip -d "pubmed23n0081.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0081.xml.gz"
    # rm pubmed23n0081.xml.gz
  fi
fi
if [ ! -f pubmed23n0082.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0082.xml.gz
  if ! gzip -d "pubmed23n0082.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0082.xml.gz"
    # rm pubmed23n0082.xml.gz
  fi
fi
if [ ! -f pubmed23n0083.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0083.xml.gz
  if ! gzip -d "pubmed23n0083.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0083.xml.gz"
    # rm pubmed23n0083.xml.gz
  fi
fi
if [ ! -f pubmed23n0084.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0084.xml.gz
  if ! gzip -d "pubmed23n0084.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0084.xml.gz"
    # rm pubmed23n0084.xml.gz
  fi
fi
if [ ! -f pubmed23n0085.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0085.xml.gz
  if ! gzip -d "pubmed23n0085.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0085.xml.gz"
    # rm pubmed23n0085.xml.gz
  fi
fi
if [ ! -f pubmed23n0086.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0086.xml.gz
  if ! gzip -d "pubmed23n0086.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0086.xml.gz"
    # rm pubmed23n0086.xml.gz
  fi
fi
if [ ! -f pubmed23n0087.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0087.xml.gz
  if ! gzip -d "pubmed23n0087.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0087.xml.gz"
    # rm pubmed23n0087.xml.gz
  fi
fi
if [ ! -f pubmed23n0088.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0088.xml.gz
  if ! gzip -d "pubmed23n0088.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0088.xml.gz"
    # rm pubmed23n0088.xml.gz
  fi
fi
if [ ! -f pubmed23n0089.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0089.xml.gz
  if ! gzip -d "pubmed23n0089.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0089.xml.gz"
    # rm pubmed23n0089.xml.gz
  fi
fi
if [ ! -f pubmed23n0090.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0090.xml.gz
  if ! gzip -d "pubmed23n0090.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0090.xml.gz"
    # rm pubmed23n0090.xml.gz
  fi
fi
if [ ! -f pubmed23n0091.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0091.xml.gz
  if ! gzip -d "pubmed23n0091.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0091.xml.gz"
    # rm pubmed23n0091.xml.gz
  fi
fi
if [ ! -f pubmed23n0092.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0092.xml.gz
  if ! gzip -d "pubmed23n0092.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0092.xml.gz"
    # rm pubmed23n0092.xml.gz
  fi
fi
if [ ! -f pubmed23n0093.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0093.xml.gz
  if ! gzip -d "pubmed23n0093.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0093.xml.gz"
    # rm pubmed23n0093.xml.gz
  fi
fi
if [ ! -f pubmed23n0094.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0094.xml.gz
  if ! gzip -d "pubmed23n0094.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0094.xml.gz"
    # rm pubmed23n0094.xml.gz
  fi
fi
if [ ! -f pubmed23n0095.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0095.xml.gz
  if ! gzip -d "pubmed23n0095.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0095.xml.gz"
    # rm pubmed23n0095.xml.gz
  fi
fi
if [ ! -f pubmed23n0096.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0096.xml.gz
  if ! gzip -d "pubmed23n0096.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0096.xml.gz"
    # rm pubmed23n0096.xml.gz
  fi
fi
if [ ! -f pubmed23n0097.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0097.xml.gz
  if ! gzip -d "pubmed23n0097.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0097.xml.gz"
    # rm pubmed23n0097.xml.gz
  fi
fi
if [ ! -f pubmed23n0098.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0098.xml.gz
  if ! gzip -d "pubmed23n0098.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0098.xml.gz"
    # rm pubmed23n0098.xml.gz
  fi
fi
if [ ! -f pubmed23n0099.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0099.xml.gz
  if ! gzip -d "pubmed23n0099.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0099.xml.gz"
    # rm pubmed23n0099.xml.gz
  fi
fi
if [ ! -f pubmed23n0100.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0100.xml.gz
  if ! gzip -d "pubmed23n0100.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0100.xml.gz"
    # rm pubmed23n0100.xml.gz
  fi
fi
if [ ! -f pubmed23n0101.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0101.xml.gz
  if ! gzip -d "pubmed23n0101.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0101.xml.gz"
    # rm pubmed23n0101.xml.gz
  fi
fi
if [ ! -f pubmed23n0102.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0102.xml.gz
  if ! gzip -d "pubmed23n0102.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0102.xml.gz"
    # rm pubmed23n0102.xml.gz
  fi
fi
if [ ! -f pubmed23n0103.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0103.xml.gz
  if ! gzip -d "pubmed23n0103.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0103.xml.gz"
    # rm pubmed23n0103.xml.gz
  fi
fi
if [ ! -f pubmed23n0104.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0104.xml.gz
  if ! gzip -d "pubmed23n0104.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0104.xml.gz"
    # rm pubmed23n0104.xml.gz
  fi
fi
if [ ! -f pubmed23n0105.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0105.xml.gz
  if ! gzip -d "pubmed23n0105.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0105.xml.gz"
    # rm pubmed23n0105.xml.gz
  fi
fi
if [ ! -f pubmed23n0106.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0106.xml.gz
  if ! gzip -d "pubmed23n0106.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0106.xml.gz"
    # rm pubmed23n0106.xml.gz
  fi
fi
if [ ! -f pubmed23n0107.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0107.xml.gz
  if ! gzip -d "pubmed23n0107.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0107.xml.gz"
    # rm pubmed23n0107.xml.gz
  fi
fi
if [ ! -f pubmed23n0108.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0108.xml.gz
  if ! gzip -d "pubmed23n0108.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0108.xml.gz"
    # rm pubmed23n0108.xml.gz
  fi
fi
if [ ! -f pubmed23n0109.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0109.xml.gz
  if ! gzip -d "pubmed23n0109.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0109.xml.gz"
    # rm pubmed23n0109.xml.gz
  fi
fi
if [ ! -f pubmed23n0110.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0110.xml.gz
  if ! gzip -d "pubmed23n0110.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0110.xml.gz"
    # rm pubmed23n0110.xml.gz
  fi
fi
if [ ! -f pubmed23n0111.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0111.xml.gz
  if ! gzip -d "pubmed23n0111.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0111.xml.gz"
    # rm pubmed23n0111.xml.gz
  fi
fi
if [ ! -f pubmed23n0112.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0112.xml.gz
  if ! gzip -d "pubmed23n0112.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0112.xml.gz"
    # rm pubmed23n0112.xml.gz
  fi
fi
if [ ! -f pubmed23n0113.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0113.xml.gz
  if ! gzip -d "pubmed23n0113.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0113.xml.gz"
    # rm pubmed23n0113.xml.gz
  fi
fi
if [ ! -f pubmed23n0114.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0114.xml.gz
  if ! gzip -d "pubmed23n0114.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0114.xml.gz"
    # rm pubmed23n0114.xml.gz
  fi
fi
if [ ! -f pubmed23n0115.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0115.xml.gz
  if ! gzip -d "pubmed23n0115.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0115.xml.gz"
    # rm pubmed23n0115.xml.gz
  fi
fi
if [ ! -f pubmed23n0116.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0116.xml.gz
  if ! gzip -d "pubmed23n0116.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0116.xml.gz"
    # rm pubmed23n0116.xml.gz
  fi
fi
if [ ! -f pubmed23n0117.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0117.xml.gz
  if ! gzip -d "pubmed23n0117.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0117.xml.gz"
    # rm pubmed23n0117.xml.gz
  fi
fi
if [ ! -f pubmed23n0118.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0118.xml.gz
  if ! gzip -d "pubmed23n0118.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0118.xml.gz"
    # rm pubmed23n0118.xml.gz
  fi
fi
if [ ! -f pubmed23n0119.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0119.xml.gz
  if ! gzip -d "pubmed23n0119.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0119.xml.gz"
    # rm pubmed23n0119.xml.gz
  fi
fi
if [ ! -f pubmed23n0120.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0120.xml.gz
  if ! gzip -d "pubmed23n0120.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0120.xml.gz"
    # rm pubmed23n0120.xml.gz
  fi
fi
if [ ! -f pubmed23n0121.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0121.xml.gz
  if ! gzip -d "pubmed23n0121.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0121.xml.gz"
    # rm pubmed23n0121.xml.gz
  fi
fi
if [ ! -f pubmed23n0122.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0122.xml.gz
  if ! gzip -d "pubmed23n0122.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0122.xml.gz"
    # rm pubmed23n0122.xml.gz
  fi
fi
if [ ! -f pubmed23n0123.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0123.xml.gz
  if ! gzip -d "pubmed23n0123.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0123.xml.gz"
    # rm pubmed23n0123.xml.gz
  fi
fi
if [ ! -f pubmed23n0124.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0124.xml.gz
  if ! gzip -d "pubmed23n0124.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0124.xml.gz"
    # rm pubmed23n0124.xml.gz
  fi
fi
if [ ! -f pubmed23n0125.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0125.xml.gz
  if ! gzip -d "pubmed23n0125.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0125.xml.gz"
    # rm pubmed23n0125.xml.gz
  fi
fi
if [ ! -f pubmed23n0126.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0126.xml.gz
  if ! gzip -d "pubmed23n0126.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0126.xml.gz"
    # rm pubmed23n0126.xml.gz
  fi
fi
if [ ! -f pubmed23n0127.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0127.xml.gz
  if ! gzip -d "pubmed23n0127.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0127.xml.gz"
    # rm pubmed23n0127.xml.gz
  fi
fi
if [ ! -f pubmed23n0128.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0128.xml.gz
  if ! gzip -d "pubmed23n0128.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0128.xml.gz"
    # rm pubmed23n0128.xml.gz
  fi
fi
if [ ! -f pubmed23n0129.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0129.xml.gz
  if ! gzip -d "pubmed23n0129.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0129.xml.gz"
    # rm pubmed23n0129.xml.gz
  fi
fi
if [ ! -f pubmed23n0130.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0130.xml.gz
  if ! gzip -d "pubmed23n0130.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0130.xml.gz"
    # rm pubmed23n0130.xml.gz
  fi
fi
if [ ! -f pubmed23n0131.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0131.xml.gz
  if ! gzip -d "pubmed23n0131.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0131.xml.gz"
    # rm pubmed23n0131.xml.gz
  fi
fi
if [ ! -f pubmed23n0132.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0132.xml.gz
  if ! gzip -d "pubmed23n0132.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0132.xml.gz"
    # rm pubmed23n0132.xml.gz
  fi
fi
if [ ! -f pubmed23n0133.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0133.xml.gz
  if ! gzip -d "pubmed23n0133.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0133.xml.gz"
    # rm pubmed23n0133.xml.gz
  fi
fi
if [ ! -f pubmed23n0134.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0134.xml.gz
  if ! gzip -d "pubmed23n0134.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0134.xml.gz"
    # rm pubmed23n0134.xml.gz
  fi
fi
if [ ! -f pubmed23n0135.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0135.xml.gz
  if ! gzip -d "pubmed23n0135.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0135.xml.gz"
    # rm pubmed23n0135.xml.gz
  fi
fi
if [ ! -f pubmed23n0136.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0136.xml.gz
  if ! gzip -d "pubmed23n0136.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0136.xml.gz"
    # rm pubmed23n0136.xml.gz
  fi
fi
if [ ! -f pubmed23n0137.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0137.xml.gz
  if ! gzip -d "pubmed23n0137.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0137.xml.gz"
    # rm pubmed23n0137.xml.gz
  fi
fi
if [ ! -f pubmed23n0138.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0138.xml.gz
  if ! gzip -d "pubmed23n0138.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0138.xml.gz"
    # rm pubmed23n0138.xml.gz
  fi
fi
if [ ! -f pubmed23n0139.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0139.xml.gz
  if ! gzip -d "pubmed23n0139.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0139.xml.gz"
    # rm pubmed23n0139.xml.gz
  fi
fi
if [ ! -f pubmed23n0140.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0140.xml.gz
  if ! gzip -d "pubmed23n0140.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0140.xml.gz"
    # rm pubmed23n0140.xml.gz
  fi
fi
if [ ! -f pubmed23n0141.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0141.xml.gz
  if ! gzip -d "pubmed23n0141.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0141.xml.gz"
    # rm pubmed23n0141.xml.gz
  fi
fi
if [ ! -f pubmed23n0142.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0142.xml.gz
  if ! gzip -d "pubmed23n0142.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0142.xml.gz"
    # rm pubmed23n0142.xml.gz
  fi
fi
if [ ! -f pubmed23n0143.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0143.xml.gz
  if ! gzip -d "pubmed23n0143.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0143.xml.gz"
    # rm pubmed23n0143.xml.gz
  fi
fi
if [ ! -f pubmed23n0144.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0144.xml.gz
  if ! gzip -d "pubmed23n0144.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0144.xml.gz"
    # rm pubmed23n0144.xml.gz
  fi
fi
if [ ! -f pubmed23n0145.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0145.xml.gz
  if ! gzip -d "pubmed23n0145.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0145.xml.gz"
    # rm pubmed23n0145.xml.gz
  fi
fi
if [ ! -f pubmed23n0146.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0146.xml.gz
  if ! gzip -d "pubmed23n0146.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0146.xml.gz"
    # rm pubmed23n0146.xml.gz
  fi
fi
if [ ! -f pubmed23n0147.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0147.xml.gz
  if ! gzip -d "pubmed23n0147.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0147.xml.gz"
    # rm pubmed23n0147.xml.gz
  fi
fi
if [ ! -f pubmed23n0148.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0148.xml.gz
  if ! gzip -d "pubmed23n0148.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0148.xml.gz"
    # rm pubmed23n0148.xml.gz
  fi
fi
if [ ! -f pubmed23n0149.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0149.xml.gz
  if ! gzip -d "pubmed23n0149.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0149.xml.gz"
    # rm pubmed23n0149.xml.gz
  fi
fi
if [ ! -f pubmed23n0150.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0150.xml.gz
  if ! gzip -d "pubmed23n0150.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0150.xml.gz"
    # rm pubmed23n0150.xml.gz
  fi
fi
if [ ! -f pubmed23n0151.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0151.xml.gz
  if ! gzip -d "pubmed23n0151.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0151.xml.gz"
    # rm pubmed23n0151.xml.gz
  fi
fi
if [ ! -f pubmed23n0152.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0152.xml.gz
  if ! gzip -d "pubmed23n0152.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0152.xml.gz"
    # rm pubmed23n0152.xml.gz
  fi
fi
if [ ! -f pubmed23n0153.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0153.xml.gz
  if ! gzip -d "pubmed23n0153.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0153.xml.gz"
    # rm pubmed23n0153.xml.gz
  fi
fi
if [ ! -f pubmed23n0154.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0154.xml.gz
  if ! gzip -d "pubmed23n0154.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0154.xml.gz"
    # rm pubmed23n0154.xml.gz
  fi
fi
if [ ! -f pubmed23n0155.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0155.xml.gz
  if ! gzip -d "pubmed23n0155.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0155.xml.gz"
    # rm pubmed23n0155.xml.gz
  fi
fi
if [ ! -f pubmed23n0156.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0156.xml.gz
  if ! gzip -d "pubmed23n0156.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0156.xml.gz"
    # rm pubmed23n0156.xml.gz
  fi
fi
if [ ! -f pubmed23n0157.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0157.xml.gz
  if ! gzip -d "pubmed23n0157.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0157.xml.gz"
    # rm pubmed23n0157.xml.gz
  fi
fi
if [ ! -f pubmed23n0158.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0158.xml.gz
  if ! gzip -d "pubmed23n0158.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0158.xml.gz"
    # rm pubmed23n0158.xml.gz
  fi
fi
if [ ! -f pubmed23n0159.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0159.xml.gz
  if ! gzip -d "pubmed23n0159.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0159.xml.gz"
    # rm pubmed23n0159.xml.gz
  fi
fi
if [ ! -f pubmed23n0160.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0160.xml.gz
  if ! gzip -d "pubmed23n0160.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0160.xml.gz"
    # rm pubmed23n0160.xml.gz
  fi
fi
if [ ! -f pubmed23n0161.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0161.xml.gz
  if ! gzip -d "pubmed23n0161.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0161.xml.gz"
    # rm pubmed23n0161.xml.gz
  fi
fi
if [ ! -f pubmed23n0162.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0162.xml.gz
  if ! gzip -d "pubmed23n0162.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0162.xml.gz"
    # rm pubmed23n0162.xml.gz
  fi
fi
if [ ! -f pubmed23n0163.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0163.xml.gz
  if ! gzip -d "pubmed23n0163.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0163.xml.gz"
    # rm pubmed23n0163.xml.gz
  fi
fi
if [ ! -f pubmed23n0164.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0164.xml.gz
  if ! gzip -d "pubmed23n0164.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0164.xml.gz"
    # rm pubmed23n0164.xml.gz
  fi
fi
if [ ! -f pubmed23n0165.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0165.xml.gz
  if ! gzip -d "pubmed23n0165.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0165.xml.gz"
    # rm pubmed23n0165.xml.gz
  fi
fi
if [ ! -f pubmed23n0166.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0166.xml.gz
  if ! gzip -d "pubmed23n0166.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0166.xml.gz"
    # rm pubmed23n0166.xml.gz
  fi
fi
if [ ! -f pubmed23n0167.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0167.xml.gz
  if ! gzip -d "pubmed23n0167.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0167.xml.gz"
    # rm pubmed23n0167.xml.gz
  fi
fi
if [ ! -f pubmed23n0168.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0168.xml.gz
  if ! gzip -d "pubmed23n0168.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0168.xml.gz"
    # rm pubmed23n0168.xml.gz
  fi
fi
if [ ! -f pubmed23n0169.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0169.xml.gz
  if ! gzip -d "pubmed23n0169.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0169.xml.gz"
    # rm pubmed23n0169.xml.gz
  fi
fi
if [ ! -f pubmed23n0170.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0170.xml.gz
  if ! gzip -d "pubmed23n0170.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0170.xml.gz"
    # rm pubmed23n0170.xml.gz
  fi
fi
if [ ! -f pubmed23n0171.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0171.xml.gz
  if ! gzip -d "pubmed23n0171.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0171.xml.gz"
    # rm pubmed23n0171.xml.gz
  fi
fi
if [ ! -f pubmed23n0172.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0172.xml.gz
  if ! gzip -d "pubmed23n0172.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0172.xml.gz"
    # rm pubmed23n0172.xml.gz
  fi
fi
if [ ! -f pubmed23n0173.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0173.xml.gz
  if ! gzip -d "pubmed23n0173.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0173.xml.gz"
    # rm pubmed23n0173.xml.gz
  fi
fi
if [ ! -f pubmed23n0174.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0174.xml.gz
  if ! gzip -d "pubmed23n0174.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0174.xml.gz"
    # rm pubmed23n0174.xml.gz
  fi
fi
if [ ! -f pubmed23n0175.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0175.xml.gz
  if ! gzip -d "pubmed23n0175.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0175.xml.gz"
    # rm pubmed23n0175.xml.gz
  fi
fi
if [ ! -f pubmed23n0176.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0176.xml.gz
  if ! gzip -d "pubmed23n0176.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0176.xml.gz"
    # rm pubmed23n0176.xml.gz
  fi
fi
if [ ! -f pubmed23n0177.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0177.xml.gz
  if ! gzip -d "pubmed23n0177.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0177.xml.gz"
    # rm pubmed23n0177.xml.gz
  fi
fi
if [ ! -f pubmed23n0178.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0178.xml.gz
  if ! gzip -d "pubmed23n0178.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0178.xml.gz"
    # rm pubmed23n0178.xml.gz
  fi
fi
if [ ! -f pubmed23n0179.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0179.xml.gz
  if ! gzip -d "pubmed23n0179.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0179.xml.gz"
    # rm pubmed23n0179.xml.gz
  fi
fi
if [ ! -f pubmed23n0180.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0180.xml.gz
  if ! gzip -d "pubmed23n0180.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0180.xml.gz"
    # rm pubmed23n0180.xml.gz
  fi
fi
if [ ! -f pubmed23n0181.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0181.xml.gz
  if ! gzip -d "pubmed23n0181.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0181.xml.gz"
    # rm pubmed23n0181.xml.gz
  fi
fi
if [ ! -f pubmed23n0182.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0182.xml.gz
  if ! gzip -d "pubmed23n0182.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0182.xml.gz"
    # rm pubmed23n0182.xml.gz
  fi
fi
if [ ! -f pubmed23n0183.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0183.xml.gz
  if ! gzip -d "pubmed23n0183.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0183.xml.gz"
    # rm pubmed23n0183.xml.gz
  fi
fi
if [ ! -f pubmed23n0184.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0184.xml.gz
  if ! gzip -d "pubmed23n0184.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0184.xml.gz"
    # rm pubmed23n0184.xml.gz
  fi
fi
if [ ! -f pubmed23n0185.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0185.xml.gz
  if ! gzip -d "pubmed23n0185.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0185.xml.gz"
    # rm pubmed23n0185.xml.gz
  fi
fi
if [ ! -f pubmed23n0186.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0186.xml.gz
  if ! gzip -d "pubmed23n0186.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0186.xml.gz"
    # rm pubmed23n0186.xml.gz
  fi
fi
if [ ! -f pubmed23n0187.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0187.xml.gz
  if ! gzip -d "pubmed23n0187.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0187.xml.gz"
    # rm pubmed23n0187.xml.gz
  fi
fi
if [ ! -f pubmed23n0188.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0188.xml.gz
  if ! gzip -d "pubmed23n0188.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0188.xml.gz"
    # rm pubmed23n0188.xml.gz
  fi
fi
if [ ! -f pubmed23n0189.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0189.xml.gz
  if ! gzip -d "pubmed23n0189.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0189.xml.gz"
    # rm pubmed23n0189.xml.gz
  fi
fi
if [ ! -f pubmed23n0190.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0190.xml.gz
  if ! gzip -d "pubmed23n0190.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0190.xml.gz"
    # rm pubmed23n0190.xml.gz
  fi
fi
if [ ! -f pubmed23n0191.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0191.xml.gz
  if ! gzip -d "pubmed23n0191.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0191.xml.gz"
    # rm pubmed23n0191.xml.gz
  fi
fi
if [ ! -f pubmed23n0192.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0192.xml.gz
  if ! gzip -d "pubmed23n0192.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0192.xml.gz"
    # rm pubmed23n0192.xml.gz
  fi
fi
if [ ! -f pubmed23n0193.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0193.xml.gz
  if ! gzip -d "pubmed23n0193.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0193.xml.gz"
    # rm pubmed23n0193.xml.gz
  fi
fi
if [ ! -f pubmed23n0194.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0194.xml.gz
  if ! gzip -d "pubmed23n0194.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0194.xml.gz"
    # rm pubmed23n0194.xml.gz
  fi
fi
if [ ! -f pubmed23n0195.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0195.xml.gz
  if ! gzip -d "pubmed23n0195.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0195.xml.gz"
    # rm pubmed23n0195.xml.gz
  fi
fi
if [ ! -f pubmed23n0196.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0196.xml.gz
  if ! gzip -d "pubmed23n0196.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0196.xml.gz"
    # rm pubmed23n0196.xml.gz
  fi
fi
if [ ! -f pubmed23n0197.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0197.xml.gz
  if ! gzip -d "pubmed23n0197.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0197.xml.gz"
    # rm pubmed23n0197.xml.gz
  fi
fi
if [ ! -f pubmed23n0198.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0198.xml.gz
  if ! gzip -d "pubmed23n0198.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0198.xml.gz"
    # rm pubmed23n0198.xml.gz
  fi
fi
if [ ! -f pubmed23n0199.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0199.xml.gz
  if ! gzip -d "pubmed23n0199.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0199.xml.gz"
    # rm pubmed23n0199.xml.gz
  fi
fi
if [ ! -f pubmed23n0200.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0200.xml.gz
  if ! gzip -d "pubmed23n0200.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0200.xml.gz"
    # rm pubmed23n0200.xml.gz
  fi
fi
if [ ! -f pubmed23n0201.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0201.xml.gz
  if ! gzip -d "pubmed23n0201.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0201.xml.gz"
    # rm pubmed23n0201.xml.gz
  fi
fi
if [ ! -f pubmed23n0202.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0202.xml.gz
  if ! gzip -d "pubmed23n0202.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0202.xml.gz"
    # rm pubmed23n0202.xml.gz
  fi
fi
if [ ! -f pubmed23n0203.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0203.xml.gz
  if ! gzip -d "pubmed23n0203.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0203.xml.gz"
    # rm pubmed23n0203.xml.gz
  fi
fi
if [ ! -f pubmed23n0204.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0204.xml.gz
  if ! gzip -d "pubmed23n0204.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0204.xml.gz"
    # rm pubmed23n0204.xml.gz
  fi
fi
if [ ! -f pubmed23n0205.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0205.xml.gz
  if ! gzip -d "pubmed23n0205.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0205.xml.gz"
    # rm pubmed23n0205.xml.gz
  fi
fi
if [ ! -f pubmed23n0206.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0206.xml.gz
  if ! gzip -d "pubmed23n0206.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0206.xml.gz"
    # rm pubmed23n0206.xml.gz
  fi
fi
if [ ! -f pubmed23n0207.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0207.xml.gz
  if ! gzip -d "pubmed23n0207.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0207.xml.gz"
    # rm pubmed23n0207.xml.gz
  fi
fi
if [ ! -f pubmed23n0208.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0208.xml.gz
  if ! gzip -d "pubmed23n0208.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0208.xml.gz"
    # rm pubmed23n0208.xml.gz
  fi
fi
if [ ! -f pubmed23n0209.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0209.xml.gz
  if ! gzip -d "pubmed23n0209.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0209.xml.gz"
    # rm pubmed23n0209.xml.gz
  fi
fi
if [ ! -f pubmed23n0210.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0210.xml.gz
  if ! gzip -d "pubmed23n0210.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0210.xml.gz"
    # rm pubmed23n0210.xml.gz
  fi
fi
if [ ! -f pubmed23n0211.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0211.xml.gz
  if ! gzip -d "pubmed23n0211.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0211.xml.gz"
    # rm pubmed23n0211.xml.gz
  fi
fi
if [ ! -f pubmed23n0212.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0212.xml.gz
  if ! gzip -d "pubmed23n0212.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0212.xml.gz"
    # rm pubmed23n0212.xml.gz
  fi
fi
if [ ! -f pubmed23n0213.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0213.xml.gz
  if ! gzip -d "pubmed23n0213.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0213.xml.gz"
    # rm pubmed23n0213.xml.gz
  fi
fi
if [ ! -f pubmed23n0214.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0214.xml.gz
  if ! gzip -d "pubmed23n0214.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0214.xml.gz"
    # rm pubmed23n0214.xml.gz
  fi
fi
if [ ! -f pubmed23n0215.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0215.xml.gz
  if ! gzip -d "pubmed23n0215.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0215.xml.gz"
    # rm pubmed23n0215.xml.gz
  fi
fi
if [ ! -f pubmed23n0216.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0216.xml.gz
  if ! gzip -d "pubmed23n0216.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0216.xml.gz"
    # rm pubmed23n0216.xml.gz
  fi
fi
if [ ! -f pubmed23n0217.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0217.xml.gz
  if ! gzip -d "pubmed23n0217.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0217.xml.gz"
    # rm pubmed23n0217.xml.gz
  fi
fi
if [ ! -f pubmed23n0218.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0218.xml.gz
  if ! gzip -d "pubmed23n0218.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0218.xml.gz"
    # rm pubmed23n0218.xml.gz
  fi
fi
if [ ! -f pubmed23n0219.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0219.xml.gz
  if ! gzip -d "pubmed23n0219.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0219.xml.gz"
    # rm pubmed23n0219.xml.gz
  fi
fi
if [ ! -f pubmed23n0220.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0220.xml.gz
  if ! gzip -d "pubmed23n0220.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0220.xml.gz"
    # rm pubmed23n0220.xml.gz
  fi
fi
if [ ! -f pubmed23n0221.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0221.xml.gz
  if ! gzip -d "pubmed23n0221.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0221.xml.gz"
    # rm pubmed23n0221.xml.gz
  fi
fi
if [ ! -f pubmed23n0222.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0222.xml.gz
  if ! gzip -d "pubmed23n0222.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0222.xml.gz"
    # rm pubmed23n0222.xml.gz
  fi
fi
if [ ! -f pubmed23n0223.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0223.xml.gz
  if ! gzip -d "pubmed23n0223.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0223.xml.gz"
    # rm pubmed23n0223.xml.gz
  fi
fi
if [ ! -f pubmed23n0224.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0224.xml.gz
  if ! gzip -d "pubmed23n0224.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0224.xml.gz"
    # rm pubmed23n0224.xml.gz
  fi
fi
if [ ! -f pubmed23n0225.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0225.xml.gz
  if ! gzip -d "pubmed23n0225.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0225.xml.gz"
    # rm pubmed23n0225.xml.gz
  fi
fi
if [ ! -f pubmed23n0226.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0226.xml.gz
  if ! gzip -d "pubmed23n0226.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0226.xml.gz"
    # rm pubmed23n0226.xml.gz
  fi
fi
if [ ! -f pubmed23n0227.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0227.xml.gz
  if ! gzip -d "pubmed23n0227.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0227.xml.gz"
    # rm pubmed23n0227.xml.gz
  fi
fi
if [ ! -f pubmed23n0228.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0228.xml.gz
  if ! gzip -d "pubmed23n0228.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0228.xml.gz"
    # rm pubmed23n0228.xml.gz
  fi
fi
if [ ! -f pubmed23n0229.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0229.xml.gz
  if ! gzip -d "pubmed23n0229.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0229.xml.gz"
    # rm pubmed23n0229.xml.gz
  fi
fi
if [ ! -f pubmed23n0230.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0230.xml.gz
  if ! gzip -d "pubmed23n0230.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0230.xml.gz"
    # rm pubmed23n0230.xml.gz
  fi
fi
if [ ! -f pubmed23n0231.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0231.xml.gz
  if ! gzip -d "pubmed23n0231.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0231.xml.gz"
    # rm pubmed23n0231.xml.gz
  fi
fi
if [ ! -f pubmed23n0232.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0232.xml.gz
  if ! gzip -d "pubmed23n0232.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0232.xml.gz"
    # rm pubmed23n0232.xml.gz
  fi
fi
if [ ! -f pubmed23n0233.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0233.xml.gz
  if ! gzip -d "pubmed23n0233.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0233.xml.gz"
    # rm pubmed23n0233.xml.gz
  fi
fi
if [ ! -f pubmed23n0234.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0234.xml.gz
  if ! gzip -d "pubmed23n0234.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0234.xml.gz"
    # rm pubmed23n0234.xml.gz
  fi
fi
if [ ! -f pubmed23n0235.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0235.xml.gz
  if ! gzip -d "pubmed23n0235.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0235.xml.gz"
    # rm pubmed23n0235.xml.gz
  fi
fi
if [ ! -f pubmed23n0236.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0236.xml.gz
  if ! gzip -d "pubmed23n0236.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0236.xml.gz"
    # rm pubmed23n0236.xml.gz
  fi
fi
if [ ! -f pubmed23n0237.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0237.xml.gz
  if ! gzip -d "pubmed23n0237.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0237.xml.gz"
    # rm pubmed23n0237.xml.gz
  fi
fi
if [ ! -f pubmed23n0238.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0238.xml.gz
  if ! gzip -d "pubmed23n0238.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0238.xml.gz"
    # rm pubmed23n0238.xml.gz
  fi
fi
if [ ! -f pubmed23n0239.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0239.xml.gz
  if ! gzip -d "pubmed23n0239.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0239.xml.gz"
    # rm pubmed23n0239.xml.gz
  fi
fi
if [ ! -f pubmed23n0240.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0240.xml.gz
  if ! gzip -d "pubmed23n0240.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0240.xml.gz"
    # rm pubmed23n0240.xml.gz
  fi
fi
if [ ! -f pubmed23n0241.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0241.xml.gz
  if ! gzip -d "pubmed23n0241.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0241.xml.gz"
    # rm pubmed23n0241.xml.gz
  fi
fi
if [ ! -f pubmed23n0242.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0242.xml.gz
  if ! gzip -d "pubmed23n0242.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0242.xml.gz"
    # rm pubmed23n0242.xml.gz
  fi
fi
if [ ! -f pubmed23n0243.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0243.xml.gz
  if ! gzip -d "pubmed23n0243.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0243.xml.gz"
    # rm pubmed23n0243.xml.gz
  fi
fi
if [ ! -f pubmed23n0244.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0244.xml.gz
  if ! gzip -d "pubmed23n0244.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0244.xml.gz"
    # rm pubmed23n0244.xml.gz
  fi
fi
if [ ! -f pubmed23n0245.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0245.xml.gz
  if ! gzip -d "pubmed23n0245.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0245.xml.gz"
    # rm pubmed23n0245.xml.gz
  fi
fi
if [ ! -f pubmed23n0246.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0246.xml.gz
  if ! gzip -d "pubmed23n0246.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0246.xml.gz"
    # rm pubmed23n0246.xml.gz
  fi
fi
if [ ! -f pubmed23n0247.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0247.xml.gz
  if ! gzip -d "pubmed23n0247.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0247.xml.gz"
    # rm pubmed23n0247.xml.gz
  fi
fi
if [ ! -f pubmed23n0248.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0248.xml.gz
  if ! gzip -d "pubmed23n0248.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0248.xml.gz"
    # rm pubmed23n0248.xml.gz
  fi
fi
if [ ! -f pubmed23n0249.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0249.xml.gz
  if ! gzip -d "pubmed23n0249.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0249.xml.gz"
    # rm pubmed23n0249.xml.gz
  fi
fi
if [ ! -f pubmed23n0250.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0250.xml.gz
  if ! gzip -d "pubmed23n0250.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0250.xml.gz"
    # rm pubmed23n0250.xml.gz
  fi
fi
if [ ! -f pubmed23n0251.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0251.xml.gz
  if ! gzip -d "pubmed23n0251.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0251.xml.gz"
    # rm pubmed23n0251.xml.gz
  fi
fi
if [ ! -f pubmed23n0252.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0252.xml.gz
  if ! gzip -d "pubmed23n0252.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0252.xml.gz"
    # rm pubmed23n0252.xml.gz
  fi
fi
if [ ! -f pubmed23n0253.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0253.xml.gz
  if ! gzip -d "pubmed23n0253.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0253.xml.gz"
    # rm pubmed23n0253.xml.gz
  fi
fi
if [ ! -f pubmed23n0254.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0254.xml.gz
  if ! gzip -d "pubmed23n0254.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0254.xml.gz"
    # rm pubmed23n0254.xml.gz
  fi
fi
if [ ! -f pubmed23n0255.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0255.xml.gz
  if ! gzip -d "pubmed23n0255.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0255.xml.gz"
    # rm pubmed23n0255.xml.gz
  fi
fi
if [ ! -f pubmed23n0256.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0256.xml.gz
  if ! gzip -d "pubmed23n0256.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0256.xml.gz"
    # rm pubmed23n0256.xml.gz
  fi
fi
if [ ! -f pubmed23n0257.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0257.xml.gz
  if ! gzip -d "pubmed23n0257.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0257.xml.gz"
    # rm pubmed23n0257.xml.gz
  fi
fi
if [ ! -f pubmed23n0258.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0258.xml.gz
  if ! gzip -d "pubmed23n0258.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0258.xml.gz"
    # rm pubmed23n0258.xml.gz
  fi
fi
if [ ! -f pubmed23n0259.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0259.xml.gz
  if ! gzip -d "pubmed23n0259.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0259.xml.gz"
    # rm pubmed23n0259.xml.gz
  fi
fi
if [ ! -f pubmed23n0260.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0260.xml.gz
  if ! gzip -d "pubmed23n0260.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0260.xml.gz"
    # rm pubmed23n0260.xml.gz
  fi
fi
if [ ! -f pubmed23n0261.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0261.xml.gz
  if ! gzip -d "pubmed23n0261.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0261.xml.gz"
    # rm pubmed23n0261.xml.gz
  fi
fi
if [ ! -f pubmed23n0262.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0262.xml.gz
  if ! gzip -d "pubmed23n0262.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0262.xml.gz"
    # rm pubmed23n0262.xml.gz
  fi
fi
if [ ! -f pubmed23n0263.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0263.xml.gz
  if ! gzip -d "pubmed23n0263.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0263.xml.gz"
    # rm pubmed23n0263.xml.gz
  fi
fi
if [ ! -f pubmed23n0264.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0264.xml.gz
  if ! gzip -d "pubmed23n0264.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0264.xml.gz"
    # rm pubmed23n0264.xml.gz
  fi
fi
if [ ! -f pubmed23n0265.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0265.xml.gz
  if ! gzip -d "pubmed23n0265.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0265.xml.gz"
    # rm pubmed23n0265.xml.gz
  fi
fi
if [ ! -f pubmed23n0266.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0266.xml.gz
  if ! gzip -d "pubmed23n0266.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0266.xml.gz"
    # rm pubmed23n0266.xml.gz
  fi
fi
if [ ! -f pubmed23n0267.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0267.xml.gz
  if ! gzip -d "pubmed23n0267.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0267.xml.gz"
    # rm pubmed23n0267.xml.gz
  fi
fi
if [ ! -f pubmed23n0268.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0268.xml.gz
  if ! gzip -d "pubmed23n0268.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0268.xml.gz"
    # rm pubmed23n0268.xml.gz
  fi
fi
if [ ! -f pubmed23n0269.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0269.xml.gz
  if ! gzip -d "pubmed23n0269.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0269.xml.gz"
    # rm pubmed23n0269.xml.gz
  fi
fi
if [ ! -f pubmed23n0270.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0270.xml.gz
  if ! gzip -d "pubmed23n0270.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0270.xml.gz"
    # rm pubmed23n0270.xml.gz
  fi
fi
if [ ! -f pubmed23n0271.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0271.xml.gz
  if ! gzip -d "pubmed23n0271.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0271.xml.gz"
    # rm pubmed23n0271.xml.gz
  fi
fi
if [ ! -f pubmed23n0272.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0272.xml.gz
  if ! gzip -d "pubmed23n0272.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0272.xml.gz"
    # rm pubmed23n0272.xml.gz
  fi
fi
if [ ! -f pubmed23n0273.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0273.xml.gz
  if ! gzip -d "pubmed23n0273.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0273.xml.gz"
    # rm pubmed23n0273.xml.gz
  fi
fi
if [ ! -f pubmed23n0274.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0274.xml.gz
  if ! gzip -d "pubmed23n0274.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0274.xml.gz"
    # rm pubmed23n0274.xml.gz
  fi
fi
if [ ! -f pubmed23n0275.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0275.xml.gz
  if ! gzip -d "pubmed23n0275.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0275.xml.gz"
    # rm pubmed23n0275.xml.gz
  fi
fi
if [ ! -f pubmed23n0276.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0276.xml.gz
  if ! gzip -d "pubmed23n0276.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0276.xml.gz"
    # rm pubmed23n0276.xml.gz
  fi
fi
if [ ! -f pubmed23n0277.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0277.xml.gz
  if ! gzip -d "pubmed23n0277.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0277.xml.gz"
    # rm pubmed23n0277.xml.gz
  fi
fi
if [ ! -f pubmed23n0278.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0278.xml.gz
  if ! gzip -d "pubmed23n0278.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0278.xml.gz"
    # rm pubmed23n0278.xml.gz
  fi
fi
if [ ! -f pubmed23n0279.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0279.xml.gz
  if ! gzip -d "pubmed23n0279.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0279.xml.gz"
    # rm pubmed23n0279.xml.gz
  fi
fi
if [ ! -f pubmed23n0280.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0280.xml.gz
  if ! gzip -d "pubmed23n0280.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0280.xml.gz"
    # rm pubmed23n0280.xml.gz
  fi
fi
if [ ! -f pubmed23n0281.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0281.xml.gz
  if ! gzip -d "pubmed23n0281.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0281.xml.gz"
    # rm pubmed23n0281.xml.gz
  fi
fi
if [ ! -f pubmed23n0282.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0282.xml.gz
  if ! gzip -d "pubmed23n0282.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0282.xml.gz"
    # rm pubmed23n0282.xml.gz
  fi
fi
if [ ! -f pubmed23n0283.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0283.xml.gz
  if ! gzip -d "pubmed23n0283.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0283.xml.gz"
    # rm pubmed23n0283.xml.gz
  fi
fi
if [ ! -f pubmed23n0284.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0284.xml.gz
  if ! gzip -d "pubmed23n0284.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0284.xml.gz"
    # rm pubmed23n0284.xml.gz
  fi
fi
if [ ! -f pubmed23n0285.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0285.xml.gz
  if ! gzip -d "pubmed23n0285.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0285.xml.gz"
    # rm pubmed23n0285.xml.gz
  fi
fi
if [ ! -f pubmed23n0286.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0286.xml.gz
  if ! gzip -d "pubmed23n0286.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0286.xml.gz"
    # rm pubmed23n0286.xml.gz
  fi
fi
if [ ! -f pubmed23n0287.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0287.xml.gz
  if ! gzip -d "pubmed23n0287.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0287.xml.gz"
    # rm pubmed23n0287.xml.gz
  fi
fi
if [ ! -f pubmed23n0288.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0288.xml.gz
  if ! gzip -d "pubmed23n0288.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0288.xml.gz"
    # rm pubmed23n0288.xml.gz
  fi
fi
if [ ! -f pubmed23n0289.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0289.xml.gz
  if ! gzip -d "pubmed23n0289.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0289.xml.gz"
    # rm pubmed23n0289.xml.gz
  fi
fi
if [ ! -f pubmed23n0290.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0290.xml.gz
  if ! gzip -d "pubmed23n0290.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0290.xml.gz"
    # rm pubmed23n0290.xml.gz
  fi
fi
if [ ! -f pubmed23n0291.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0291.xml.gz
  if ! gzip -d "pubmed23n0291.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0291.xml.gz"
    # rm pubmed23n0291.xml.gz
  fi
fi
if [ ! -f pubmed23n0292.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0292.xml.gz
  if ! gzip -d "pubmed23n0292.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0292.xml.gz"
    # rm pubmed23n0292.xml.gz
  fi
fi
if [ ! -f pubmed23n0293.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0293.xml.gz
  if ! gzip -d "pubmed23n0293.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0293.xml.gz"
    # rm pubmed23n0293.xml.gz
  fi
fi
if [ ! -f pubmed23n0294.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0294.xml.gz
  if ! gzip -d "pubmed23n0294.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0294.xml.gz"
    # rm pubmed23n0294.xml.gz
  fi
fi
if [ ! -f pubmed23n0295.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0295.xml.gz
  if ! gzip -d "pubmed23n0295.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0295.xml.gz"
    # rm pubmed23n0295.xml.gz
  fi
fi
if [ ! -f pubmed23n0296.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0296.xml.gz
  if ! gzip -d "pubmed23n0296.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0296.xml.gz"
    # rm pubmed23n0296.xml.gz
  fi
fi
if [ ! -f pubmed23n0297.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0297.xml.gz
  if ! gzip -d "pubmed23n0297.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0297.xml.gz"
    # rm pubmed23n0297.xml.gz
  fi
fi
if [ ! -f pubmed23n0298.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0298.xml.gz
  if ! gzip -d "pubmed23n0298.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0298.xml.gz"
    # rm pubmed23n0298.xml.gz
  fi
fi
if [ ! -f pubmed23n0299.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0299.xml.gz
  if ! gzip -d "pubmed23n0299.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0299.xml.gz"
    # rm pubmed23n0299.xml.gz
  fi
fi
if [ ! -f pubmed23n0300.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0300.xml.gz
  if ! gzip -d "pubmed23n0300.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0300.xml.gz"
    # rm pubmed23n0300.xml.gz
  fi
fi
if [ ! -f pubmed23n0301.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0301.xml.gz
  if ! gzip -d "pubmed23n0301.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0301.xml.gz"
    # rm pubmed23n0301.xml.gz
  fi
fi
if [ ! -f pubmed23n0302.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0302.xml.gz
  if ! gzip -d "pubmed23n0302.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0302.xml.gz"
    # rm pubmed23n0302.xml.gz
  fi
fi
if [ ! -f pubmed23n0303.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0303.xml.gz
  if ! gzip -d "pubmed23n0303.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0303.xml.gz"
    # rm pubmed23n0303.xml.gz
  fi
fi
if [ ! -f pubmed23n0304.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0304.xml.gz
  if ! gzip -d "pubmed23n0304.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0304.xml.gz"
    # rm pubmed23n0304.xml.gz
  fi
fi
if [ ! -f pubmed23n0305.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0305.xml.gz
  if ! gzip -d "pubmed23n0305.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0305.xml.gz"
    # rm pubmed23n0305.xml.gz
  fi
fi
if [ ! -f pubmed23n0306.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0306.xml.gz
  if ! gzip -d "pubmed23n0306.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0306.xml.gz"
    # rm pubmed23n0306.xml.gz
  fi
fi
if [ ! -f pubmed23n0307.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0307.xml.gz
  if ! gzip -d "pubmed23n0307.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0307.xml.gz"
    # rm pubmed23n0307.xml.gz
  fi
fi
if [ ! -f pubmed23n0308.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0308.xml.gz
  if ! gzip -d "pubmed23n0308.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0308.xml.gz"
    # rm pubmed23n0308.xml.gz
  fi
fi
if [ ! -f pubmed23n0309.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0309.xml.gz
  if ! gzip -d "pubmed23n0309.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0309.xml.gz"
    # rm pubmed23n0309.xml.gz
  fi
fi
if [ ! -f pubmed23n0310.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0310.xml.gz
  if ! gzip -d "pubmed23n0310.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0310.xml.gz"
    # rm pubmed23n0310.xml.gz
  fi
fi
if [ ! -f pubmed23n0311.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0311.xml.gz
  if ! gzip -d "pubmed23n0311.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0311.xml.gz"
    # rm pubmed23n0311.xml.gz
  fi
fi
if [ ! -f pubmed23n0312.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0312.xml.gz
  if ! gzip -d "pubmed23n0312.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0312.xml.gz"
    # rm pubmed23n0312.xml.gz
  fi
fi
if [ ! -f pubmed23n0313.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0313.xml.gz
  if ! gzip -d "pubmed23n0313.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0313.xml.gz"
    # rm pubmed23n0313.xml.gz
  fi
fi
if [ ! -f pubmed23n0314.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0314.xml.gz
  if ! gzip -d "pubmed23n0314.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0314.xml.gz"
    # rm pubmed23n0314.xml.gz
  fi
fi
if [ ! -f pubmed23n0315.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0315.xml.gz
  if ! gzip -d "pubmed23n0315.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0315.xml.gz"
    # rm pubmed23n0315.xml.gz
  fi
fi
if [ ! -f pubmed23n0316.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0316.xml.gz
  if ! gzip -d "pubmed23n0316.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0316.xml.gz"
    # rm pubmed23n0316.xml.gz
  fi
fi
if [ ! -f pubmed23n0317.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0317.xml.gz
  if ! gzip -d "pubmed23n0317.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0317.xml.gz"
    # rm pubmed23n0317.xml.gz
  fi
fi
if [ ! -f pubmed23n0318.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0318.xml.gz
  if ! gzip -d "pubmed23n0318.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0318.xml.gz"
    # rm pubmed23n0318.xml.gz
  fi
fi
if [ ! -f pubmed23n0319.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0319.xml.gz
  if ! gzip -d "pubmed23n0319.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0319.xml.gz"
    # rm pubmed23n0319.xml.gz
  fi
fi
if [ ! -f pubmed23n0320.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0320.xml.gz
  if ! gzip -d "pubmed23n0320.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0320.xml.gz"
    # rm pubmed23n0320.xml.gz
  fi
fi
if [ ! -f pubmed23n0321.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0321.xml.gz
  if ! gzip -d "pubmed23n0321.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0321.xml.gz"
    # rm pubmed23n0321.xml.gz
  fi
fi
if [ ! -f pubmed23n0322.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0322.xml.gz
  if ! gzip -d "pubmed23n0322.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0322.xml.gz"
    # rm pubmed23n0322.xml.gz
  fi
fi
if [ ! -f pubmed23n0323.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0323.xml.gz
  if ! gzip -d "pubmed23n0323.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0323.xml.gz"
    # rm pubmed23n0323.xml.gz
  fi
fi
if [ ! -f pubmed23n0324.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0324.xml.gz
  if ! gzip -d "pubmed23n0324.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0324.xml.gz"
    # rm pubmed23n0324.xml.gz
  fi
fi
if [ ! -f pubmed23n0325.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0325.xml.gz
  if ! gzip -d "pubmed23n0325.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0325.xml.gz"
    # rm pubmed23n0325.xml.gz
  fi
fi
if [ ! -f pubmed23n0326.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0326.xml.gz
  if ! gzip -d "pubmed23n0326.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0326.xml.gz"
    # rm pubmed23n0326.xml.gz
  fi
fi
if [ ! -f pubmed23n0327.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0327.xml.gz
  if ! gzip -d "pubmed23n0327.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0327.xml.gz"
    # rm pubmed23n0327.xml.gz
  fi
fi
if [ ! -f pubmed23n0328.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0328.xml.gz
  if ! gzip -d "pubmed23n0328.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0328.xml.gz"
    # rm pubmed23n0328.xml.gz
  fi
fi
if [ ! -f pubmed23n0329.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0329.xml.gz
  if ! gzip -d "pubmed23n0329.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0329.xml.gz"
    # rm pubmed23n0329.xml.gz
  fi
fi
if [ ! -f pubmed23n0330.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0330.xml.gz
  if ! gzip -d "pubmed23n0330.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0330.xml.gz"
    # rm pubmed23n0330.xml.gz
  fi
fi
if [ ! -f pubmed23n0331.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0331.xml.gz
  if ! gzip -d "pubmed23n0331.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0331.xml.gz"
    # rm pubmed23n0331.xml.gz
  fi
fi
if [ ! -f pubmed23n0332.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0332.xml.gz
  if ! gzip -d "pubmed23n0332.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0332.xml.gz"
    # rm pubmed23n0332.xml.gz
  fi
fi
if [ ! -f pubmed23n0333.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0333.xml.gz
  if ! gzip -d "pubmed23n0333.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0333.xml.gz"
    # rm pubmed23n0333.xml.gz
  fi
fi
if [ ! -f pubmed23n0334.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0334.xml.gz
  if ! gzip -d "pubmed23n0334.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0334.xml.gz"
    # rm pubmed23n0334.xml.gz
  fi
fi
if [ ! -f pubmed23n0335.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0335.xml.gz
  if ! gzip -d "pubmed23n0335.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0335.xml.gz"
    # rm pubmed23n0335.xml.gz
  fi
fi
if [ ! -f pubmed23n0336.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0336.xml.gz
  if ! gzip -d "pubmed23n0336.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0336.xml.gz"
    # rm pubmed23n0336.xml.gz
  fi
fi
if [ ! -f pubmed23n0337.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0337.xml.gz
  if ! gzip -d "pubmed23n0337.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0337.xml.gz"
    # rm pubmed23n0337.xml.gz
  fi
fi
if [ ! -f pubmed23n0338.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0338.xml.gz
  if ! gzip -d "pubmed23n0338.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0338.xml.gz"
    # rm pubmed23n0338.xml.gz
  fi
fi
if [ ! -f pubmed23n0339.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0339.xml.gz
  if ! gzip -d "pubmed23n0339.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0339.xml.gz"
    # rm pubmed23n0339.xml.gz
  fi
fi
if [ ! -f pubmed23n0340.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0340.xml.gz
  if ! gzip -d "pubmed23n0340.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0340.xml.gz"
    # rm pubmed23n0340.xml.gz
  fi
fi
if [ ! -f pubmed23n0341.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0341.xml.gz
  if ! gzip -d "pubmed23n0341.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0341.xml.gz"
    # rm pubmed23n0341.xml.gz
  fi
fi
if [ ! -f pubmed23n0342.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0342.xml.gz
  if ! gzip -d "pubmed23n0342.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0342.xml.gz"
    # rm pubmed23n0342.xml.gz
  fi
fi
if [ ! -f pubmed23n0343.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0343.xml.gz
  if ! gzip -d "pubmed23n0343.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0343.xml.gz"
    # rm pubmed23n0343.xml.gz
  fi
fi
if [ ! -f pubmed23n0344.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0344.xml.gz
  if ! gzip -d "pubmed23n0344.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0344.xml.gz"
    # rm pubmed23n0344.xml.gz
  fi
fi
if [ ! -f pubmed23n0345.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0345.xml.gz
  if ! gzip -d "pubmed23n0345.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0345.xml.gz"
    # rm pubmed23n0345.xml.gz
  fi
fi
if [ ! -f pubmed23n0346.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0346.xml.gz
  if ! gzip -d "pubmed23n0346.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0346.xml.gz"
    # rm pubmed23n0346.xml.gz
  fi
fi
if [ ! -f pubmed23n0347.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0347.xml.gz
  if ! gzip -d "pubmed23n0347.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0347.xml.gz"
    # rm pubmed23n0347.xml.gz
  fi
fi
if [ ! -f pubmed23n0348.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0348.xml.gz
  if ! gzip -d "pubmed23n0348.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0348.xml.gz"
    # rm pubmed23n0348.xml.gz
  fi
fi
if [ ! -f pubmed23n0349.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0349.xml.gz
  if ! gzip -d "pubmed23n0349.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0349.xml.gz"
    # rm pubmed23n0349.xml.gz
  fi
fi
if [ ! -f pubmed23n0350.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0350.xml.gz
  if ! gzip -d "pubmed23n0350.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0350.xml.gz"
    # rm pubmed23n0350.xml.gz
  fi
fi
if [ ! -f pubmed23n0351.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0351.xml.gz
  if ! gzip -d "pubmed23n0351.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0351.xml.gz"
    # rm pubmed23n0351.xml.gz
  fi
fi
if [ ! -f pubmed23n0352.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0352.xml.gz
  if ! gzip -d "pubmed23n0352.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0352.xml.gz"
    # rm pubmed23n0352.xml.gz
  fi
fi
if [ ! -f pubmed23n0353.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0353.xml.gz
  if ! gzip -d "pubmed23n0353.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0353.xml.gz"
    # rm pubmed23n0353.xml.gz
  fi
fi
if [ ! -f pubmed23n0354.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0354.xml.gz
  if ! gzip -d "pubmed23n0354.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0354.xml.gz"
    # rm pubmed23n0354.xml.gz
  fi
fi
if [ ! -f pubmed23n0355.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0355.xml.gz
  if ! gzip -d "pubmed23n0355.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0355.xml.gz"
    # rm pubmed23n0355.xml.gz
  fi
fi
if [ ! -f pubmed23n0356.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0356.xml.gz
  if ! gzip -d "pubmed23n0356.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0356.xml.gz"
    # rm pubmed23n0356.xml.gz
  fi
fi
if [ ! -f pubmed23n0357.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0357.xml.gz
  if ! gzip -d "pubmed23n0357.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0357.xml.gz"
    # rm pubmed23n0357.xml.gz
  fi
fi
if [ ! -f pubmed23n0358.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0358.xml.gz
  if ! gzip -d "pubmed23n0358.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0358.xml.gz"
    # rm pubmed23n0358.xml.gz
  fi
fi
if [ ! -f pubmed23n0359.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0359.xml.gz
  if ! gzip -d "pubmed23n0359.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0359.xml.gz"
    # rm pubmed23n0359.xml.gz
  fi
fi
if [ ! -f pubmed23n0360.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0360.xml.gz
  if ! gzip -d "pubmed23n0360.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0360.xml.gz"
    # rm pubmed23n0360.xml.gz
  fi
fi
if [ ! -f pubmed23n0361.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0361.xml.gz
  if ! gzip -d "pubmed23n0361.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0361.xml.gz"
    # rm pubmed23n0361.xml.gz
  fi
fi
if [ ! -f pubmed23n0362.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0362.xml.gz
  if ! gzip -d "pubmed23n0362.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0362.xml.gz"
    # rm pubmed23n0362.xml.gz
  fi
fi
if [ ! -f pubmed23n0363.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0363.xml.gz
  if ! gzip -d "pubmed23n0363.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0363.xml.gz"
    # rm pubmed23n0363.xml.gz
  fi
fi
if [ ! -f pubmed23n0364.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0364.xml.gz
  if ! gzip -d "pubmed23n0364.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0364.xml.gz"
    # rm pubmed23n0364.xml.gz
  fi
fi
if [ ! -f pubmed23n0365.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0365.xml.gz
  if ! gzip -d "pubmed23n0365.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0365.xml.gz"
    # rm pubmed23n0365.xml.gz
  fi
fi
if [ ! -f pubmed23n0366.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0366.xml.gz
  if ! gzip -d "pubmed23n0366.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0366.xml.gz"
    # rm pubmed23n0366.xml.gz
  fi
fi
if [ ! -f pubmed23n0367.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0367.xml.gz
  if ! gzip -d "pubmed23n0367.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0367.xml.gz"
    # rm pubmed23n0367.xml.gz
  fi
fi
if [ ! -f pubmed23n0368.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0368.xml.gz
  if ! gzip -d "pubmed23n0368.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0368.xml.gz"
    # rm pubmed23n0368.xml.gz
  fi
fi
if [ ! -f pubmed23n0369.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0369.xml.gz
  if ! gzip -d "pubmed23n0369.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0369.xml.gz"
    # rm pubmed23n0369.xml.gz
  fi
fi
if [ ! -f pubmed23n0370.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0370.xml.gz
  if ! gzip -d "pubmed23n0370.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0370.xml.gz"
    # rm pubmed23n0370.xml.gz
  fi
fi
if [ ! -f pubmed23n0371.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0371.xml.gz
  if ! gzip -d "pubmed23n0371.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0371.xml.gz"
    # rm pubmed23n0371.xml.gz
  fi
fi
if [ ! -f pubmed23n0372.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0372.xml.gz
  if ! gzip -d "pubmed23n0372.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0372.xml.gz"
    # rm pubmed23n0372.xml.gz
  fi
fi
if [ ! -f pubmed23n0373.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0373.xml.gz
  if ! gzip -d "pubmed23n0373.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0373.xml.gz"
    # rm pubmed23n0373.xml.gz
  fi
fi
if [ ! -f pubmed23n0374.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0374.xml.gz
  if ! gzip -d "pubmed23n0374.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0374.xml.gz"
    # rm pubmed23n0374.xml.gz
  fi
fi
if [ ! -f pubmed23n0375.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0375.xml.gz
  if ! gzip -d "pubmed23n0375.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0375.xml.gz"
    # rm pubmed23n0375.xml.gz
  fi
fi
if [ ! -f pubmed23n0376.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0376.xml.gz
  if ! gzip -d "pubmed23n0376.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0376.xml.gz"
    # rm pubmed23n0376.xml.gz
  fi
fi
if [ ! -f pubmed23n0377.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0377.xml.gz
  if ! gzip -d "pubmed23n0377.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0377.xml.gz"
    # rm pubmed23n0377.xml.gz
  fi
fi
if [ ! -f pubmed23n0378.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0378.xml.gz
  if ! gzip -d "pubmed23n0378.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0378.xml.gz"
    # rm pubmed23n0378.xml.gz
  fi
fi
if [ ! -f pubmed23n0379.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0379.xml.gz
  if ! gzip -d "pubmed23n0379.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0379.xml.gz"
    # rm pubmed23n0379.xml.gz
  fi
fi
if [ ! -f pubmed23n0380.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0380.xml.gz
  if ! gzip -d "pubmed23n0380.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0380.xml.gz"
    # rm pubmed23n0380.xml.gz
  fi
fi
if [ ! -f pubmed23n0381.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0381.xml.gz
  if ! gzip -d "pubmed23n0381.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0381.xml.gz"
    # rm pubmed23n0381.xml.gz
  fi
fi
if [ ! -f pubmed23n0382.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0382.xml.gz
  if ! gzip -d "pubmed23n0382.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0382.xml.gz"
    # rm pubmed23n0382.xml.gz
  fi
fi
if [ ! -f pubmed23n0383.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0383.xml.gz
  if ! gzip -d "pubmed23n0383.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0383.xml.gz"
    # rm pubmed23n0383.xml.gz
  fi
fi
if [ ! -f pubmed23n0384.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0384.xml.gz
  if ! gzip -d "pubmed23n0384.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0384.xml.gz"
    # rm pubmed23n0384.xml.gz
  fi
fi
if [ ! -f pubmed23n0385.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0385.xml.gz
  if ! gzip -d "pubmed23n0385.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0385.xml.gz"
    # rm pubmed23n0385.xml.gz
  fi
fi
if [ ! -f pubmed23n0386.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0386.xml.gz
  if ! gzip -d "pubmed23n0386.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0386.xml.gz"
    # rm pubmed23n0386.xml.gz
  fi
fi
if [ ! -f pubmed23n0387.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0387.xml.gz
  if ! gzip -d "pubmed23n0387.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0387.xml.gz"
    # rm pubmed23n0387.xml.gz
  fi
fi
if [ ! -f pubmed23n0388.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0388.xml.gz
  if ! gzip -d "pubmed23n0388.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0388.xml.gz"
    # rm pubmed23n0388.xml.gz
  fi
fi
if [ ! -f pubmed23n0389.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0389.xml.gz
  if ! gzip -d "pubmed23n0389.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0389.xml.gz"
    # rm pubmed23n0389.xml.gz
  fi
fi
if [ ! -f pubmed23n0390.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0390.xml.gz
  if ! gzip -d "pubmed23n0390.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0390.xml.gz"
    # rm pubmed23n0390.xml.gz
  fi
fi
if [ ! -f pubmed23n0391.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0391.xml.gz
  if ! gzip -d "pubmed23n0391.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0391.xml.gz"
    # rm pubmed23n0391.xml.gz
  fi
fi
if [ ! -f pubmed23n0392.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0392.xml.gz
  if ! gzip -d "pubmed23n0392.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0392.xml.gz"
    # rm pubmed23n0392.xml.gz
  fi
fi
if [ ! -f pubmed23n0393.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0393.xml.gz
  if ! gzip -d "pubmed23n0393.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0393.xml.gz"
    # rm pubmed23n0393.xml.gz
  fi
fi
if [ ! -f pubmed23n0394.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0394.xml.gz
  if ! gzip -d "pubmed23n0394.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0394.xml.gz"
    # rm pubmed23n0394.xml.gz
  fi
fi
if [ ! -f pubmed23n0395.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0395.xml.gz
  if ! gzip -d "pubmed23n0395.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0395.xml.gz"
    # rm pubmed23n0395.xml.gz
  fi
fi
if [ ! -f pubmed23n0396.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0396.xml.gz
  if ! gzip -d "pubmed23n0396.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0396.xml.gz"
    # rm pubmed23n0396.xml.gz
  fi
fi
if [ ! -f pubmed23n0397.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0397.xml.gz
  if ! gzip -d "pubmed23n0397.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0397.xml.gz"
    # rm pubmed23n0397.xml.gz
  fi
fi
if [ ! -f pubmed23n0398.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0398.xml.gz
  if ! gzip -d "pubmed23n0398.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0398.xml.gz"
    # rm pubmed23n0398.xml.gz
  fi
fi
if [ ! -f pubmed23n0399.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0399.xml.gz
  if ! gzip -d "pubmed23n0399.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0399.xml.gz"
    # rm pubmed23n0399.xml.gz
  fi
fi
if [ ! -f pubmed23n0400.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0400.xml.gz
  if ! gzip -d "pubmed23n0400.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0400.xml.gz"
    # rm pubmed23n0400.xml.gz
  fi
fi
if [ ! -f pubmed23n0401.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0401.xml.gz
  if ! gzip -d "pubmed23n0401.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0401.xml.gz"
    # rm pubmed23n0401.xml.gz
  fi
fi
if [ ! -f pubmed23n0402.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0402.xml.gz
  if ! gzip -d "pubmed23n0402.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0402.xml.gz"
    # rm pubmed23n0402.xml.gz
  fi
fi
if [ ! -f pubmed23n0403.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0403.xml.gz
  if ! gzip -d "pubmed23n0403.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0403.xml.gz"
    # rm pubmed23n0403.xml.gz
  fi
fi
if [ ! -f pubmed23n0404.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0404.xml.gz
  if ! gzip -d "pubmed23n0404.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0404.xml.gz"
    # rm pubmed23n0404.xml.gz
  fi
fi
if [ ! -f pubmed23n0405.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0405.xml.gz
  if ! gzip -d "pubmed23n0405.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0405.xml.gz"
    # rm pubmed23n0405.xml.gz
  fi
fi
if [ ! -f pubmed23n0406.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0406.xml.gz
  if ! gzip -d "pubmed23n0406.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0406.xml.gz"
    # rm pubmed23n0406.xml.gz
  fi
fi
if [ ! -f pubmed23n0407.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0407.xml.gz
  if ! gzip -d "pubmed23n0407.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0407.xml.gz"
    # rm pubmed23n0407.xml.gz
  fi
fi
if [ ! -f pubmed23n0408.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0408.xml.gz
  if ! gzip -d "pubmed23n0408.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0408.xml.gz"
    # rm pubmed23n0408.xml.gz
  fi
fi
if [ ! -f pubmed23n0409.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0409.xml.gz
  if ! gzip -d "pubmed23n0409.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0409.xml.gz"
    # rm pubmed23n0409.xml.gz
  fi
fi
if [ ! -f pubmed23n0410.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0410.xml.gz
  if ! gzip -d "pubmed23n0410.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0410.xml.gz"
    # rm pubmed23n0410.xml.gz
  fi
fi
if [ ! -f pubmed23n0411.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0411.xml.gz
  if ! gzip -d "pubmed23n0411.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0411.xml.gz"
    # rm pubmed23n0411.xml.gz
  fi
fi
if [ ! -f pubmed23n0412.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0412.xml.gz
  if ! gzip -d "pubmed23n0412.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0412.xml.gz"
    # rm pubmed23n0412.xml.gz
  fi
fi
if [ ! -f pubmed23n0413.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0413.xml.gz
  if ! gzip -d "pubmed23n0413.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0413.xml.gz"
    # rm pubmed23n0413.xml.gz
  fi
fi
if [ ! -f pubmed23n0414.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0414.xml.gz
  if ! gzip -d "pubmed23n0414.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0414.xml.gz"
    # rm pubmed23n0414.xml.gz
  fi
fi
if [ ! -f pubmed23n0415.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0415.xml.gz
  if ! gzip -d "pubmed23n0415.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0415.xml.gz"
    # rm pubmed23n0415.xml.gz
  fi
fi
if [ ! -f pubmed23n0416.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0416.xml.gz
  if ! gzip -d "pubmed23n0416.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0416.xml.gz"
    # rm pubmed23n0416.xml.gz
  fi
fi
if [ ! -f pubmed23n0417.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0417.xml.gz
  if ! gzip -d "pubmed23n0417.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0417.xml.gz"
    # rm pubmed23n0417.xml.gz
  fi
fi
if [ ! -f pubmed23n0418.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0418.xml.gz
  if ! gzip -d "pubmed23n0418.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0418.xml.gz"
    # rm pubmed23n0418.xml.gz
  fi
fi
if [ ! -f pubmed23n0419.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0419.xml.gz
  if ! gzip -d "pubmed23n0419.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0419.xml.gz"
    # rm pubmed23n0419.xml.gz
  fi
fi
if [ ! -f pubmed23n0420.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0420.xml.gz
  if ! gzip -d "pubmed23n0420.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0420.xml.gz"
    # rm pubmed23n0420.xml.gz
  fi
fi
if [ ! -f pubmed23n0421.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0421.xml.gz
  if ! gzip -d "pubmed23n0421.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0421.xml.gz"
    # rm pubmed23n0421.xml.gz
  fi
fi
if [ ! -f pubmed23n0422.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0422.xml.gz
  if ! gzip -d "pubmed23n0422.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0422.xml.gz"
    # rm pubmed23n0422.xml.gz
  fi
fi
if [ ! -f pubmed23n0423.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0423.xml.gz
  if ! gzip -d "pubmed23n0423.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0423.xml.gz"
    # rm pubmed23n0423.xml.gz
  fi
fi
if [ ! -f pubmed23n0424.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0424.xml.gz
  if ! gzip -d "pubmed23n0424.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0424.xml.gz"
    # rm pubmed23n0424.xml.gz
  fi
fi
if [ ! -f pubmed23n0425.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0425.xml.gz
  if ! gzip -d "pubmed23n0425.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0425.xml.gz"
    # rm pubmed23n0425.xml.gz
  fi
fi
if [ ! -f pubmed23n0426.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0426.xml.gz
  if ! gzip -d "pubmed23n0426.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0426.xml.gz"
    # rm pubmed23n0426.xml.gz
  fi
fi
if [ ! -f pubmed23n0427.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0427.xml.gz
  if ! gzip -d "pubmed23n0427.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0427.xml.gz"
    # rm pubmed23n0427.xml.gz
  fi
fi
if [ ! -f pubmed23n0428.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0428.xml.gz
  if ! gzip -d "pubmed23n0428.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0428.xml.gz"
    # rm pubmed23n0428.xml.gz
  fi
fi
if [ ! -f pubmed23n0429.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0429.xml.gz
  if ! gzip -d "pubmed23n0429.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0429.xml.gz"
    # rm pubmed23n0429.xml.gz
  fi
fi
if [ ! -f pubmed23n0430.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0430.xml.gz
  if ! gzip -d "pubmed23n0430.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0430.xml.gz"
    # rm pubmed23n0430.xml.gz
  fi
fi
if [ ! -f pubmed23n0431.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0431.xml.gz
  if ! gzip -d "pubmed23n0431.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0431.xml.gz"
    # rm pubmed23n0431.xml.gz
  fi
fi
if [ ! -f pubmed23n0432.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0432.xml.gz
  if ! gzip -d "pubmed23n0432.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0432.xml.gz"
    # rm pubmed23n0432.xml.gz
  fi
fi
if [ ! -f pubmed23n0433.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0433.xml.gz
  if ! gzip -d "pubmed23n0433.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0433.xml.gz"
    # rm pubmed23n0433.xml.gz
  fi
fi
if [ ! -f pubmed23n0434.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0434.xml.gz
  if ! gzip -d "pubmed23n0434.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0434.xml.gz"
    # rm pubmed23n0434.xml.gz
  fi
fi
if [ ! -f pubmed23n0435.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0435.xml.gz
  if ! gzip -d "pubmed23n0435.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0435.xml.gz"
    # rm pubmed23n0435.xml.gz
  fi
fi
if [ ! -f pubmed23n0436.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0436.xml.gz
  if ! gzip -d "pubmed23n0436.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0436.xml.gz"
    # rm pubmed23n0436.xml.gz
  fi
fi
if [ ! -f pubmed23n0437.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0437.xml.gz
  if ! gzip -d "pubmed23n0437.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0437.xml.gz"
    # rm pubmed23n0437.xml.gz
  fi
fi
if [ ! -f pubmed23n0438.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0438.xml.gz
  if ! gzip -d "pubmed23n0438.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0438.xml.gz"
    # rm pubmed23n0438.xml.gz
  fi
fi
if [ ! -f pubmed23n0439.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0439.xml.gz
  if ! gzip -d "pubmed23n0439.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0439.xml.gz"
    # rm pubmed23n0439.xml.gz
  fi
fi
if [ ! -f pubmed23n0440.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0440.xml.gz
  if ! gzip -d "pubmed23n0440.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0440.xml.gz"
    # rm pubmed23n0440.xml.gz
  fi
fi
if [ ! -f pubmed23n0441.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0441.xml.gz
  if ! gzip -d "pubmed23n0441.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0441.xml.gz"
    # rm pubmed23n0441.xml.gz
  fi
fi
if [ ! -f pubmed23n0442.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0442.xml.gz
  if ! gzip -d "pubmed23n0442.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0442.xml.gz"
    # rm pubmed23n0442.xml.gz
  fi
fi
if [ ! -f pubmed23n0443.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0443.xml.gz
  if ! gzip -d "pubmed23n0443.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0443.xml.gz"
    # rm pubmed23n0443.xml.gz
  fi
fi
if [ ! -f pubmed23n0444.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0444.xml.gz
  if ! gzip -d "pubmed23n0444.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0444.xml.gz"
    # rm pubmed23n0444.xml.gz
  fi
fi
if [ ! -f pubmed23n0445.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0445.xml.gz
  if ! gzip -d "pubmed23n0445.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0445.xml.gz"
    # rm pubmed23n0445.xml.gz
  fi
fi
if [ ! -f pubmed23n0446.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0446.xml.gz
  if ! gzip -d "pubmed23n0446.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0446.xml.gz"
    # rm pubmed23n0446.xml.gz
  fi
fi
if [ ! -f pubmed23n0447.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0447.xml.gz
  if ! gzip -d "pubmed23n0447.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0447.xml.gz"
    # rm pubmed23n0447.xml.gz
  fi
fi
if [ ! -f pubmed23n0448.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0448.xml.gz
  if ! gzip -d "pubmed23n0448.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0448.xml.gz"
    # rm pubmed23n0448.xml.gz
  fi
fi
if [ ! -f pubmed23n0449.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0449.xml.gz
  if ! gzip -d "pubmed23n0449.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0449.xml.gz"
    # rm pubmed23n0449.xml.gz
  fi
fi
if [ ! -f pubmed23n0450.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0450.xml.gz
  if ! gzip -d "pubmed23n0450.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0450.xml.gz"
    # rm pubmed23n0450.xml.gz
  fi
fi
if [ ! -f pubmed23n0451.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0451.xml.gz
  if ! gzip -d "pubmed23n0451.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0451.xml.gz"
    # rm pubmed23n0451.xml.gz
  fi
fi
if [ ! -f pubmed23n0452.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0452.xml.gz
  if ! gzip -d "pubmed23n0452.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0452.xml.gz"
    # rm pubmed23n0452.xml.gz
  fi
fi
if [ ! -f pubmed23n0453.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0453.xml.gz
  if ! gzip -d "pubmed23n0453.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0453.xml.gz"
    # rm pubmed23n0453.xml.gz
  fi
fi
if [ ! -f pubmed23n0454.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0454.xml.gz
  if ! gzip -d "pubmed23n0454.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0454.xml.gz"
    # rm pubmed23n0454.xml.gz
  fi
fi
if [ ! -f pubmed23n0455.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0455.xml.gz
  if ! gzip -d "pubmed23n0455.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0455.xml.gz"
    # rm pubmed23n0455.xml.gz
  fi
fi
if [ ! -f pubmed23n0456.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0456.xml.gz
  if ! gzip -d "pubmed23n0456.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0456.xml.gz"
    # rm pubmed23n0456.xml.gz
  fi
fi
if [ ! -f pubmed23n0457.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0457.xml.gz
  if ! gzip -d "pubmed23n0457.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0457.xml.gz"
    # rm pubmed23n0457.xml.gz
  fi
fi
if [ ! -f pubmed23n0458.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0458.xml.gz
  if ! gzip -d "pubmed23n0458.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0458.xml.gz"
    # rm pubmed23n0458.xml.gz
  fi
fi
if [ ! -f pubmed23n0459.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0459.xml.gz
  if ! gzip -d "pubmed23n0459.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0459.xml.gz"
    # rm pubmed23n0459.xml.gz
  fi
fi
if [ ! -f pubmed23n0460.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0460.xml.gz
  if ! gzip -d "pubmed23n0460.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0460.xml.gz"
    # rm pubmed23n0460.xml.gz
  fi
fi
if [ ! -f pubmed23n0461.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0461.xml.gz
  if ! gzip -d "pubmed23n0461.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0461.xml.gz"
    # rm pubmed23n0461.xml.gz
  fi
fi
if [ ! -f pubmed23n0462.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0462.xml.gz
  if ! gzip -d "pubmed23n0462.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0462.xml.gz"
    # rm pubmed23n0462.xml.gz
  fi
fi
if [ ! -f pubmed23n0463.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0463.xml.gz
  if ! gzip -d "pubmed23n0463.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0463.xml.gz"
    # rm pubmed23n0463.xml.gz
  fi
fi
if [ ! -f pubmed23n0464.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0464.xml.gz
  if ! gzip -d "pubmed23n0464.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0464.xml.gz"
    # rm pubmed23n0464.xml.gz
  fi
fi
if [ ! -f pubmed23n0465.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0465.xml.gz
  if ! gzip -d "pubmed23n0465.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0465.xml.gz"
    # rm pubmed23n0465.xml.gz
  fi
fi
if [ ! -f pubmed23n0466.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0466.xml.gz
  if ! gzip -d "pubmed23n0466.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0466.xml.gz"
    # rm pubmed23n0466.xml.gz
  fi
fi
if [ ! -f pubmed23n0467.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0467.xml.gz
  if ! gzip -d "pubmed23n0467.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0467.xml.gz"
    # rm pubmed23n0467.xml.gz
  fi
fi
if [ ! -f pubmed23n0468.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0468.xml.gz
  if ! gzip -d "pubmed23n0468.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0468.xml.gz"
    # rm pubmed23n0468.xml.gz
  fi
fi
if [ ! -f pubmed23n0469.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0469.xml.gz
  if ! gzip -d "pubmed23n0469.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0469.xml.gz"
    # rm pubmed23n0469.xml.gz
  fi
fi
if [ ! -f pubmed23n0470.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0470.xml.gz
  if ! gzip -d "pubmed23n0470.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0470.xml.gz"
    # rm pubmed23n0470.xml.gz
  fi
fi
if [ ! -f pubmed23n0471.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0471.xml.gz
  if ! gzip -d "pubmed23n0471.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0471.xml.gz"
    # rm pubmed23n0471.xml.gz
  fi
fi
if [ ! -f pubmed23n0472.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0472.xml.gz
  if ! gzip -d "pubmed23n0472.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0472.xml.gz"
    # rm pubmed23n0472.xml.gz
  fi
fi
if [ ! -f pubmed23n0473.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0473.xml.gz
  if ! gzip -d "pubmed23n0473.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0473.xml.gz"
    # rm pubmed23n0473.xml.gz
  fi
fi
if [ ! -f pubmed23n0474.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0474.xml.gz
  if ! gzip -d "pubmed23n0474.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0474.xml.gz"
    # rm pubmed23n0474.xml.gz
  fi
fi
if [ ! -f pubmed23n0475.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0475.xml.gz
  if ! gzip -d "pubmed23n0475.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0475.xml.gz"
    # rm pubmed23n0475.xml.gz
  fi
fi
if [ ! -f pubmed23n0476.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0476.xml.gz
  if ! gzip -d "pubmed23n0476.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0476.xml.gz"
    # rm pubmed23n0476.xml.gz
  fi
fi
if [ ! -f pubmed23n0477.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0477.xml.gz
  if ! gzip -d "pubmed23n0477.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0477.xml.gz"
    # rm pubmed23n0477.xml.gz
  fi
fi
if [ ! -f pubmed23n0478.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0478.xml.gz
  if ! gzip -d "pubmed23n0478.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0478.xml.gz"
    # rm pubmed23n0478.xml.gz
  fi
fi
if [ ! -f pubmed23n0479.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0479.xml.gz
  if ! gzip -d "pubmed23n0479.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0479.xml.gz"
    # rm pubmed23n0479.xml.gz
  fi
fi
if [ ! -f pubmed23n0480.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0480.xml.gz
  if ! gzip -d "pubmed23n0480.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0480.xml.gz"
    # rm pubmed23n0480.xml.gz
  fi
fi
if [ ! -f pubmed23n0481.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0481.xml.gz
  if ! gzip -d "pubmed23n0481.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0481.xml.gz"
    # rm pubmed23n0481.xml.gz
  fi
fi
if [ ! -f pubmed23n0482.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0482.xml.gz
  if ! gzip -d "pubmed23n0482.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0482.xml.gz"
    # rm pubmed23n0482.xml.gz
  fi
fi
if [ ! -f pubmed23n0483.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0483.xml.gz
  if ! gzip -d "pubmed23n0483.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0483.xml.gz"
    # rm pubmed23n0483.xml.gz
  fi
fi
if [ ! -f pubmed23n0484.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0484.xml.gz
  if ! gzip -d "pubmed23n0484.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0484.xml.gz"
    # rm pubmed23n0484.xml.gz
  fi
fi
if [ ! -f pubmed23n0485.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0485.xml.gz
  if ! gzip -d "pubmed23n0485.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0485.xml.gz"
    # rm pubmed23n0485.xml.gz
  fi
fi
if [ ! -f pubmed23n0486.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0486.xml.gz
  if ! gzip -d "pubmed23n0486.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0486.xml.gz"
    # rm pubmed23n0486.xml.gz
  fi
fi
if [ ! -f pubmed23n0487.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0487.xml.gz
  if ! gzip -d "pubmed23n0487.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0487.xml.gz"
    # rm pubmed23n0487.xml.gz
  fi
fi
if [ ! -f pubmed23n0488.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0488.xml.gz
  if ! gzip -d "pubmed23n0488.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0488.xml.gz"
    # rm pubmed23n0488.xml.gz
  fi
fi
if [ ! -f pubmed23n0489.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0489.xml.gz
  if ! gzip -d "pubmed23n0489.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0489.xml.gz"
    # rm pubmed23n0489.xml.gz
  fi
fi
if [ ! -f pubmed23n0490.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0490.xml.gz
  if ! gzip -d "pubmed23n0490.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0490.xml.gz"
    # rm pubmed23n0490.xml.gz
  fi
fi
if [ ! -f pubmed23n0491.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0491.xml.gz
  if ! gzip -d "pubmed23n0491.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0491.xml.gz"
    # rm pubmed23n0491.xml.gz
  fi
fi
if [ ! -f pubmed23n0492.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0492.xml.gz
  if ! gzip -d "pubmed23n0492.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0492.xml.gz"
    # rm pubmed23n0492.xml.gz
  fi
fi
if [ ! -f pubmed23n0493.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0493.xml.gz
  if ! gzip -d "pubmed23n0493.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0493.xml.gz"
    # rm pubmed23n0493.xml.gz
  fi
fi
if [ ! -f pubmed23n0494.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0494.xml.gz
  if ! gzip -d "pubmed23n0494.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0494.xml.gz"
    # rm pubmed23n0494.xml.gz
  fi
fi
if [ ! -f pubmed23n0495.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0495.xml.gz
  if ! gzip -d "pubmed23n0495.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0495.xml.gz"
    # rm pubmed23n0495.xml.gz
  fi
fi
if [ ! -f pubmed23n0496.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0496.xml.gz
  if ! gzip -d "pubmed23n0496.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0496.xml.gz"
    # rm pubmed23n0496.xml.gz
  fi
fi
if [ ! -f pubmed23n0497.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0497.xml.gz
  if ! gzip -d "pubmed23n0497.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0497.xml.gz"
    # rm pubmed23n0497.xml.gz
  fi
fi
if [ ! -f pubmed23n0498.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0498.xml.gz
  if ! gzip -d "pubmed23n0498.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0498.xml.gz"
    # rm pubmed23n0498.xml.gz
  fi
fi
if [ ! -f pubmed23n0499.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0499.xml.gz
  if ! gzip -d "pubmed23n0499.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0499.xml.gz"
    # rm pubmed23n0499.xml.gz
  fi
fi
if [ ! -f pubmed23n0500.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0500.xml.gz
  if ! gzip -d "pubmed23n0500.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0500.xml.gz"
    # rm pubmed23n0500.xml.gz
  fi
fi
if [ ! -f pubmed23n0501.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0501.xml.gz
  if ! gzip -d "pubmed23n0501.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0501.xml.gz"
    # rm pubmed23n0501.xml.gz
  fi
fi
if [ ! -f pubmed23n0502.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0502.xml.gz
  if ! gzip -d "pubmed23n0502.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0502.xml.gz"
    # rm pubmed23n0502.xml.gz
  fi
fi
if [ ! -f pubmed23n0503.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0503.xml.gz
  if ! gzip -d "pubmed23n0503.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0503.xml.gz"
    # rm pubmed23n0503.xml.gz
  fi
fi
if [ ! -f pubmed23n0504.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0504.xml.gz
  if ! gzip -d "pubmed23n0504.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0504.xml.gz"
    # rm pubmed23n0504.xml.gz
  fi
fi
if [ ! -f pubmed23n0505.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0505.xml.gz
  if ! gzip -d "pubmed23n0505.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0505.xml.gz"
    # rm pubmed23n0505.xml.gz
  fi
fi
if [ ! -f pubmed23n0506.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0506.xml.gz
  if ! gzip -d "pubmed23n0506.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0506.xml.gz"
    # rm pubmed23n0506.xml.gz
  fi
fi
if [ ! -f pubmed23n0507.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0507.xml.gz
  if ! gzip -d "pubmed23n0507.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0507.xml.gz"
    # rm pubmed23n0507.xml.gz
  fi
fi
if [ ! -f pubmed23n0508.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0508.xml.gz
  if ! gzip -d "pubmed23n0508.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0508.xml.gz"
    # rm pubmed23n0508.xml.gz
  fi
fi
if [ ! -f pubmed23n0509.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0509.xml.gz
  if ! gzip -d "pubmed23n0509.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0509.xml.gz"
    # rm pubmed23n0509.xml.gz
  fi
fi
if [ ! -f pubmed23n0510.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0510.xml.gz
  if ! gzip -d "pubmed23n0510.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0510.xml.gz"
    # rm pubmed23n0510.xml.gz
  fi
fi
if [ ! -f pubmed23n0511.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0511.xml.gz
  if ! gzip -d "pubmed23n0511.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0511.xml.gz"
    # rm pubmed23n0511.xml.gz
  fi
fi
if [ ! -f pubmed23n0512.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0512.xml.gz
  if ! gzip -d "pubmed23n0512.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0512.xml.gz"
    # rm pubmed23n0512.xml.gz
  fi
fi
if [ ! -f pubmed23n0513.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0513.xml.gz
  if ! gzip -d "pubmed23n0513.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0513.xml.gz"
    # rm pubmed23n0513.xml.gz
  fi
fi
if [ ! -f pubmed23n0514.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0514.xml.gz
  if ! gzip -d "pubmed23n0514.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0514.xml.gz"
    # rm pubmed23n0514.xml.gz
  fi
fi
if [ ! -f pubmed23n0515.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0515.xml.gz
  if ! gzip -d "pubmed23n0515.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0515.xml.gz"
    # rm pubmed23n0515.xml.gz
  fi
fi
if [ ! -f pubmed23n0516.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0516.xml.gz
  if ! gzip -d "pubmed23n0516.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0516.xml.gz"
    # rm pubmed23n0516.xml.gz
  fi
fi
if [ ! -f pubmed23n0517.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0517.xml.gz
  if ! gzip -d "pubmed23n0517.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0517.xml.gz"
    # rm pubmed23n0517.xml.gz
  fi
fi
if [ ! -f pubmed23n0518.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0518.xml.gz
  if ! gzip -d "pubmed23n0518.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0518.xml.gz"
    # rm pubmed23n0518.xml.gz
  fi
fi
if [ ! -f pubmed23n0519.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0519.xml.gz
  if ! gzip -d "pubmed23n0519.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0519.xml.gz"
    # rm pubmed23n0519.xml.gz
  fi
fi
if [ ! -f pubmed23n0520.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0520.xml.gz
  if ! gzip -d "pubmed23n0520.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0520.xml.gz"
    # rm pubmed23n0520.xml.gz
  fi
fi
if [ ! -f pubmed23n0521.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0521.xml.gz
  if ! gzip -d "pubmed23n0521.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0521.xml.gz"
    # rm pubmed23n0521.xml.gz
  fi
fi
if [ ! -f pubmed23n0522.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0522.xml.gz
  if ! gzip -d "pubmed23n0522.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0522.xml.gz"
    # rm pubmed23n0522.xml.gz
  fi
fi
if [ ! -f pubmed23n0523.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0523.xml.gz
  if ! gzip -d "pubmed23n0523.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0523.xml.gz"
    # rm pubmed23n0523.xml.gz
  fi
fi
if [ ! -f pubmed23n0524.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0524.xml.gz
  if ! gzip -d "pubmed23n0524.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0524.xml.gz"
    # rm pubmed23n0524.xml.gz
  fi
fi
if [ ! -f pubmed23n0525.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0525.xml.gz
  if ! gzip -d "pubmed23n0525.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0525.xml.gz"
    # rm pubmed23n0525.xml.gz
  fi
fi
if [ ! -f pubmed23n0526.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0526.xml.gz
  if ! gzip -d "pubmed23n0526.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0526.xml.gz"
    # rm pubmed23n0526.xml.gz
  fi
fi
if [ ! -f pubmed23n0527.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0527.xml.gz
  if ! gzip -d "pubmed23n0527.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0527.xml.gz"
    # rm pubmed23n0527.xml.gz
  fi
fi
if [ ! -f pubmed23n0528.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0528.xml.gz
  if ! gzip -d "pubmed23n0528.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0528.xml.gz"
    # rm pubmed23n0528.xml.gz
  fi
fi
if [ ! -f pubmed23n0529.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0529.xml.gz
  if ! gzip -d "pubmed23n0529.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0529.xml.gz"
    # rm pubmed23n0529.xml.gz
  fi
fi
if [ ! -f pubmed23n0530.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0530.xml.gz
  if ! gzip -d "pubmed23n0530.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0530.xml.gz"
    # rm pubmed23n0530.xml.gz
  fi
fi
if [ ! -f pubmed23n0531.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0531.xml.gz
  if ! gzip -d "pubmed23n0531.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0531.xml.gz"
    # rm pubmed23n0531.xml.gz
  fi
fi
if [ ! -f pubmed23n0532.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0532.xml.gz
  if ! gzip -d "pubmed23n0532.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0532.xml.gz"
    # rm pubmed23n0532.xml.gz
  fi
fi
if [ ! -f pubmed23n0533.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0533.xml.gz
  if ! gzip -d "pubmed23n0533.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0533.xml.gz"
    # rm pubmed23n0533.xml.gz
  fi
fi
if [ ! -f pubmed23n0534.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0534.xml.gz
  if ! gzip -d "pubmed23n0534.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0534.xml.gz"
    # rm pubmed23n0534.xml.gz
  fi
fi
if [ ! -f pubmed23n0535.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0535.xml.gz
  if ! gzip -d "pubmed23n0535.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0535.xml.gz"
    # rm pubmed23n0535.xml.gz
  fi
fi
if [ ! -f pubmed23n0536.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0536.xml.gz
  if ! gzip -d "pubmed23n0536.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0536.xml.gz"
    # rm pubmed23n0536.xml.gz
  fi
fi
if [ ! -f pubmed23n0537.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0537.xml.gz
  if ! gzip -d "pubmed23n0537.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0537.xml.gz"
    # rm pubmed23n0537.xml.gz
  fi
fi
if [ ! -f pubmed23n0538.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0538.xml.gz
  if ! gzip -d "pubmed23n0538.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0538.xml.gz"
    # rm pubmed23n0538.xml.gz
  fi
fi
if [ ! -f pubmed23n0539.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0539.xml.gz
  if ! gzip -d "pubmed23n0539.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0539.xml.gz"
    # rm pubmed23n0539.xml.gz
  fi
fi
if [ ! -f pubmed23n0540.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0540.xml.gz
  if ! gzip -d "pubmed23n0540.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0540.xml.gz"
    # rm pubmed23n0540.xml.gz
  fi
fi
if [ ! -f pubmed23n0541.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0541.xml.gz
  if ! gzip -d "pubmed23n0541.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0541.xml.gz"
    # rm pubmed23n0541.xml.gz
  fi
fi
if [ ! -f pubmed23n0542.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0542.xml.gz
  if ! gzip -d "pubmed23n0542.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0542.xml.gz"
    # rm pubmed23n0542.xml.gz
  fi
fi
if [ ! -f pubmed23n0543.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0543.xml.gz
  if ! gzip -d "pubmed23n0543.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0543.xml.gz"
    # rm pubmed23n0543.xml.gz
  fi
fi
if [ ! -f pubmed23n0544.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0544.xml.gz
  if ! gzip -d "pubmed23n0544.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0544.xml.gz"
    # rm pubmed23n0544.xml.gz
  fi
fi
if [ ! -f pubmed23n0545.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0545.xml.gz
  if ! gzip -d "pubmed23n0545.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0545.xml.gz"
    # rm pubmed23n0545.xml.gz
  fi
fi
if [ ! -f pubmed23n0546.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0546.xml.gz
  if ! gzip -d "pubmed23n0546.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0546.xml.gz"
    # rm pubmed23n0546.xml.gz
  fi
fi
if [ ! -f pubmed23n0547.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0547.xml.gz
  if ! gzip -d "pubmed23n0547.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0547.xml.gz"
    # rm pubmed23n0547.xml.gz
  fi
fi
if [ ! -f pubmed23n0548.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0548.xml.gz
  if ! gzip -d "pubmed23n0548.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0548.xml.gz"
    # rm pubmed23n0548.xml.gz
  fi
fi
if [ ! -f pubmed23n0549.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0549.xml.gz
  if ! gzip -d "pubmed23n0549.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0549.xml.gz"
    # rm pubmed23n0549.xml.gz
  fi
fi
if [ ! -f pubmed23n0550.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0550.xml.gz
  if ! gzip -d "pubmed23n0550.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0550.xml.gz"
    # rm pubmed23n0550.xml.gz
  fi
fi
if [ ! -f pubmed23n0551.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0551.xml.gz
  if ! gzip -d "pubmed23n0551.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0551.xml.gz"
    # rm pubmed23n0551.xml.gz
  fi
fi
if [ ! -f pubmed23n0552.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0552.xml.gz
  if ! gzip -d "pubmed23n0552.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0552.xml.gz"
    # rm pubmed23n0552.xml.gz
  fi
fi
if [ ! -f pubmed23n0553.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0553.xml.gz
  if ! gzip -d "pubmed23n0553.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0553.xml.gz"
    # rm pubmed23n0553.xml.gz
  fi
fi
if [ ! -f pubmed23n0554.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0554.xml.gz
  if ! gzip -d "pubmed23n0554.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0554.xml.gz"
    # rm pubmed23n0554.xml.gz
  fi
fi
if [ ! -f pubmed23n0555.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0555.xml.gz
  if ! gzip -d "pubmed23n0555.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0555.xml.gz"
    # rm pubmed23n0555.xml.gz
  fi
fi
if [ ! -f pubmed23n0556.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0556.xml.gz
  if ! gzip -d "pubmed23n0556.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0556.xml.gz"
    # rm pubmed23n0556.xml.gz
  fi
fi
if [ ! -f pubmed23n0557.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0557.xml.gz
  if ! gzip -d "pubmed23n0557.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0557.xml.gz"
    # rm pubmed23n0557.xml.gz
  fi
fi
if [ ! -f pubmed23n0558.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0558.xml.gz
  if ! gzip -d "pubmed23n0558.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0558.xml.gz"
    # rm pubmed23n0558.xml.gz
  fi
fi
if [ ! -f pubmed23n0559.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0559.xml.gz
  if ! gzip -d "pubmed23n0559.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0559.xml.gz"
    # rm pubmed23n0559.xml.gz
  fi
fi
if [ ! -f pubmed23n0560.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0560.xml.gz
  if ! gzip -d "pubmed23n0560.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0560.xml.gz"
    # rm pubmed23n0560.xml.gz
  fi
fi
if [ ! -f pubmed23n0561.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0561.xml.gz
  if ! gzip -d "pubmed23n0561.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0561.xml.gz"
    # rm pubmed23n0561.xml.gz
  fi
fi
if [ ! -f pubmed23n0562.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0562.xml.gz
  if ! gzip -d "pubmed23n0562.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0562.xml.gz"
    # rm pubmed23n0562.xml.gz
  fi
fi
if [ ! -f pubmed23n0563.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0563.xml.gz
  if ! gzip -d "pubmed23n0563.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0563.xml.gz"
    # rm pubmed23n0563.xml.gz
  fi
fi
if [ ! -f pubmed23n0564.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0564.xml.gz
  if ! gzip -d "pubmed23n0564.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0564.xml.gz"
    # rm pubmed23n0564.xml.gz
  fi
fi
if [ ! -f pubmed23n0565.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0565.xml.gz
  if ! gzip -d "pubmed23n0565.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0565.xml.gz"
    # rm pubmed23n0565.xml.gz
  fi
fi
if [ ! -f pubmed23n0566.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0566.xml.gz
  if ! gzip -d "pubmed23n0566.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0566.xml.gz"
    # rm pubmed23n0566.xml.gz
  fi
fi
if [ ! -f pubmed23n0567.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0567.xml.gz
  if ! gzip -d "pubmed23n0567.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0567.xml.gz"
    # rm pubmed23n0567.xml.gz
  fi
fi
if [ ! -f pubmed23n0568.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0568.xml.gz
  if ! gzip -d "pubmed23n0568.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0568.xml.gz"
    # rm pubmed23n0568.xml.gz
  fi
fi
if [ ! -f pubmed23n0569.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0569.xml.gz
  if ! gzip -d "pubmed23n0569.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0569.xml.gz"
    # rm pubmed23n0569.xml.gz
  fi
fi
if [ ! -f pubmed23n0570.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0570.xml.gz
  if ! gzip -d "pubmed23n0570.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0570.xml.gz"
    # rm pubmed23n0570.xml.gz
  fi
fi
if [ ! -f pubmed23n0571.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0571.xml.gz
  if ! gzip -d "pubmed23n0571.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0571.xml.gz"
    # rm pubmed23n0571.xml.gz
  fi
fi
if [ ! -f pubmed23n0572.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0572.xml.gz
  if ! gzip -d "pubmed23n0572.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0572.xml.gz"
    # rm pubmed23n0572.xml.gz
  fi
fi
if [ ! -f pubmed23n0573.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0573.xml.gz
  if ! gzip -d "pubmed23n0573.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0573.xml.gz"
    # rm pubmed23n0573.xml.gz
  fi
fi
if [ ! -f pubmed23n0574.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0574.xml.gz
  if ! gzip -d "pubmed23n0574.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0574.xml.gz"
    # rm pubmed23n0574.xml.gz
  fi
fi
if [ ! -f pubmed23n0575.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0575.xml.gz
  if ! gzip -d "pubmed23n0575.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0575.xml.gz"
    # rm pubmed23n0575.xml.gz
  fi
fi
if [ ! -f pubmed23n0576.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0576.xml.gz
  if ! gzip -d "pubmed23n0576.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0576.xml.gz"
    # rm pubmed23n0576.xml.gz
  fi
fi
if [ ! -f pubmed23n0577.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0577.xml.gz
  if ! gzip -d "pubmed23n0577.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0577.xml.gz"
    # rm pubmed23n0577.xml.gz
  fi
fi
if [ ! -f pubmed23n0578.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0578.xml.gz
  if ! gzip -d "pubmed23n0578.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0578.xml.gz"
    # rm pubmed23n0578.xml.gz
  fi
fi
if [ ! -f pubmed23n0579.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0579.xml.gz
  if ! gzip -d "pubmed23n0579.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0579.xml.gz"
    # rm pubmed23n0579.xml.gz
  fi
fi
if [ ! -f pubmed23n0580.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0580.xml.gz
  if ! gzip -d "pubmed23n0580.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0580.xml.gz"
    # rm pubmed23n0580.xml.gz
  fi
fi
if [ ! -f pubmed23n0581.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0581.xml.gz
  if ! gzip -d "pubmed23n0581.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0581.xml.gz"
    # rm pubmed23n0581.xml.gz
  fi
fi
if [ ! -f pubmed23n0582.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0582.xml.gz
  if ! gzip -d "pubmed23n0582.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0582.xml.gz"
    # rm pubmed23n0582.xml.gz
  fi
fi
if [ ! -f pubmed23n0583.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0583.xml.gz
  if ! gzip -d "pubmed23n0583.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0583.xml.gz"
    # rm pubmed23n0583.xml.gz
  fi
fi
if [ ! -f pubmed23n0584.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0584.xml.gz
  if ! gzip -d "pubmed23n0584.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0584.xml.gz"
    # rm pubmed23n0584.xml.gz
  fi
fi
if [ ! -f pubmed23n0585.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0585.xml.gz
  if ! gzip -d "pubmed23n0585.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0585.xml.gz"
    # rm pubmed23n0585.xml.gz
  fi
fi
if [ ! -f pubmed23n0586.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0586.xml.gz
  if ! gzip -d "pubmed23n0586.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0586.xml.gz"
    # rm pubmed23n0586.xml.gz
  fi
fi
if [ ! -f pubmed23n0587.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0587.xml.gz
  if ! gzip -d "pubmed23n0587.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0587.xml.gz"
    # rm pubmed23n0587.xml.gz
  fi
fi
if [ ! -f pubmed23n0588.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0588.xml.gz
  if ! gzip -d "pubmed23n0588.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0588.xml.gz"
    # rm pubmed23n0588.xml.gz
  fi
fi
if [ ! -f pubmed23n0589.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0589.xml.gz
  if ! gzip -d "pubmed23n0589.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0589.xml.gz"
    # rm pubmed23n0589.xml.gz
  fi
fi
if [ ! -f pubmed23n0590.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0590.xml.gz
  if ! gzip -d "pubmed23n0590.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0590.xml.gz"
    # rm pubmed23n0590.xml.gz
  fi
fi
if [ ! -f pubmed23n0591.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0591.xml.gz
  if ! gzip -d "pubmed23n0591.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0591.xml.gz"
    # rm pubmed23n0591.xml.gz
  fi
fi
if [ ! -f pubmed23n0592.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0592.xml.gz
  if ! gzip -d "pubmed23n0592.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0592.xml.gz"
    # rm pubmed23n0592.xml.gz
  fi
fi
if [ ! -f pubmed23n0593.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0593.xml.gz
  if ! gzip -d "pubmed23n0593.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0593.xml.gz"
    # rm pubmed23n0593.xml.gz
  fi
fi
if [ ! -f pubmed23n0594.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0594.xml.gz
  if ! gzip -d "pubmed23n0594.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0594.xml.gz"
    # rm pubmed23n0594.xml.gz
  fi
fi
if [ ! -f pubmed23n0595.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0595.xml.gz
  if ! gzip -d "pubmed23n0595.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0595.xml.gz"
    # rm pubmed23n0595.xml.gz
  fi
fi
if [ ! -f pubmed23n0596.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0596.xml.gz
  if ! gzip -d "pubmed23n0596.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0596.xml.gz"
    # rm pubmed23n0596.xml.gz
  fi
fi
if [ ! -f pubmed23n0597.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0597.xml.gz
  if ! gzip -d "pubmed23n0597.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0597.xml.gz"
    # rm pubmed23n0597.xml.gz
  fi
fi
if [ ! -f pubmed23n0598.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0598.xml.gz
  if ! gzip -d "pubmed23n0598.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0598.xml.gz"
    # rm pubmed23n0598.xml.gz
  fi
fi
if [ ! -f pubmed23n0599.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0599.xml.gz
  if ! gzip -d "pubmed23n0599.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0599.xml.gz"
    # rm pubmed23n0599.xml.gz
  fi
fi
if [ ! -f pubmed23n0600.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0600.xml.gz
  if ! gzip -d "pubmed23n0600.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0600.xml.gz"
    # rm pubmed23n0600.xml.gz
  fi
fi
if [ ! -f pubmed23n0601.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0601.xml.gz
  if ! gzip -d "pubmed23n0601.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0601.xml.gz"
    # rm pubmed23n0601.xml.gz
  fi
fi
if [ ! -f pubmed23n0602.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0602.xml.gz
  if ! gzip -d "pubmed23n0602.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0602.xml.gz"
    # rm pubmed23n0602.xml.gz
  fi
fi
if [ ! -f pubmed23n0603.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0603.xml.gz
  if ! gzip -d "pubmed23n0603.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0603.xml.gz"
    # rm pubmed23n0603.xml.gz
  fi
fi
if [ ! -f pubmed23n0604.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0604.xml.gz
  if ! gzip -d "pubmed23n0604.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0604.xml.gz"
    # rm pubmed23n0604.xml.gz
  fi
fi
if [ ! -f pubmed23n0605.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0605.xml.gz
  if ! gzip -d "pubmed23n0605.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0605.xml.gz"
    # rm pubmed23n0605.xml.gz
  fi
fi
if [ ! -f pubmed23n0606.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0606.xml.gz
  if ! gzip -d "pubmed23n0606.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0606.xml.gz"
    # rm pubmed23n0606.xml.gz
  fi
fi
if [ ! -f pubmed23n0607.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0607.xml.gz
  if ! gzip -d "pubmed23n0607.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0607.xml.gz"
    # rm pubmed23n0607.xml.gz
  fi
fi
if [ ! -f pubmed23n0608.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0608.xml.gz
  if ! gzip -d "pubmed23n0608.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0608.xml.gz"
    # rm pubmed23n0608.xml.gz
  fi
fi
if [ ! -f pubmed23n0609.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0609.xml.gz
  if ! gzip -d "pubmed23n0609.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0609.xml.gz"
    # rm pubmed23n0609.xml.gz
  fi
fi
if [ ! -f pubmed23n0610.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0610.xml.gz
  if ! gzip -d "pubmed23n0610.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0610.xml.gz"
    # rm pubmed23n0610.xml.gz
  fi
fi
if [ ! -f pubmed23n0611.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0611.xml.gz
  if ! gzip -d "pubmed23n0611.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0611.xml.gz"
    # rm pubmed23n0611.xml.gz
  fi
fi
if [ ! -f pubmed23n0612.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0612.xml.gz
  if ! gzip -d "pubmed23n0612.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0612.xml.gz"
    # rm pubmed23n0612.xml.gz
  fi
fi
if [ ! -f pubmed23n0613.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0613.xml.gz
  if ! gzip -d "pubmed23n0613.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0613.xml.gz"
    # rm pubmed23n0613.xml.gz
  fi
fi
if [ ! -f pubmed23n0614.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0614.xml.gz
  if ! gzip -d "pubmed23n0614.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0614.xml.gz"
    # rm pubmed23n0614.xml.gz
  fi
fi
if [ ! -f pubmed23n0615.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0615.xml.gz
  if ! gzip -d "pubmed23n0615.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0615.xml.gz"
    # rm pubmed23n0615.xml.gz
  fi
fi
if [ ! -f pubmed23n0616.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0616.xml.gz
  if ! gzip -d "pubmed23n0616.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0616.xml.gz"
    # rm pubmed23n0616.xml.gz
  fi
fi
if [ ! -f pubmed23n0617.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0617.xml.gz
  if ! gzip -d "pubmed23n0617.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0617.xml.gz"
    # rm pubmed23n0617.xml.gz
  fi
fi
if [ ! -f pubmed23n0618.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0618.xml.gz
  if ! gzip -d "pubmed23n0618.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0618.xml.gz"
    # rm pubmed23n0618.xml.gz
  fi
fi
if [ ! -f pubmed23n0619.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0619.xml.gz
  if ! gzip -d "pubmed23n0619.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0619.xml.gz"
    # rm pubmed23n0619.xml.gz
  fi
fi
if [ ! -f pubmed23n0620.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0620.xml.gz
  if ! gzip -d "pubmed23n0620.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0620.xml.gz"
    # rm pubmed23n0620.xml.gz
  fi
fi
if [ ! -f pubmed23n0621.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0621.xml.gz
  if ! gzip -d "pubmed23n0621.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0621.xml.gz"
    # rm pubmed23n0621.xml.gz
  fi
fi
if [ ! -f pubmed23n0622.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0622.xml.gz
  if ! gzip -d "pubmed23n0622.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0622.xml.gz"
    # rm pubmed23n0622.xml.gz
  fi
fi
if [ ! -f pubmed23n0623.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0623.xml.gz
  if ! gzip -d "pubmed23n0623.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0623.xml.gz"
    # rm pubmed23n0623.xml.gz
  fi
fi
if [ ! -f pubmed23n0624.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0624.xml.gz
  if ! gzip -d "pubmed23n0624.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0624.xml.gz"
    # rm pubmed23n0624.xml.gz
  fi
fi
if [ ! -f pubmed23n0625.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0625.xml.gz
  if ! gzip -d "pubmed23n0625.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0625.xml.gz"
    # rm pubmed23n0625.xml.gz
  fi
fi
if [ ! -f pubmed23n0626.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0626.xml.gz
  if ! gzip -d "pubmed23n0626.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0626.xml.gz"
    # rm pubmed23n0626.xml.gz
  fi
fi
if [ ! -f pubmed23n0627.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0627.xml.gz
  if ! gzip -d "pubmed23n0627.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0627.xml.gz"
    # rm pubmed23n0627.xml.gz
  fi
fi
if [ ! -f pubmed23n0628.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0628.xml.gz
  if ! gzip -d "pubmed23n0628.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0628.xml.gz"
    # rm pubmed23n0628.xml.gz
  fi
fi
if [ ! -f pubmed23n0629.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0629.xml.gz
  if ! gzip -d "pubmed23n0629.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0629.xml.gz"
    # rm pubmed23n0629.xml.gz
  fi
fi
if [ ! -f pubmed23n0630.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0630.xml.gz
  if ! gzip -d "pubmed23n0630.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0630.xml.gz"
    # rm pubmed23n0630.xml.gz
  fi
fi
if [ ! -f pubmed23n0631.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0631.xml.gz
  if ! gzip -d "pubmed23n0631.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0631.xml.gz"
    # rm pubmed23n0631.xml.gz
  fi
fi
if [ ! -f pubmed23n0632.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0632.xml.gz
  if ! gzip -d "pubmed23n0632.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0632.xml.gz"
    # rm pubmed23n0632.xml.gz
  fi
fi
if [ ! -f pubmed23n0633.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0633.xml.gz
  if ! gzip -d "pubmed23n0633.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0633.xml.gz"
    # rm pubmed23n0633.xml.gz
  fi
fi
if [ ! -f pubmed23n0634.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0634.xml.gz
  if ! gzip -d "pubmed23n0634.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0634.xml.gz"
    # rm pubmed23n0634.xml.gz
  fi
fi
if [ ! -f pubmed23n0635.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0635.xml.gz
  if ! gzip -d "pubmed23n0635.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0635.xml.gz"
    # rm pubmed23n0635.xml.gz
  fi
fi
if [ ! -f pubmed23n0636.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0636.xml.gz
  if ! gzip -d "pubmed23n0636.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0636.xml.gz"
    # rm pubmed23n0636.xml.gz
  fi
fi
if [ ! -f pubmed23n0637.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0637.xml.gz
  if ! gzip -d "pubmed23n0637.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0637.xml.gz"
    # rm pubmed23n0637.xml.gz
  fi
fi
if [ ! -f pubmed23n0638.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0638.xml.gz
  if ! gzip -d "pubmed23n0638.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0638.xml.gz"
    # rm pubmed23n0638.xml.gz
  fi
fi
if [ ! -f pubmed23n0639.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0639.xml.gz
  if ! gzip -d "pubmed23n0639.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0639.xml.gz"
    # rm pubmed23n0639.xml.gz
  fi
fi
if [ ! -f pubmed23n0640.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0640.xml.gz
  if ! gzip -d "pubmed23n0640.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0640.xml.gz"
    # rm pubmed23n0640.xml.gz
  fi
fi
if [ ! -f pubmed23n0641.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0641.xml.gz
  if ! gzip -d "pubmed23n0641.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0641.xml.gz"
    # rm pubmed23n0641.xml.gz
  fi
fi
if [ ! -f pubmed23n0642.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0642.xml.gz
  if ! gzip -d "pubmed23n0642.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0642.xml.gz"
    # rm pubmed23n0642.xml.gz
  fi
fi
if [ ! -f pubmed23n0643.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0643.xml.gz
  if ! gzip -d "pubmed23n0643.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0643.xml.gz"
    # rm pubmed23n0643.xml.gz
  fi
fi
if [ ! -f pubmed23n0644.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0644.xml.gz
  if ! gzip -d "pubmed23n0644.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0644.xml.gz"
    # rm pubmed23n0644.xml.gz
  fi
fi
if [ ! -f pubmed23n0645.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0645.xml.gz
  if ! gzip -d "pubmed23n0645.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0645.xml.gz"
    # rm pubmed23n0645.xml.gz
  fi
fi
if [ ! -f pubmed23n0646.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0646.xml.gz
  if ! gzip -d "pubmed23n0646.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0646.xml.gz"
    # rm pubmed23n0646.xml.gz
  fi
fi
if [ ! -f pubmed23n0647.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0647.xml.gz
  if ! gzip -d "pubmed23n0647.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0647.xml.gz"
    # rm pubmed23n0647.xml.gz
  fi
fi
if [ ! -f pubmed23n0648.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0648.xml.gz
  if ! gzip -d "pubmed23n0648.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0648.xml.gz"
    # rm pubmed23n0648.xml.gz
  fi
fi
if [ ! -f pubmed23n0649.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0649.xml.gz
  if ! gzip -d "pubmed23n0649.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0649.xml.gz"
    # rm pubmed23n0649.xml.gz
  fi
fi
if [ ! -f pubmed23n0650.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0650.xml.gz
  if ! gzip -d "pubmed23n0650.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0650.xml.gz"
    # rm pubmed23n0650.xml.gz
  fi
fi
if [ ! -f pubmed23n0651.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0651.xml.gz
  if ! gzip -d "pubmed23n0651.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0651.xml.gz"
    # rm pubmed23n0651.xml.gz
  fi
fi
if [ ! -f pubmed23n0652.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0652.xml.gz
  if ! gzip -d "pubmed23n0652.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0652.xml.gz"
    # rm pubmed23n0652.xml.gz
  fi
fi
if [ ! -f pubmed23n0653.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0653.xml.gz
  if ! gzip -d "pubmed23n0653.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0653.xml.gz"
    # rm pubmed23n0653.xml.gz
  fi
fi
if [ ! -f pubmed23n0654.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0654.xml.gz
  if ! gzip -d "pubmed23n0654.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0654.xml.gz"
    # rm pubmed23n0654.xml.gz
  fi
fi
if [ ! -f pubmed23n0655.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0655.xml.gz
  if ! gzip -d "pubmed23n0655.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0655.xml.gz"
    # rm pubmed23n0655.xml.gz
  fi
fi
if [ ! -f pubmed23n0656.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0656.xml.gz
  if ! gzip -d "pubmed23n0656.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0656.xml.gz"
    # rm pubmed23n0656.xml.gz
  fi
fi
if [ ! -f pubmed23n0657.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0657.xml.gz
  if ! gzip -d "pubmed23n0657.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0657.xml.gz"
    # rm pubmed23n0657.xml.gz
  fi
fi
if [ ! -f pubmed23n0658.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0658.xml.gz
  if ! gzip -d "pubmed23n0658.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0658.xml.gz"
    # rm pubmed23n0658.xml.gz
  fi
fi
if [ ! -f pubmed23n0659.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0659.xml.gz
  if ! gzip -d "pubmed23n0659.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0659.xml.gz"
    # rm pubmed23n0659.xml.gz
  fi
fi
if [ ! -f pubmed23n0660.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0660.xml.gz
  if ! gzip -d "pubmed23n0660.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0660.xml.gz"
    # rm pubmed23n0660.xml.gz
  fi
fi
if [ ! -f pubmed23n0661.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0661.xml.gz
  if ! gzip -d "pubmed23n0661.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0661.xml.gz"
    # rm pubmed23n0661.xml.gz
  fi
fi
if [ ! -f pubmed23n0662.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0662.xml.gz
  if ! gzip -d "pubmed23n0662.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0662.xml.gz"
    # rm pubmed23n0662.xml.gz
  fi
fi
if [ ! -f pubmed23n0663.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0663.xml.gz
  if ! gzip -d "pubmed23n0663.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0663.xml.gz"
    # rm pubmed23n0663.xml.gz
  fi
fi
if [ ! -f pubmed23n0664.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0664.xml.gz
  if ! gzip -d "pubmed23n0664.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0664.xml.gz"
    # rm pubmed23n0664.xml.gz
  fi
fi
if [ ! -f pubmed23n0665.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0665.xml.gz
  if ! gzip -d "pubmed23n0665.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0665.xml.gz"
    # rm pubmed23n0665.xml.gz
  fi
fi
if [ ! -f pubmed23n0666.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0666.xml.gz
  if ! gzip -d "pubmed23n0666.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0666.xml.gz"
    # rm pubmed23n0666.xml.gz
  fi
fi
if [ ! -f pubmed23n0667.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0667.xml.gz
  if ! gzip -d "pubmed23n0667.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0667.xml.gz"
    # rm pubmed23n0667.xml.gz
  fi
fi
if [ ! -f pubmed23n0668.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0668.xml.gz
  if ! gzip -d "pubmed23n0668.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0668.xml.gz"
    # rm pubmed23n0668.xml.gz
  fi
fi
if [ ! -f pubmed23n0669.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0669.xml.gz
  if ! gzip -d "pubmed23n0669.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0669.xml.gz"
    # rm pubmed23n0669.xml.gz
  fi
fi
if [ ! -f pubmed23n0670.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0670.xml.gz
  if ! gzip -d "pubmed23n0670.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0670.xml.gz"
    # rm pubmed23n0670.xml.gz
  fi
fi
if [ ! -f pubmed23n0671.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0671.xml.gz
  if ! gzip -d "pubmed23n0671.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0671.xml.gz"
    # rm pubmed23n0671.xml.gz
  fi
fi
if [ ! -f pubmed23n0672.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0672.xml.gz
  if ! gzip -d "pubmed23n0672.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0672.xml.gz"
    # rm pubmed23n0672.xml.gz
  fi
fi
if [ ! -f pubmed23n0673.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0673.xml.gz
  if ! gzip -d "pubmed23n0673.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0673.xml.gz"
    # rm pubmed23n0673.xml.gz
  fi
fi
if [ ! -f pubmed23n0674.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0674.xml.gz
  if ! gzip -d "pubmed23n0674.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0674.xml.gz"
    # rm pubmed23n0674.xml.gz
  fi
fi
if [ ! -f pubmed23n0675.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0675.xml.gz
  if ! gzip -d "pubmed23n0675.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0675.xml.gz"
    # rm pubmed23n0675.xml.gz
  fi
fi
if [ ! -f pubmed23n0676.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0676.xml.gz
  if ! gzip -d "pubmed23n0676.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0676.xml.gz"
    # rm pubmed23n0676.xml.gz
  fi
fi
if [ ! -f pubmed23n0677.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0677.xml.gz
  if ! gzip -d "pubmed23n0677.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0677.xml.gz"
    # rm pubmed23n0677.xml.gz
  fi
fi
if [ ! -f pubmed23n0678.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0678.xml.gz
  if ! gzip -d "pubmed23n0678.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0678.xml.gz"
    # rm pubmed23n0678.xml.gz
  fi
fi
if [ ! -f pubmed23n0679.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0679.xml.gz
  if ! gzip -d "pubmed23n0679.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0679.xml.gz"
    # rm pubmed23n0679.xml.gz
  fi
fi
if [ ! -f pubmed23n0680.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0680.xml.gz
  if ! gzip -d "pubmed23n0680.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0680.xml.gz"
    # rm pubmed23n0680.xml.gz
  fi
fi
if [ ! -f pubmed23n0681.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0681.xml.gz
  if ! gzip -d "pubmed23n0681.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0681.xml.gz"
    # rm pubmed23n0681.xml.gz
  fi
fi
if [ ! -f pubmed23n0682.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0682.xml.gz
  if ! gzip -d "pubmed23n0682.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0682.xml.gz"
    # rm pubmed23n0682.xml.gz
  fi
fi
if [ ! -f pubmed23n0683.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0683.xml.gz
  if ! gzip -d "pubmed23n0683.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0683.xml.gz"
    # rm pubmed23n0683.xml.gz
  fi
fi
if [ ! -f pubmed23n0684.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0684.xml.gz
  if ! gzip -d "pubmed23n0684.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0684.xml.gz"
    # rm pubmed23n0684.xml.gz
  fi
fi
if [ ! -f pubmed23n0685.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0685.xml.gz
  if ! gzip -d "pubmed23n0685.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0685.xml.gz"
    # rm pubmed23n0685.xml.gz
  fi
fi
if [ ! -f pubmed23n0686.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0686.xml.gz
  if ! gzip -d "pubmed23n0686.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0686.xml.gz"
    # rm pubmed23n0686.xml.gz
  fi
fi
if [ ! -f pubmed23n0687.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0687.xml.gz
  if ! gzip -d "pubmed23n0687.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0687.xml.gz"
    # rm pubmed23n0687.xml.gz
  fi
fi
if [ ! -f pubmed23n0688.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0688.xml.gz
  if ! gzip -d "pubmed23n0688.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0688.xml.gz"
    # rm pubmed23n0688.xml.gz
  fi
fi
if [ ! -f pubmed23n0689.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0689.xml.gz
  if ! gzip -d "pubmed23n0689.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0689.xml.gz"
    # rm pubmed23n0689.xml.gz
  fi
fi
if [ ! -f pubmed23n0690.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0690.xml.gz
  if ! gzip -d "pubmed23n0690.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0690.xml.gz"
    # rm pubmed23n0690.xml.gz
  fi
fi
if [ ! -f pubmed23n0691.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0691.xml.gz
  if ! gzip -d "pubmed23n0691.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0691.xml.gz"
    # rm pubmed23n0691.xml.gz
  fi
fi
if [ ! -f pubmed23n0692.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0692.xml.gz
  if ! gzip -d "pubmed23n0692.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0692.xml.gz"
    # rm pubmed23n0692.xml.gz
  fi
fi
if [ ! -f pubmed23n0693.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0693.xml.gz
  if ! gzip -d "pubmed23n0693.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0693.xml.gz"
    # rm pubmed23n0693.xml.gz
  fi
fi
if [ ! -f pubmed23n0694.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0694.xml.gz
  if ! gzip -d "pubmed23n0694.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0694.xml.gz"
    # rm pubmed23n0694.xml.gz
  fi
fi
if [ ! -f pubmed23n0695.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0695.xml.gz
  if ! gzip -d "pubmed23n0695.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0695.xml.gz"
    # rm pubmed23n0695.xml.gz
  fi
fi
if [ ! -f pubmed23n0696.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0696.xml.gz
  if ! gzip -d "pubmed23n0696.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0696.xml.gz"
    # rm pubmed23n0696.xml.gz
  fi
fi
if [ ! -f pubmed23n0697.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0697.xml.gz
  if ! gzip -d "pubmed23n0697.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0697.xml.gz"
    # rm pubmed23n0697.xml.gz
  fi
fi
if [ ! -f pubmed23n0698.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0698.xml.gz
  if ! gzip -d "pubmed23n0698.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0698.xml.gz"
    # rm pubmed23n0698.xml.gz
  fi
fi
if [ ! -f pubmed23n0699.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0699.xml.gz
  if ! gzip -d "pubmed23n0699.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0699.xml.gz"
    # rm pubmed23n0699.xml.gz
  fi
fi
if [ ! -f pubmed23n0700.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0700.xml.gz
  if ! gzip -d "pubmed23n0700.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0700.xml.gz"
    # rm pubmed23n0700.xml.gz
  fi
fi
if [ ! -f pubmed23n0701.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0701.xml.gz
  if ! gzip -d "pubmed23n0701.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0701.xml.gz"
    # rm pubmed23n0701.xml.gz
  fi
fi
if [ ! -f pubmed23n0702.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0702.xml.gz
  if ! gzip -d "pubmed23n0702.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0702.xml.gz"
    # rm pubmed23n0702.xml.gz
  fi
fi
if [ ! -f pubmed23n0703.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0703.xml.gz
  if ! gzip -d "pubmed23n0703.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0703.xml.gz"
    # rm pubmed23n0703.xml.gz
  fi
fi
if [ ! -f pubmed23n0704.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0704.xml.gz
  if ! gzip -d "pubmed23n0704.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0704.xml.gz"
    # rm pubmed23n0704.xml.gz
  fi
fi
if [ ! -f pubmed23n0705.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0705.xml.gz
  if ! gzip -d "pubmed23n0705.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0705.xml.gz"
    # rm pubmed23n0705.xml.gz
  fi
fi
if [ ! -f pubmed23n0706.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0706.xml.gz
  if ! gzip -d "pubmed23n0706.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0706.xml.gz"
    # rm pubmed23n0706.xml.gz
  fi
fi
if [ ! -f pubmed23n0707.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0707.xml.gz
  if ! gzip -d "pubmed23n0707.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0707.xml.gz"
    # rm pubmed23n0707.xml.gz
  fi
fi
if [ ! -f pubmed23n0708.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0708.xml.gz
  if ! gzip -d "pubmed23n0708.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0708.xml.gz"
    # rm pubmed23n0708.xml.gz
  fi
fi
if [ ! -f pubmed23n0709.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0709.xml.gz
  if ! gzip -d "pubmed23n0709.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0709.xml.gz"
    # rm pubmed23n0709.xml.gz
  fi
fi
if [ ! -f pubmed23n0710.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0710.xml.gz
  if ! gzip -d "pubmed23n0710.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0710.xml.gz"
    # rm pubmed23n0710.xml.gz
  fi
fi
if [ ! -f pubmed23n0711.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0711.xml.gz
  if ! gzip -d "pubmed23n0711.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0711.xml.gz"
    # rm pubmed23n0711.xml.gz
  fi
fi
if [ ! -f pubmed23n0712.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0712.xml.gz
  if ! gzip -d "pubmed23n0712.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0712.xml.gz"
    # rm pubmed23n0712.xml.gz
  fi
fi
if [ ! -f pubmed23n0713.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0713.xml.gz
  if ! gzip -d "pubmed23n0713.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0713.xml.gz"
    # rm pubmed23n0713.xml.gz
  fi
fi
if [ ! -f pubmed23n0714.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0714.xml.gz
  if ! gzip -d "pubmed23n0714.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0714.xml.gz"
    # rm pubmed23n0714.xml.gz
  fi
fi
if [ ! -f pubmed23n0715.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0715.xml.gz
  if ! gzip -d "pubmed23n0715.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0715.xml.gz"
    # rm pubmed23n0715.xml.gz
  fi
fi
if [ ! -f pubmed23n0716.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0716.xml.gz
  if ! gzip -d "pubmed23n0716.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0716.xml.gz"
    # rm pubmed23n0716.xml.gz
  fi
fi
if [ ! -f pubmed23n0717.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0717.xml.gz
  if ! gzip -d "pubmed23n0717.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0717.xml.gz"
    # rm pubmed23n0717.xml.gz
  fi
fi
if [ ! -f pubmed23n0718.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0718.xml.gz
  if ! gzip -d "pubmed23n0718.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0718.xml.gz"
    # rm pubmed23n0718.xml.gz
  fi
fi
if [ ! -f pubmed23n0719.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0719.xml.gz
  if ! gzip -d "pubmed23n0719.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0719.xml.gz"
    # rm pubmed23n0719.xml.gz
  fi
fi
if [ ! -f pubmed23n0720.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0720.xml.gz
  if ! gzip -d "pubmed23n0720.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0720.xml.gz"
    # rm pubmed23n0720.xml.gz
  fi
fi
if [ ! -f pubmed23n0721.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0721.xml.gz
  if ! gzip -d "pubmed23n0721.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0721.xml.gz"
    # rm pubmed23n0721.xml.gz
  fi
fi
if [ ! -f pubmed23n0722.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0722.xml.gz
  if ! gzip -d "pubmed23n0722.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0722.xml.gz"
    # rm pubmed23n0722.xml.gz
  fi
fi
if [ ! -f pubmed23n0723.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0723.xml.gz
  if ! gzip -d "pubmed23n0723.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0723.xml.gz"
    # rm pubmed23n0723.xml.gz
  fi
fi
if [ ! -f pubmed23n0724.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0724.xml.gz
  if ! gzip -d "pubmed23n0724.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0724.xml.gz"
    # rm pubmed23n0724.xml.gz
  fi
fi
if [ ! -f pubmed23n0725.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0725.xml.gz
  if ! gzip -d "pubmed23n0725.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0725.xml.gz"
    # rm pubmed23n0725.xml.gz
  fi
fi
if [ ! -f pubmed23n0726.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0726.xml.gz
  if ! gzip -d "pubmed23n0726.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0726.xml.gz"
    # rm pubmed23n0726.xml.gz
  fi
fi
if [ ! -f pubmed23n0727.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0727.xml.gz
  if ! gzip -d "pubmed23n0727.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0727.xml.gz"
    # rm pubmed23n0727.xml.gz
  fi
fi
if [ ! -f pubmed23n0728.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0728.xml.gz
  if ! gzip -d "pubmed23n0728.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0728.xml.gz"
    # rm pubmed23n0728.xml.gz
  fi
fi
if [ ! -f pubmed23n0729.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0729.xml.gz
  if ! gzip -d "pubmed23n0729.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0729.xml.gz"
    # rm pubmed23n0729.xml.gz
  fi
fi
if [ ! -f pubmed23n0730.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0730.xml.gz
  if ! gzip -d "pubmed23n0730.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0730.xml.gz"
    # rm pubmed23n0730.xml.gz
  fi
fi
if [ ! -f pubmed23n0731.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0731.xml.gz
  if ! gzip -d "pubmed23n0731.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0731.xml.gz"
    # rm pubmed23n0731.xml.gz
  fi
fi
if [ ! -f pubmed23n0732.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0732.xml.gz
  if ! gzip -d "pubmed23n0732.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0732.xml.gz"
    # rm pubmed23n0732.xml.gz
  fi
fi
if [ ! -f pubmed23n0733.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0733.xml.gz
  if ! gzip -d "pubmed23n0733.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0733.xml.gz"
    # rm pubmed23n0733.xml.gz
  fi
fi
if [ ! -f pubmed23n0734.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0734.xml.gz
  if ! gzip -d "pubmed23n0734.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0734.xml.gz"
    # rm pubmed23n0734.xml.gz
  fi
fi
if [ ! -f pubmed23n0735.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0735.xml.gz
  if ! gzip -d "pubmed23n0735.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0735.xml.gz"
    # rm pubmed23n0735.xml.gz
  fi
fi
if [ ! -f pubmed23n0736.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0736.xml.gz
  if ! gzip -d "pubmed23n0736.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0736.xml.gz"
    # rm pubmed23n0736.xml.gz
  fi
fi
if [ ! -f pubmed23n0737.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0737.xml.gz
  if ! gzip -d "pubmed23n0737.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0737.xml.gz"
    # rm pubmed23n0737.xml.gz
  fi
fi
if [ ! -f pubmed23n0738.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0738.xml.gz
  if ! gzip -d "pubmed23n0738.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0738.xml.gz"
    # rm pubmed23n0738.xml.gz
  fi
fi
if [ ! -f pubmed23n0739.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0739.xml.gz
  if ! gzip -d "pubmed23n0739.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0739.xml.gz"
    # rm pubmed23n0739.xml.gz
  fi
fi
if [ ! -f pubmed23n0740.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0740.xml.gz
  if ! gzip -d "pubmed23n0740.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0740.xml.gz"
    # rm pubmed23n0740.xml.gz
  fi
fi
if [ ! -f pubmed23n0741.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0741.xml.gz
  if ! gzip -d "pubmed23n0741.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0741.xml.gz"
    # rm pubmed23n0741.xml.gz
  fi
fi
if [ ! -f pubmed23n0742.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0742.xml.gz
  if ! gzip -d "pubmed23n0742.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0742.xml.gz"
    # rm pubmed23n0742.xml.gz
  fi
fi
if [ ! -f pubmed23n0743.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0743.xml.gz
  if ! gzip -d "pubmed23n0743.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0743.xml.gz"
    # rm pubmed23n0743.xml.gz
  fi
fi
if [ ! -f pubmed23n0744.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0744.xml.gz
  if ! gzip -d "pubmed23n0744.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0744.xml.gz"
    # rm pubmed23n0744.xml.gz
  fi
fi
if [ ! -f pubmed23n0745.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0745.xml.gz
  if ! gzip -d "pubmed23n0745.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0745.xml.gz"
    # rm pubmed23n0745.xml.gz
  fi
fi
if [ ! -f pubmed23n0746.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0746.xml.gz
  if ! gzip -d "pubmed23n0746.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0746.xml.gz"
    # rm pubmed23n0746.xml.gz
  fi
fi
if [ ! -f pubmed23n0747.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0747.xml.gz
  if ! gzip -d "pubmed23n0747.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0747.xml.gz"
    # rm pubmed23n0747.xml.gz
  fi
fi
if [ ! -f pubmed23n0748.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0748.xml.gz
  if ! gzip -d "pubmed23n0748.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0748.xml.gz"
    # rm pubmed23n0748.xml.gz
  fi
fi
if [ ! -f pubmed23n0749.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0749.xml.gz
  if ! gzip -d "pubmed23n0749.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0749.xml.gz"
    # rm pubmed23n0749.xml.gz
  fi
fi
if [ ! -f pubmed23n0750.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0750.xml.gz
  if ! gzip -d "pubmed23n0750.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0750.xml.gz"
    # rm pubmed23n0750.xml.gz
  fi
fi
if [ ! -f pubmed23n0751.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0751.xml.gz
  if ! gzip -d "pubmed23n0751.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0751.xml.gz"
    # rm pubmed23n0751.xml.gz
  fi
fi
if [ ! -f pubmed23n0752.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0752.xml.gz
  if ! gzip -d "pubmed23n0752.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0752.xml.gz"
    # rm pubmed23n0752.xml.gz
  fi
fi
if [ ! -f pubmed23n0753.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0753.xml.gz
  if ! gzip -d "pubmed23n0753.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0753.xml.gz"
    # rm pubmed23n0753.xml.gz
  fi
fi
if [ ! -f pubmed23n0754.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0754.xml.gz
  if ! gzip -d "pubmed23n0754.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0754.xml.gz"
    # rm pubmed23n0754.xml.gz
  fi
fi
if [ ! -f pubmed23n0755.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0755.xml.gz
  if ! gzip -d "pubmed23n0755.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0755.xml.gz"
    # rm pubmed23n0755.xml.gz
  fi
fi
if [ ! -f pubmed23n0756.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0756.xml.gz
  if ! gzip -d "pubmed23n0756.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0756.xml.gz"
    # rm pubmed23n0756.xml.gz
  fi
fi
if [ ! -f pubmed23n0757.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0757.xml.gz
  if ! gzip -d "pubmed23n0757.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0757.xml.gz"
    # rm pubmed23n0757.xml.gz
  fi
fi
if [ ! -f pubmed23n0758.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0758.xml.gz
  if ! gzip -d "pubmed23n0758.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0758.xml.gz"
    # rm pubmed23n0758.xml.gz
  fi
fi
if [ ! -f pubmed23n0759.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0759.xml.gz
  if ! gzip -d "pubmed23n0759.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0759.xml.gz"
    # rm pubmed23n0759.xml.gz
  fi
fi
if [ ! -f pubmed23n0760.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0760.xml.gz
  if ! gzip -d "pubmed23n0760.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0760.xml.gz"
    # rm pubmed23n0760.xml.gz
  fi
fi
if [ ! -f pubmed23n0761.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0761.xml.gz
  if ! gzip -d "pubmed23n0761.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0761.xml.gz"
    # rm pubmed23n0761.xml.gz
  fi
fi
if [ ! -f pubmed23n0762.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0762.xml.gz
  if ! gzip -d "pubmed23n0762.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0762.xml.gz"
    # rm pubmed23n0762.xml.gz
  fi
fi
if [ ! -f pubmed23n0763.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0763.xml.gz
  if ! gzip -d "pubmed23n0763.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0763.xml.gz"
    # rm pubmed23n0763.xml.gz
  fi
fi
if [ ! -f pubmed23n0764.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0764.xml.gz
  if ! gzip -d "pubmed23n0764.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0764.xml.gz"
    # rm pubmed23n0764.xml.gz
  fi
fi
if [ ! -f pubmed23n0765.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0765.xml.gz
  if ! gzip -d "pubmed23n0765.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0765.xml.gz"
    # rm pubmed23n0765.xml.gz
  fi
fi
if [ ! -f pubmed23n0766.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0766.xml.gz
  if ! gzip -d "pubmed23n0766.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0766.xml.gz"
    # rm pubmed23n0766.xml.gz
  fi
fi
if [ ! -f pubmed23n0767.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0767.xml.gz
  if ! gzip -d "pubmed23n0767.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0767.xml.gz"
    # rm pubmed23n0767.xml.gz
  fi
fi
if [ ! -f pubmed23n0768.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0768.xml.gz
  if ! gzip -d "pubmed23n0768.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0768.xml.gz"
    # rm pubmed23n0768.xml.gz
  fi
fi
if [ ! -f pubmed23n0769.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0769.xml.gz
  if ! gzip -d "pubmed23n0769.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0769.xml.gz"
    # rm pubmed23n0769.xml.gz
  fi
fi
if [ ! -f pubmed23n0770.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0770.xml.gz
  if ! gzip -d "pubmed23n0770.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0770.xml.gz"
    # rm pubmed23n0770.xml.gz
  fi
fi
if [ ! -f pubmed23n0771.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0771.xml.gz
  if ! gzip -d "pubmed23n0771.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0771.xml.gz"
    # rm pubmed23n0771.xml.gz
  fi
fi
if [ ! -f pubmed23n0772.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0772.xml.gz
  if ! gzip -d "pubmed23n0772.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0772.xml.gz"
    # rm pubmed23n0772.xml.gz
  fi
fi
if [ ! -f pubmed23n0773.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0773.xml.gz
  if ! gzip -d "pubmed23n0773.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0773.xml.gz"
    # rm pubmed23n0773.xml.gz
  fi
fi
if [ ! -f pubmed23n0774.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0774.xml.gz
  if ! gzip -d "pubmed23n0774.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0774.xml.gz"
    # rm pubmed23n0774.xml.gz
  fi
fi
if [ ! -f pubmed23n0775.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0775.xml.gz
  if ! gzip -d "pubmed23n0775.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0775.xml.gz"
    # rm pubmed23n0775.xml.gz
  fi
fi
if [ ! -f pubmed23n0776.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0776.xml.gz
  if ! gzip -d "pubmed23n0776.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0776.xml.gz"
    # rm pubmed23n0776.xml.gz
  fi
fi
if [ ! -f pubmed23n0777.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0777.xml.gz
  if ! gzip -d "pubmed23n0777.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0777.xml.gz"
    # rm pubmed23n0777.xml.gz
  fi
fi
if [ ! -f pubmed23n0778.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0778.xml.gz
  if ! gzip -d "pubmed23n0778.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0778.xml.gz"
    # rm pubmed23n0778.xml.gz
  fi
fi
if [ ! -f pubmed23n0779.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0779.xml.gz
  if ! gzip -d "pubmed23n0779.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0779.xml.gz"
    # rm pubmed23n0779.xml.gz
  fi
fi
if [ ! -f pubmed23n0780.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0780.xml.gz
  if ! gzip -d "pubmed23n0780.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0780.xml.gz"
    # rm pubmed23n0780.xml.gz
  fi
fi
if [ ! -f pubmed23n0781.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0781.xml.gz
  if ! gzip -d "pubmed23n0781.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0781.xml.gz"
    # rm pubmed23n0781.xml.gz
  fi
fi
if [ ! -f pubmed23n0782.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0782.xml.gz
  if ! gzip -d "pubmed23n0782.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0782.xml.gz"
    # rm pubmed23n0782.xml.gz
  fi
fi
if [ ! -f pubmed23n0783.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0783.xml.gz
  if ! gzip -d "pubmed23n0783.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0783.xml.gz"
    # rm pubmed23n0783.xml.gz
  fi
fi
if [ ! -f pubmed23n0784.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0784.xml.gz
  if ! gzip -d "pubmed23n0784.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0784.xml.gz"
    # rm pubmed23n0784.xml.gz
  fi
fi
if [ ! -f pubmed23n0785.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0785.xml.gz
  if ! gzip -d "pubmed23n0785.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0785.xml.gz"
    # rm pubmed23n0785.xml.gz
  fi
fi
if [ ! -f pubmed23n0786.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0786.xml.gz
  if ! gzip -d "pubmed23n0786.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0786.xml.gz"
    # rm pubmed23n0786.xml.gz
  fi
fi
if [ ! -f pubmed23n0787.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0787.xml.gz
  if ! gzip -d "pubmed23n0787.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0787.xml.gz"
    # rm pubmed23n0787.xml.gz
  fi
fi
if [ ! -f pubmed23n0788.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0788.xml.gz
  if ! gzip -d "pubmed23n0788.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0788.xml.gz"
    # rm pubmed23n0788.xml.gz
  fi
fi
if [ ! -f pubmed23n0789.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0789.xml.gz
  if ! gzip -d "pubmed23n0789.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0789.xml.gz"
    # rm pubmed23n0789.xml.gz
  fi
fi
if [ ! -f pubmed23n0790.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0790.xml.gz
  if ! gzip -d "pubmed23n0790.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0790.xml.gz"
    # rm pubmed23n0790.xml.gz
  fi
fi
if [ ! -f pubmed23n0791.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0791.xml.gz
  if ! gzip -d "pubmed23n0791.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0791.xml.gz"
    # rm pubmed23n0791.xml.gz
  fi
fi
if [ ! -f pubmed23n0792.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0792.xml.gz
  if ! gzip -d "pubmed23n0792.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0792.xml.gz"
    # rm pubmed23n0792.xml.gz
  fi
fi
if [ ! -f pubmed23n0793.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0793.xml.gz
  if ! gzip -d "pubmed23n0793.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0793.xml.gz"
    # rm pubmed23n0793.xml.gz
  fi
fi
if [ ! -f pubmed23n0794.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0794.xml.gz
  if ! gzip -d "pubmed23n0794.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0794.xml.gz"
    # rm pubmed23n0794.xml.gz
  fi
fi
if [ ! -f pubmed23n0795.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0795.xml.gz
  if ! gzip -d "pubmed23n0795.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0795.xml.gz"
    # rm pubmed23n0795.xml.gz
  fi
fi
if [ ! -f pubmed23n0796.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0796.xml.gz
  if ! gzip -d "pubmed23n0796.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0796.xml.gz"
    # rm pubmed23n0796.xml.gz
  fi
fi
if [ ! -f pubmed23n0797.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0797.xml.gz
  if ! gzip -d "pubmed23n0797.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0797.xml.gz"
    # rm pubmed23n0797.xml.gz
  fi
fi
if [ ! -f pubmed23n0798.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0798.xml.gz
  if ! gzip -d "pubmed23n0798.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0798.xml.gz"
    # rm pubmed23n0798.xml.gz
  fi
fi
if [ ! -f pubmed23n0799.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0799.xml.gz
  if ! gzip -d "pubmed23n0799.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0799.xml.gz"
    # rm pubmed23n0799.xml.gz
  fi
fi
if [ ! -f pubmed23n0800.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0800.xml.gz
  if ! gzip -d "pubmed23n0800.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0800.xml.gz"
    # rm pubmed23n0800.xml.gz
  fi
fi
if [ ! -f pubmed23n0801.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0801.xml.gz
  if ! gzip -d "pubmed23n0801.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0801.xml.gz"
    # rm pubmed23n0801.xml.gz
  fi
fi
if [ ! -f pubmed23n0802.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0802.xml.gz
  if ! gzip -d "pubmed23n0802.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0802.xml.gz"
    # rm pubmed23n0802.xml.gz
  fi
fi
if [ ! -f pubmed23n0803.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0803.xml.gz
  if ! gzip -d "pubmed23n0803.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0803.xml.gz"
    # rm pubmed23n0803.xml.gz
  fi
fi
if [ ! -f pubmed23n0804.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0804.xml.gz
  if ! gzip -d "pubmed23n0804.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0804.xml.gz"
    # rm pubmed23n0804.xml.gz
  fi
fi
if [ ! -f pubmed23n0805.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0805.xml.gz
  if ! gzip -d "pubmed23n0805.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0805.xml.gz"
    # rm pubmed23n0805.xml.gz
  fi
fi
if [ ! -f pubmed23n0806.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0806.xml.gz
  if ! gzip -d "pubmed23n0806.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0806.xml.gz"
    # rm pubmed23n0806.xml.gz
  fi
fi
if [ ! -f pubmed23n0807.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0807.xml.gz
  if ! gzip -d "pubmed23n0807.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0807.xml.gz"
    # rm pubmed23n0807.xml.gz
  fi
fi
if [ ! -f pubmed23n0808.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0808.xml.gz
  if ! gzip -d "pubmed23n0808.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0808.xml.gz"
    # rm pubmed23n0808.xml.gz
  fi
fi
if [ ! -f pubmed23n0809.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0809.xml.gz
  if ! gzip -d "pubmed23n0809.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0809.xml.gz"
    # rm pubmed23n0809.xml.gz
  fi
fi
if [ ! -f pubmed23n0810.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0810.xml.gz
  if ! gzip -d "pubmed23n0810.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0810.xml.gz"
    # rm pubmed23n0810.xml.gz
  fi
fi
if [ ! -f pubmed23n0811.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0811.xml.gz
  if ! gzip -d "pubmed23n0811.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0811.xml.gz"
    # rm pubmed23n0811.xml.gz
  fi
fi
if [ ! -f pubmed23n0812.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0812.xml.gz
  if ! gzip -d "pubmed23n0812.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0812.xml.gz"
    # rm pubmed23n0812.xml.gz
  fi
fi
if [ ! -f pubmed23n0813.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0813.xml.gz
  if ! gzip -d "pubmed23n0813.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0813.xml.gz"
    # rm pubmed23n0813.xml.gz
  fi
fi
if [ ! -f pubmed23n0814.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0814.xml.gz
  if ! gzip -d "pubmed23n0814.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0814.xml.gz"
    # rm pubmed23n0814.xml.gz
  fi
fi
if [ ! -f pubmed23n0815.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0815.xml.gz
  if ! gzip -d "pubmed23n0815.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0815.xml.gz"
    # rm pubmed23n0815.xml.gz
  fi
fi
if [ ! -f pubmed23n0816.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0816.xml.gz
  if ! gzip -d "pubmed23n0816.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0816.xml.gz"
    # rm pubmed23n0816.xml.gz
  fi
fi
if [ ! -f pubmed23n0817.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0817.xml.gz
  if ! gzip -d "pubmed23n0817.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0817.xml.gz"
    # rm pubmed23n0817.xml.gz
  fi
fi
if [ ! -f pubmed23n0818.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0818.xml.gz
  if ! gzip -d "pubmed23n0818.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0818.xml.gz"
    # rm pubmed23n0818.xml.gz
  fi
fi
if [ ! -f pubmed23n0819.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0819.xml.gz
  if ! gzip -d "pubmed23n0819.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0819.xml.gz"
    # rm pubmed23n0819.xml.gz
  fi
fi
if [ ! -f pubmed23n0820.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0820.xml.gz
  if ! gzip -d "pubmed23n0820.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0820.xml.gz"
    # rm pubmed23n0820.xml.gz
  fi
fi
if [ ! -f pubmed23n0821.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0821.xml.gz
  if ! gzip -d "pubmed23n0821.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0821.xml.gz"
    # rm pubmed23n0821.xml.gz
  fi
fi
if [ ! -f pubmed23n0822.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0822.xml.gz
  if ! gzip -d "pubmed23n0822.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0822.xml.gz"
    # rm pubmed23n0822.xml.gz
  fi
fi
if [ ! -f pubmed23n0823.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0823.xml.gz
  if ! gzip -d "pubmed23n0823.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0823.xml.gz"
    # rm pubmed23n0823.xml.gz
  fi
fi
if [ ! -f pubmed23n0824.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0824.xml.gz
  if ! gzip -d "pubmed23n0824.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0824.xml.gz"
    # rm pubmed23n0824.xml.gz
  fi
fi
if [ ! -f pubmed23n0825.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0825.xml.gz
  if ! gzip -d "pubmed23n0825.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0825.xml.gz"
    # rm pubmed23n0825.xml.gz
  fi
fi
if [ ! -f pubmed23n0826.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0826.xml.gz
  if ! gzip -d "pubmed23n0826.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0826.xml.gz"
    # rm pubmed23n0826.xml.gz
  fi
fi
if [ ! -f pubmed23n0827.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0827.xml.gz
  if ! gzip -d "pubmed23n0827.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0827.xml.gz"
    # rm pubmed23n0827.xml.gz
  fi
fi
if [ ! -f pubmed23n0828.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0828.xml.gz
  if ! gzip -d "pubmed23n0828.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0828.xml.gz"
    # rm pubmed23n0828.xml.gz
  fi
fi
if [ ! -f pubmed23n0829.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0829.xml.gz
  if ! gzip -d "pubmed23n0829.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0829.xml.gz"
    # rm pubmed23n0829.xml.gz
  fi
fi
if [ ! -f pubmed23n0830.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0830.xml.gz
  if ! gzip -d "pubmed23n0830.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0830.xml.gz"
    # rm pubmed23n0830.xml.gz
  fi
fi
if [ ! -f pubmed23n0831.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0831.xml.gz
  if ! gzip -d "pubmed23n0831.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0831.xml.gz"
    # rm pubmed23n0831.xml.gz
  fi
fi
if [ ! -f pubmed23n0832.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0832.xml.gz
  if ! gzip -d "pubmed23n0832.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0832.xml.gz"
    # rm pubmed23n0832.xml.gz
  fi
fi
if [ ! -f pubmed23n0833.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0833.xml.gz
  if ! gzip -d "pubmed23n0833.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0833.xml.gz"
    # rm pubmed23n0833.xml.gz
  fi
fi
if [ ! -f pubmed23n0834.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0834.xml.gz
  if ! gzip -d "pubmed23n0834.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0834.xml.gz"
    # rm pubmed23n0834.xml.gz
  fi
fi
if [ ! -f pubmed23n0835.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0835.xml.gz
  if ! gzip -d "pubmed23n0835.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0835.xml.gz"
    # rm pubmed23n0835.xml.gz
  fi
fi
if [ ! -f pubmed23n0836.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0836.xml.gz
  if ! gzip -d "pubmed23n0836.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0836.xml.gz"
    # rm pubmed23n0836.xml.gz
  fi
fi
if [ ! -f pubmed23n0837.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0837.xml.gz
  if ! gzip -d "pubmed23n0837.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0837.xml.gz"
    # rm pubmed23n0837.xml.gz
  fi
fi
if [ ! -f pubmed23n0838.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0838.xml.gz
  if ! gzip -d "pubmed23n0838.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0838.xml.gz"
    # rm pubmed23n0838.xml.gz
  fi
fi
if [ ! -f pubmed23n0839.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0839.xml.gz
  if ! gzip -d "pubmed23n0839.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0839.xml.gz"
    # rm pubmed23n0839.xml.gz
  fi
fi
if [ ! -f pubmed23n0840.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0840.xml.gz
  if ! gzip -d "pubmed23n0840.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0840.xml.gz"
    # rm pubmed23n0840.xml.gz
  fi
fi
if [ ! -f pubmed23n0841.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0841.xml.gz
  if ! gzip -d "pubmed23n0841.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0841.xml.gz"
    # rm pubmed23n0841.xml.gz
  fi
fi
if [ ! -f pubmed23n0842.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0842.xml.gz
  if ! gzip -d "pubmed23n0842.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0842.xml.gz"
    # rm pubmed23n0842.xml.gz
  fi
fi
if [ ! -f pubmed23n0843.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0843.xml.gz
  if ! gzip -d "pubmed23n0843.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0843.xml.gz"
    # rm pubmed23n0843.xml.gz
  fi
fi
if [ ! -f pubmed23n0844.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0844.xml.gz
  if ! gzip -d "pubmed23n0844.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0844.xml.gz"
    # rm pubmed23n0844.xml.gz
  fi
fi
if [ ! -f pubmed23n0845.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0845.xml.gz
  if ! gzip -d "pubmed23n0845.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0845.xml.gz"
    # rm pubmed23n0845.xml.gz
  fi
fi
if [ ! -f pubmed23n0846.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0846.xml.gz
  if ! gzip -d "pubmed23n0846.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0846.xml.gz"
    # rm pubmed23n0846.xml.gz
  fi
fi
if [ ! -f pubmed23n0847.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0847.xml.gz
  if ! gzip -d "pubmed23n0847.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0847.xml.gz"
    # rm pubmed23n0847.xml.gz
  fi
fi
if [ ! -f pubmed23n0848.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0848.xml.gz
  if ! gzip -d "pubmed23n0848.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0848.xml.gz"
    # rm pubmed23n0848.xml.gz
  fi
fi
if [ ! -f pubmed23n0849.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0849.xml.gz
  if ! gzip -d "pubmed23n0849.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0849.xml.gz"
    # rm pubmed23n0849.xml.gz
  fi
fi
if [ ! -f pubmed23n0850.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0850.xml.gz
  if ! gzip -d "pubmed23n0850.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0850.xml.gz"
    # rm pubmed23n0850.xml.gz
  fi
fi
if [ ! -f pubmed23n0851.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0851.xml.gz
  if ! gzip -d "pubmed23n0851.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0851.xml.gz"
    # rm pubmed23n0851.xml.gz
  fi
fi
if [ ! -f pubmed23n0852.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0852.xml.gz
  if ! gzip -d "pubmed23n0852.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0852.xml.gz"
    # rm pubmed23n0852.xml.gz
  fi
fi
if [ ! -f pubmed23n0853.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0853.xml.gz
  if ! gzip -d "pubmed23n0853.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0853.xml.gz"
    # rm pubmed23n0853.xml.gz
  fi
fi
if [ ! -f pubmed23n0854.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0854.xml.gz
  if ! gzip -d "pubmed23n0854.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0854.xml.gz"
    # rm pubmed23n0854.xml.gz
  fi
fi
if [ ! -f pubmed23n0855.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0855.xml.gz
  if ! gzip -d "pubmed23n0855.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0855.xml.gz"
    # rm pubmed23n0855.xml.gz
  fi
fi
if [ ! -f pubmed23n0856.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0856.xml.gz
  if ! gzip -d "pubmed23n0856.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0856.xml.gz"
    # rm pubmed23n0856.xml.gz
  fi
fi
if [ ! -f pubmed23n0857.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0857.xml.gz
  if ! gzip -d "pubmed23n0857.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0857.xml.gz"
    # rm pubmed23n0857.xml.gz
  fi
fi
if [ ! -f pubmed23n0858.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0858.xml.gz
  if ! gzip -d "pubmed23n0858.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0858.xml.gz"
    # rm pubmed23n0858.xml.gz
  fi
fi
if [ ! -f pubmed23n0859.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0859.xml.gz
  if ! gzip -d "pubmed23n0859.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0859.xml.gz"
    # rm pubmed23n0859.xml.gz
  fi
fi
if [ ! -f pubmed23n0860.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0860.xml.gz
  if ! gzip -d "pubmed23n0860.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0860.xml.gz"
    # rm pubmed23n0860.xml.gz
  fi
fi
if [ ! -f pubmed23n0861.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0861.xml.gz
  if ! gzip -d "pubmed23n0861.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0861.xml.gz"
    # rm pubmed23n0861.xml.gz
  fi
fi
if [ ! -f pubmed23n0862.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0862.xml.gz
  if ! gzip -d "pubmed23n0862.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0862.xml.gz"
    # rm pubmed23n0862.xml.gz
  fi
fi
if [ ! -f pubmed23n0863.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0863.xml.gz
  if ! gzip -d "pubmed23n0863.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0863.xml.gz"
    # rm pubmed23n0863.xml.gz
  fi
fi
if [ ! -f pubmed23n0864.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0864.xml.gz
  if ! gzip -d "pubmed23n0864.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0864.xml.gz"
    # rm pubmed23n0864.xml.gz
  fi
fi
if [ ! -f pubmed23n0865.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0865.xml.gz
  if ! gzip -d "pubmed23n0865.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0865.xml.gz"
    # rm pubmed23n0865.xml.gz
  fi
fi
if [ ! -f pubmed23n0866.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0866.xml.gz
  if ! gzip -d "pubmed23n0866.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0866.xml.gz"
    # rm pubmed23n0866.xml.gz
  fi
fi
if [ ! -f pubmed23n0867.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0867.xml.gz
  if ! gzip -d "pubmed23n0867.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0867.xml.gz"
    # rm pubmed23n0867.xml.gz
  fi
fi
if [ ! -f pubmed23n0868.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0868.xml.gz
  if ! gzip -d "pubmed23n0868.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0868.xml.gz"
    # rm pubmed23n0868.xml.gz
  fi
fi
if [ ! -f pubmed23n0869.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0869.xml.gz
  if ! gzip -d "pubmed23n0869.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0869.xml.gz"
    # rm pubmed23n0869.xml.gz
  fi
fi
if [ ! -f pubmed23n0870.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0870.xml.gz
  if ! gzip -d "pubmed23n0870.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0870.xml.gz"
    # rm pubmed23n0870.xml.gz
  fi
fi
if [ ! -f pubmed23n0871.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0871.xml.gz
  if ! gzip -d "pubmed23n0871.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0871.xml.gz"
    # rm pubmed23n0871.xml.gz
  fi
fi
if [ ! -f pubmed23n0872.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0872.xml.gz
  if ! gzip -d "pubmed23n0872.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0872.xml.gz"
    # rm pubmed23n0872.xml.gz
  fi
fi
if [ ! -f pubmed23n0873.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0873.xml.gz
  if ! gzip -d "pubmed23n0873.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0873.xml.gz"
    # rm pubmed23n0873.xml.gz
  fi
fi
if [ ! -f pubmed23n0874.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0874.xml.gz
  if ! gzip -d "pubmed23n0874.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0874.xml.gz"
    # rm pubmed23n0874.xml.gz
  fi
fi
if [ ! -f pubmed23n0875.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0875.xml.gz
  if ! gzip -d "pubmed23n0875.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0875.xml.gz"
    # rm pubmed23n0875.xml.gz
  fi
fi
if [ ! -f pubmed23n0876.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0876.xml.gz
  if ! gzip -d "pubmed23n0876.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0876.xml.gz"
    # rm pubmed23n0876.xml.gz
  fi
fi
if [ ! -f pubmed23n0877.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0877.xml.gz
  if ! gzip -d "pubmed23n0877.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0877.xml.gz"
    # rm pubmed23n0877.xml.gz
  fi
fi
if [ ! -f pubmed23n0878.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0878.xml.gz
  if ! gzip -d "pubmed23n0878.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0878.xml.gz"
    # rm pubmed23n0878.xml.gz
  fi
fi
if [ ! -f pubmed23n0879.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0879.xml.gz
  if ! gzip -d "pubmed23n0879.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0879.xml.gz"
    # rm pubmed23n0879.xml.gz
  fi
fi
if [ ! -f pubmed23n0880.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0880.xml.gz
  if ! gzip -d "pubmed23n0880.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0880.xml.gz"
    # rm pubmed23n0880.xml.gz
  fi
fi
if [ ! -f pubmed23n0881.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0881.xml.gz
  if ! gzip -d "pubmed23n0881.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0881.xml.gz"
    # rm pubmed23n0881.xml.gz
  fi
fi
if [ ! -f pubmed23n0882.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0882.xml.gz
  if ! gzip -d "pubmed23n0882.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0882.xml.gz"
    # rm pubmed23n0882.xml.gz
  fi
fi
if [ ! -f pubmed23n0883.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0883.xml.gz
  if ! gzip -d "pubmed23n0883.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0883.xml.gz"
    # rm pubmed23n0883.xml.gz
  fi
fi
if [ ! -f pubmed23n0884.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0884.xml.gz
  if ! gzip -d "pubmed23n0884.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0884.xml.gz"
    # rm pubmed23n0884.xml.gz
  fi
fi
if [ ! -f pubmed23n0885.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0885.xml.gz
  if ! gzip -d "pubmed23n0885.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0885.xml.gz"
    # rm pubmed23n0885.xml.gz
  fi
fi
if [ ! -f pubmed23n0886.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0886.xml.gz
  if ! gzip -d "pubmed23n0886.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0886.xml.gz"
    # rm pubmed23n0886.xml.gz
  fi
fi
if [ ! -f pubmed23n0887.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0887.xml.gz
  if ! gzip -d "pubmed23n0887.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0887.xml.gz"
    # rm pubmed23n0887.xml.gz
  fi
fi
if [ ! -f pubmed23n0888.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0888.xml.gz
  if ! gzip -d "pubmed23n0888.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0888.xml.gz"
    # rm pubmed23n0888.xml.gz
  fi
fi
if [ ! -f pubmed23n0889.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0889.xml.gz
  if ! gzip -d "pubmed23n0889.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0889.xml.gz"
    # rm pubmed23n0889.xml.gz
  fi
fi
if [ ! -f pubmed23n0890.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0890.xml.gz
  if ! gzip -d "pubmed23n0890.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0890.xml.gz"
    # rm pubmed23n0890.xml.gz
  fi
fi
if [ ! -f pubmed23n0891.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0891.xml.gz
  if ! gzip -d "pubmed23n0891.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0891.xml.gz"
    # rm pubmed23n0891.xml.gz
  fi
fi
if [ ! -f pubmed23n0892.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0892.xml.gz
  if ! gzip -d "pubmed23n0892.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0892.xml.gz"
    # rm pubmed23n0892.xml.gz
  fi
fi
if [ ! -f pubmed23n0893.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0893.xml.gz
  if ! gzip -d "pubmed23n0893.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0893.xml.gz"
    # rm pubmed23n0893.xml.gz
  fi
fi
if [ ! -f pubmed23n0894.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0894.xml.gz
  if ! gzip -d "pubmed23n0894.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0894.xml.gz"
    # rm pubmed23n0894.xml.gz
  fi
fi
if [ ! -f pubmed23n0895.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0895.xml.gz
  if ! gzip -d "pubmed23n0895.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0895.xml.gz"
    # rm pubmed23n0895.xml.gz
  fi
fi
if [ ! -f pubmed23n0896.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0896.xml.gz
  if ! gzip -d "pubmed23n0896.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0896.xml.gz"
    # rm pubmed23n0896.xml.gz
  fi
fi
if [ ! -f pubmed23n0897.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0897.xml.gz
  if ! gzip -d "pubmed23n0897.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0897.xml.gz"
    # rm pubmed23n0897.xml.gz
  fi
fi
if [ ! -f pubmed23n0898.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0898.xml.gz
  if ! gzip -d "pubmed23n0898.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0898.xml.gz"
    # rm pubmed23n0898.xml.gz
  fi
fi
if [ ! -f pubmed23n0899.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0899.xml.gz
  if ! gzip -d "pubmed23n0899.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0899.xml.gz"
    # rm pubmed23n0899.xml.gz
  fi
fi
if [ ! -f pubmed23n0900.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0900.xml.gz
  if ! gzip -d "pubmed23n0900.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0900.xml.gz"
    # rm pubmed23n0900.xml.gz
  fi
fi
if [ ! -f pubmed23n0901.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0901.xml.gz
  if ! gzip -d "pubmed23n0901.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0901.xml.gz"
    # rm pubmed23n0901.xml.gz
  fi
fi
if [ ! -f pubmed23n0902.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0902.xml.gz
  if ! gzip -d "pubmed23n0902.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0902.xml.gz"
    # rm pubmed23n0902.xml.gz
  fi
fi
if [ ! -f pubmed23n0903.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0903.xml.gz
  if ! gzip -d "pubmed23n0903.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0903.xml.gz"
    # rm pubmed23n0903.xml.gz
  fi
fi
if [ ! -f pubmed23n0904.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0904.xml.gz
  if ! gzip -d "pubmed23n0904.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0904.xml.gz"
    # rm pubmed23n0904.xml.gz
  fi
fi
if [ ! -f pubmed23n0905.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0905.xml.gz
  if ! gzip -d "pubmed23n0905.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0905.xml.gz"
    # rm pubmed23n0905.xml.gz
  fi
fi
if [ ! -f pubmed23n0906.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0906.xml.gz
  if ! gzip -d "pubmed23n0906.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0906.xml.gz"
    # rm pubmed23n0906.xml.gz
  fi
fi
if [ ! -f pubmed23n0907.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0907.xml.gz
  if ! gzip -d "pubmed23n0907.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0907.xml.gz"
    # rm pubmed23n0907.xml.gz
  fi
fi
if [ ! -f pubmed23n0908.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0908.xml.gz
  if ! gzip -d "pubmed23n0908.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0908.xml.gz"
    # rm pubmed23n0908.xml.gz
  fi
fi
if [ ! -f pubmed23n0909.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0909.xml.gz
  if ! gzip -d "pubmed23n0909.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0909.xml.gz"
    # rm pubmed23n0909.xml.gz
  fi
fi
if [ ! -f pubmed23n0910.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0910.xml.gz
  if ! gzip -d "pubmed23n0910.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0910.xml.gz"
    # rm pubmed23n0910.xml.gz
  fi
fi
if [ ! -f pubmed23n0911.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0911.xml.gz
  if ! gzip -d "pubmed23n0911.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0911.xml.gz"
    # rm pubmed23n0911.xml.gz
  fi
fi
if [ ! -f pubmed23n0912.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0912.xml.gz
  if ! gzip -d "pubmed23n0912.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0912.xml.gz"
    # rm pubmed23n0912.xml.gz
  fi
fi
if [ ! -f pubmed23n0913.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0913.xml.gz
  if ! gzip -d "pubmed23n0913.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0913.xml.gz"
    # rm pubmed23n0913.xml.gz
  fi
fi
if [ ! -f pubmed23n0914.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0914.xml.gz
  if ! gzip -d "pubmed23n0914.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0914.xml.gz"
    # rm pubmed23n0914.xml.gz
  fi
fi
if [ ! -f pubmed23n0915.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0915.xml.gz
  if ! gzip -d "pubmed23n0915.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0915.xml.gz"
    # rm pubmed23n0915.xml.gz
  fi
fi
if [ ! -f pubmed23n0916.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0916.xml.gz
  if ! gzip -d "pubmed23n0916.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0916.xml.gz"
    # rm pubmed23n0916.xml.gz
  fi
fi
if [ ! -f pubmed23n0917.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0917.xml.gz
  if ! gzip -d "pubmed23n0917.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0917.xml.gz"
    # rm pubmed23n0917.xml.gz
  fi
fi
if [ ! -f pubmed23n0918.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0918.xml.gz
  if ! gzip -d "pubmed23n0918.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0918.xml.gz"
    # rm pubmed23n0918.xml.gz
  fi
fi
if [ ! -f pubmed23n0919.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0919.xml.gz
  if ! gzip -d "pubmed23n0919.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0919.xml.gz"
    # rm pubmed23n0919.xml.gz
  fi
fi
if [ ! -f pubmed23n0920.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0920.xml.gz
  if ! gzip -d "pubmed23n0920.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0920.xml.gz"
    # rm pubmed23n0920.xml.gz
  fi
fi
if [ ! -f pubmed23n0921.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0921.xml.gz
  if ! gzip -d "pubmed23n0921.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0921.xml.gz"
    # rm pubmed23n0921.xml.gz
  fi
fi
if [ ! -f pubmed23n0922.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0922.xml.gz
  if ! gzip -d "pubmed23n0922.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0922.xml.gz"
    # rm pubmed23n0922.xml.gz
  fi
fi
if [ ! -f pubmed23n0923.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0923.xml.gz
  if ! gzip -d "pubmed23n0923.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0923.xml.gz"
    # rm pubmed23n0923.xml.gz
  fi
fi
if [ ! -f pubmed23n0924.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0924.xml.gz
  if ! gzip -d "pubmed23n0924.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0924.xml.gz"
    # rm pubmed23n0924.xml.gz
  fi
fi
if [ ! -f pubmed23n0925.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0925.xml.gz
  if ! gzip -d "pubmed23n0925.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0925.xml.gz"
    # rm pubmed23n0925.xml.gz
  fi
fi
if [ ! -f pubmed23n0926.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0926.xml.gz
  if ! gzip -d "pubmed23n0926.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0926.xml.gz"
    # rm pubmed23n0926.xml.gz
  fi
fi
if [ ! -f pubmed23n0927.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0927.xml.gz
  if ! gzip -d "pubmed23n0927.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0927.xml.gz"
    # rm pubmed23n0927.xml.gz
  fi
fi
if [ ! -f pubmed23n0928.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0928.xml.gz
  if ! gzip -d "pubmed23n0928.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0928.xml.gz"
    # rm pubmed23n0928.xml.gz
  fi
fi
if [ ! -f pubmed23n0929.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0929.xml.gz
  if ! gzip -d "pubmed23n0929.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0929.xml.gz"
    # rm pubmed23n0929.xml.gz
  fi
fi
if [ ! -f pubmed23n0930.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0930.xml.gz
  if ! gzip -d "pubmed23n0930.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0930.xml.gz"
    # rm pubmed23n0930.xml.gz
  fi
fi
if [ ! -f pubmed23n0931.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0931.xml.gz
  if ! gzip -d "pubmed23n0931.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0931.xml.gz"
    # rm pubmed23n0931.xml.gz
  fi
fi
if [ ! -f pubmed23n0932.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0932.xml.gz
  if ! gzip -d "pubmed23n0932.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0932.xml.gz"
    # rm pubmed23n0932.xml.gz
  fi
fi
if [ ! -f pubmed23n0933.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0933.xml.gz
  if ! gzip -d "pubmed23n0933.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0933.xml.gz"
    # rm pubmed23n0933.xml.gz
  fi
fi
if [ ! -f pubmed23n0934.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0934.xml.gz
  if ! gzip -d "pubmed23n0934.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0934.xml.gz"
    # rm pubmed23n0934.xml.gz
  fi
fi
if [ ! -f pubmed23n0935.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0935.xml.gz
  if ! gzip -d "pubmed23n0935.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0935.xml.gz"
    # rm pubmed23n0935.xml.gz
  fi
fi
if [ ! -f pubmed23n0936.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0936.xml.gz
  if ! gzip -d "pubmed23n0936.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0936.xml.gz"
    # rm pubmed23n0936.xml.gz
  fi
fi
if [ ! -f pubmed23n0937.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0937.xml.gz
  if ! gzip -d "pubmed23n0937.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0937.xml.gz"
    # rm pubmed23n0937.xml.gz
  fi
fi
if [ ! -f pubmed23n0938.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0938.xml.gz
  if ! gzip -d "pubmed23n0938.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0938.xml.gz"
    # rm pubmed23n0938.xml.gz
  fi
fi
if [ ! -f pubmed23n0939.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0939.xml.gz
  if ! gzip -d "pubmed23n0939.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0939.xml.gz"
    # rm pubmed23n0939.xml.gz
  fi
fi
if [ ! -f pubmed23n0940.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0940.xml.gz
  if ! gzip -d "pubmed23n0940.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0940.xml.gz"
    # rm pubmed23n0940.xml.gz
  fi
fi
if [ ! -f pubmed23n0941.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0941.xml.gz
  if ! gzip -d "pubmed23n0941.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0941.xml.gz"
    # rm pubmed23n0941.xml.gz
  fi
fi
if [ ! -f pubmed23n0942.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0942.xml.gz
  if ! gzip -d "pubmed23n0942.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0942.xml.gz"
    # rm pubmed23n0942.xml.gz
  fi
fi
if [ ! -f pubmed23n0943.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0943.xml.gz
  if ! gzip -d "pubmed23n0943.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0943.xml.gz"
    # rm pubmed23n0943.xml.gz
  fi
fi
if [ ! -f pubmed23n0944.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0944.xml.gz
  if ! gzip -d "pubmed23n0944.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0944.xml.gz"
    # rm pubmed23n0944.xml.gz
  fi
fi
if [ ! -f pubmed23n0945.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0945.xml.gz
  if ! gzip -d "pubmed23n0945.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0945.xml.gz"
    # rm pubmed23n0945.xml.gz
  fi
fi
if [ ! -f pubmed23n0946.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0946.xml.gz
  if ! gzip -d "pubmed23n0946.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0946.xml.gz"
    # rm pubmed23n0946.xml.gz
  fi
fi
if [ ! -f pubmed23n0947.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0947.xml.gz
  if ! gzip -d "pubmed23n0947.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0947.xml.gz"
    # rm pubmed23n0947.xml.gz
  fi
fi
if [ ! -f pubmed23n0948.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0948.xml.gz
  if ! gzip -d "pubmed23n0948.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0948.xml.gz"
    # rm pubmed23n0948.xml.gz
  fi
fi
if [ ! -f pubmed23n0949.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0949.xml.gz
  if ! gzip -d "pubmed23n0949.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0949.xml.gz"
    # rm pubmed23n0949.xml.gz
  fi
fi
if [ ! -f pubmed23n0950.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0950.xml.gz
  if ! gzip -d "pubmed23n0950.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0950.xml.gz"
    # rm pubmed23n0950.xml.gz
  fi
fi
if [ ! -f pubmed23n0951.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0951.xml.gz
  if ! gzip -d "pubmed23n0951.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0951.xml.gz"
    # rm pubmed23n0951.xml.gz
  fi
fi
if [ ! -f pubmed23n0952.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0952.xml.gz
  if ! gzip -d "pubmed23n0952.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0952.xml.gz"
    # rm pubmed23n0952.xml.gz
  fi
fi
if [ ! -f pubmed23n0953.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0953.xml.gz
  if ! gzip -d "pubmed23n0953.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0953.xml.gz"
    # rm pubmed23n0953.xml.gz
  fi
fi
if [ ! -f pubmed23n0954.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0954.xml.gz
  if ! gzip -d "pubmed23n0954.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0954.xml.gz"
    # rm pubmed23n0954.xml.gz
  fi
fi
if [ ! -f pubmed23n0955.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0955.xml.gz
  if ! gzip -d "pubmed23n0955.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0955.xml.gz"
    # rm pubmed23n0955.xml.gz
  fi
fi
if [ ! -f pubmed23n0956.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0956.xml.gz
  if ! gzip -d "pubmed23n0956.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0956.xml.gz"
    # rm pubmed23n0956.xml.gz
  fi
fi
if [ ! -f pubmed23n0957.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0957.xml.gz
  if ! gzip -d "pubmed23n0957.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0957.xml.gz"
    # rm pubmed23n0957.xml.gz
  fi
fi
if [ ! -f pubmed23n0958.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0958.xml.gz
  if ! gzip -d "pubmed23n0958.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0958.xml.gz"
    # rm pubmed23n0958.xml.gz
  fi
fi
if [ ! -f pubmed23n0959.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0959.xml.gz
  if ! gzip -d "pubmed23n0959.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0959.xml.gz"
    # rm pubmed23n0959.xml.gz
  fi
fi
if [ ! -f pubmed23n0960.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0960.xml.gz
  if ! gzip -d "pubmed23n0960.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0960.xml.gz"
    # rm pubmed23n0960.xml.gz
  fi
fi
if [ ! -f pubmed23n0961.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0961.xml.gz
  if ! gzip -d "pubmed23n0961.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0961.xml.gz"
    # rm pubmed23n0961.xml.gz
  fi
fi
if [ ! -f pubmed23n0962.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0962.xml.gz
  if ! gzip -d "pubmed23n0962.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0962.xml.gz"
    # rm pubmed23n0962.xml.gz
  fi
fi
if [ ! -f pubmed23n0963.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0963.xml.gz
  if ! gzip -d "pubmed23n0963.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0963.xml.gz"
    # rm pubmed23n0963.xml.gz
  fi
fi
if [ ! -f pubmed23n0964.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0964.xml.gz
  if ! gzip -d "pubmed23n0964.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0964.xml.gz"
    # rm pubmed23n0964.xml.gz
  fi
fi
if [ ! -f pubmed23n0965.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0965.xml.gz
  if ! gzip -d "pubmed23n0965.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0965.xml.gz"
    # rm pubmed23n0965.xml.gz
  fi
fi
if [ ! -f pubmed23n0966.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0966.xml.gz
  if ! gzip -d "pubmed23n0966.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0966.xml.gz"
    # rm pubmed23n0966.xml.gz
  fi
fi
if [ ! -f pubmed23n0967.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0967.xml.gz
  if ! gzip -d "pubmed23n0967.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0967.xml.gz"
    # rm pubmed23n0967.xml.gz
  fi
fi
if [ ! -f pubmed23n0968.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0968.xml.gz
  if ! gzip -d "pubmed23n0968.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0968.xml.gz"
    # rm pubmed23n0968.xml.gz
  fi
fi
if [ ! -f pubmed23n0969.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0969.xml.gz
  if ! gzip -d "pubmed23n0969.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0969.xml.gz"
    # rm pubmed23n0969.xml.gz
  fi
fi
if [ ! -f pubmed23n0970.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0970.xml.gz
  if ! gzip -d "pubmed23n0970.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0970.xml.gz"
    # rm pubmed23n0970.xml.gz
  fi
fi
if [ ! -f pubmed23n0971.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0971.xml.gz
  if ! gzip -d "pubmed23n0971.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0971.xml.gz"
    # rm pubmed23n0971.xml.gz
  fi
fi
if [ ! -f pubmed23n0972.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0972.xml.gz
  if ! gzip -d "pubmed23n0972.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0972.xml.gz"
    # rm pubmed23n0972.xml.gz
  fi
fi
if [ ! -f pubmed23n0973.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0973.xml.gz
  if ! gzip -d "pubmed23n0973.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0973.xml.gz"
    # rm pubmed23n0973.xml.gz
  fi
fi
if [ ! -f pubmed23n0974.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0974.xml.gz
  if ! gzip -d "pubmed23n0974.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0974.xml.gz"
    # rm pubmed23n0974.xml.gz
  fi
fi
if [ ! -f pubmed23n0975.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0975.xml.gz
  if ! gzip -d "pubmed23n0975.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0975.xml.gz"
    # rm pubmed23n0975.xml.gz
  fi
fi
if [ ! -f pubmed23n0976.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0976.xml.gz
  if ! gzip -d "pubmed23n0976.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0976.xml.gz"
    # rm pubmed23n0976.xml.gz
  fi
fi
if [ ! -f pubmed23n0977.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0977.xml.gz
  if ! gzip -d "pubmed23n0977.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0977.xml.gz"
    # rm pubmed23n0977.xml.gz
  fi
fi
if [ ! -f pubmed23n0978.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0978.xml.gz
  if ! gzip -d "pubmed23n0978.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0978.xml.gz"
    # rm pubmed23n0978.xml.gz
  fi
fi
if [ ! -f pubmed23n0979.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0979.xml.gz
  if ! gzip -d "pubmed23n0979.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0979.xml.gz"
    # rm pubmed23n0979.xml.gz
  fi
fi
if [ ! -f pubmed23n0980.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0980.xml.gz
  if ! gzip -d "pubmed23n0980.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0980.xml.gz"
    # rm pubmed23n0980.xml.gz
  fi
fi
if [ ! -f pubmed23n0981.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0981.xml.gz
  if ! gzip -d "pubmed23n0981.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0981.xml.gz"
    # rm pubmed23n0981.xml.gz
  fi
fi
if [ ! -f pubmed23n0982.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0982.xml.gz
  if ! gzip -d "pubmed23n0982.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0982.xml.gz"
    # rm pubmed23n0982.xml.gz
  fi
fi
if [ ! -f pubmed23n0983.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0983.xml.gz
  if ! gzip -d "pubmed23n0983.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0983.xml.gz"
    # rm pubmed23n0983.xml.gz
  fi
fi
if [ ! -f pubmed23n0984.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0984.xml.gz
  if ! gzip -d "pubmed23n0984.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0984.xml.gz"
    # rm pubmed23n0984.xml.gz
  fi
fi
if [ ! -f pubmed23n0985.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0985.xml.gz
  if ! gzip -d "pubmed23n0985.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0985.xml.gz"
    # rm pubmed23n0985.xml.gz
  fi
fi
if [ ! -f pubmed23n0986.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0986.xml.gz
  if ! gzip -d "pubmed23n0986.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0986.xml.gz"
    # rm pubmed23n0986.xml.gz
  fi
fi
if [ ! -f pubmed23n0987.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0987.xml.gz
  if ! gzip -d "pubmed23n0987.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0987.xml.gz"
    # rm pubmed23n0987.xml.gz
  fi
fi
if [ ! -f pubmed23n0988.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0988.xml.gz
  if ! gzip -d "pubmed23n0988.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0988.xml.gz"
    # rm pubmed23n0988.xml.gz
  fi
fi
if [ ! -f pubmed23n0989.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0989.xml.gz
  if ! gzip -d "pubmed23n0989.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0989.xml.gz"
    # rm pubmed23n0989.xml.gz
  fi
fi
if [ ! -f pubmed23n0990.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0990.xml.gz
  if ! gzip -d "pubmed23n0990.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0990.xml.gz"
    # rm pubmed23n0990.xml.gz
  fi
fi
if [ ! -f pubmed23n0991.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0991.xml.gz
  if ! gzip -d "pubmed23n0991.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0991.xml.gz"
    # rm pubmed23n0991.xml.gz
  fi
fi
if [ ! -f pubmed23n0992.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0992.xml.gz
  if ! gzip -d "pubmed23n0992.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0992.xml.gz"
    # rm pubmed23n0992.xml.gz
  fi
fi
if [ ! -f pubmed23n0993.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0993.xml.gz
  if ! gzip -d "pubmed23n0993.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0993.xml.gz"
    # rm pubmed23n0993.xml.gz
  fi
fi
if [ ! -f pubmed23n0994.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0994.xml.gz
  if ! gzip -d "pubmed23n0994.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0994.xml.gz"
    # rm pubmed23n0994.xml.gz
  fi
fi
if [ ! -f pubmed23n0995.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0995.xml.gz
  if ! gzip -d "pubmed23n0995.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0995.xml.gz"
    # rm pubmed23n0995.xml.gz
  fi
fi
if [ ! -f pubmed23n0996.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0996.xml.gz
  if ! gzip -d "pubmed23n0996.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0996.xml.gz"
    # rm pubmed23n0996.xml.gz
  fi
fi
if [ ! -f pubmed23n0997.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0997.xml.gz
  if ! gzip -d "pubmed23n0997.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0997.xml.gz"
    # rm pubmed23n0997.xml.gz
  fi
fi
if [ ! -f pubmed23n0998.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0998.xml.gz
  if ! gzip -d "pubmed23n0998.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0998.xml.gz"
    # rm pubmed23n0998.xml.gz
  fi
fi
if [ ! -f pubmed23n0999.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n0999.xml.gz
  if ! gzip -d "pubmed23n0999.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n0999.xml.gz"
    # rm pubmed23n0999.xml.gz
  fi
fi
if [ ! -f pubmed23n1000.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1000.xml.gz
  if ! gzip -d "pubmed23n1000.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1000.xml.gz"
    # rm pubmed23n1000.xml.gz
  fi
fi
if [ ! -f pubmed23n1001.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1001.xml.gz
  if ! gzip -d "pubmed23n1001.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1001.xml.gz"
    # rm pubmed23n1001.xml.gz
  fi
fi
if [ ! -f pubmed23n1002.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1002.xml.gz
  if ! gzip -d "pubmed23n1002.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1002.xml.gz"
    # rm pubmed23n1002.xml.gz
  fi
fi
if [ ! -f pubmed23n1003.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1003.xml.gz
  if ! gzip -d "pubmed23n1003.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1003.xml.gz"
    # rm pubmed23n1003.xml.gz
  fi
fi
if [ ! -f pubmed23n1004.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1004.xml.gz
  if ! gzip -d "pubmed23n1004.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1004.xml.gz"
    # rm pubmed23n1004.xml.gz
  fi
fi
if [ ! -f pubmed23n1005.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1005.xml.gz
  if ! gzip -d "pubmed23n1005.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1005.xml.gz"
    # rm pubmed23n1005.xml.gz
  fi
fi
if [ ! -f pubmed23n1006.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1006.xml.gz
  if ! gzip -d "pubmed23n1006.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1006.xml.gz"
    # rm pubmed23n1006.xml.gz
  fi
fi
if [ ! -f pubmed23n1007.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1007.xml.gz
  if ! gzip -d "pubmed23n1007.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1007.xml.gz"
    # rm pubmed23n1007.xml.gz
  fi
fi
if [ ! -f pubmed23n1008.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1008.xml.gz
  if ! gzip -d "pubmed23n1008.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1008.xml.gz"
    # rm pubmed23n1008.xml.gz
  fi
fi
if [ ! -f pubmed23n1009.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1009.xml.gz
  if ! gzip -d "pubmed23n1009.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1009.xml.gz"
    # rm pubmed23n1009.xml.gz
  fi
fi
if [ ! -f pubmed23n1010.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1010.xml.gz
  if ! gzip -d "pubmed23n1010.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1010.xml.gz"
    # rm pubmed23n1010.xml.gz
  fi
fi
if [ ! -f pubmed23n1011.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1011.xml.gz
  if ! gzip -d "pubmed23n1011.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1011.xml.gz"
    # rm pubmed23n1011.xml.gz
  fi
fi
if [ ! -f pubmed23n1012.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1012.xml.gz
  if ! gzip -d "pubmed23n1012.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1012.xml.gz"
    # rm pubmed23n1012.xml.gz
  fi
fi
if [ ! -f pubmed23n1013.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1013.xml.gz
  if ! gzip -d "pubmed23n1013.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1013.xml.gz"
    # rm pubmed23n1013.xml.gz
  fi
fi
if [ ! -f pubmed23n1014.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1014.xml.gz
  if ! gzip -d "pubmed23n1014.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1014.xml.gz"
    # rm pubmed23n1014.xml.gz
  fi
fi
if [ ! -f pubmed23n1015.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1015.xml.gz
  if ! gzip -d "pubmed23n1015.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1015.xml.gz"
    # rm pubmed23n1015.xml.gz
  fi
fi
if [ ! -f pubmed23n1016.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1016.xml.gz
  if ! gzip -d "pubmed23n1016.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1016.xml.gz"
    # rm pubmed23n1016.xml.gz
  fi
fi
if [ ! -f pubmed23n1017.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1017.xml.gz
  if ! gzip -d "pubmed23n1017.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1017.xml.gz"
    # rm pubmed23n1017.xml.gz
  fi
fi
if [ ! -f pubmed23n1018.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1018.xml.gz
  if ! gzip -d "pubmed23n1018.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1018.xml.gz"
    # rm pubmed23n1018.xml.gz
  fi
fi
if [ ! -f pubmed23n1019.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1019.xml.gz
  if ! gzip -d "pubmed23n1019.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1019.xml.gz"
    # rm pubmed23n1019.xml.gz
  fi
fi
if [ ! -f pubmed23n1020.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1020.xml.gz
  if ! gzip -d "pubmed23n1020.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1020.xml.gz"
    # rm pubmed23n1020.xml.gz
  fi
fi
if [ ! -f pubmed23n1021.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1021.xml.gz
  if ! gzip -d "pubmed23n1021.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1021.xml.gz"
    # rm pubmed23n1021.xml.gz
  fi
fi
if [ ! -f pubmed23n1022.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1022.xml.gz
  if ! gzip -d "pubmed23n1022.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1022.xml.gz"
    # rm pubmed23n1022.xml.gz
  fi
fi
if [ ! -f pubmed23n1023.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1023.xml.gz
  if ! gzip -d "pubmed23n1023.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1023.xml.gz"
    # rm pubmed23n1023.xml.gz
  fi
fi
if [ ! -f pubmed23n1024.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1024.xml.gz
  if ! gzip -d "pubmed23n1024.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1024.xml.gz"
    # rm pubmed23n1024.xml.gz
  fi
fi
if [ ! -f pubmed23n1025.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1025.xml.gz
  if ! gzip -d "pubmed23n1025.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1025.xml.gz"
    # rm pubmed23n1025.xml.gz
  fi
fi
if [ ! -f pubmed23n1026.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1026.xml.gz
  if ! gzip -d "pubmed23n1026.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1026.xml.gz"
    # rm pubmed23n1026.xml.gz
  fi
fi
if [ ! -f pubmed23n1027.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1027.xml.gz
  if ! gzip -d "pubmed23n1027.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1027.xml.gz"
    # rm pubmed23n1027.xml.gz
  fi
fi
if [ ! -f pubmed23n1028.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1028.xml.gz
  if ! gzip -d "pubmed23n1028.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1028.xml.gz"
    # rm pubmed23n1028.xml.gz
  fi
fi
if [ ! -f pubmed23n1029.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1029.xml.gz
  if ! gzip -d "pubmed23n1029.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1029.xml.gz"
    # rm pubmed23n1029.xml.gz
  fi
fi
if [ ! -f pubmed23n1030.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1030.xml.gz
  if ! gzip -d "pubmed23n1030.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1030.xml.gz"
    # rm pubmed23n1030.xml.gz
  fi
fi
if [ ! -f pubmed23n1031.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1031.xml.gz
  if ! gzip -d "pubmed23n1031.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1031.xml.gz"
    # rm pubmed23n1031.xml.gz
  fi
fi
if [ ! -f pubmed23n1032.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1032.xml.gz
  if ! gzip -d "pubmed23n1032.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1032.xml.gz"
    # rm pubmed23n1032.xml.gz
  fi
fi
if [ ! -f pubmed23n1033.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1033.xml.gz
  if ! gzip -d "pubmed23n1033.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1033.xml.gz"
    # rm pubmed23n1033.xml.gz
  fi
fi
if [ ! -f pubmed23n1034.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1034.xml.gz
  if ! gzip -d "pubmed23n1034.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1034.xml.gz"
    # rm pubmed23n1034.xml.gz
  fi
fi
if [ ! -f pubmed23n1035.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1035.xml.gz
  if ! gzip -d "pubmed23n1035.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1035.xml.gz"
    # rm pubmed23n1035.xml.gz
  fi
fi
if [ ! -f pubmed23n1036.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1036.xml.gz
  if ! gzip -d "pubmed23n1036.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1036.xml.gz"
    # rm pubmed23n1036.xml.gz
  fi
fi
if [ ! -f pubmed23n1037.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1037.xml.gz
  if ! gzip -d "pubmed23n1037.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1037.xml.gz"
    # rm pubmed23n1037.xml.gz
  fi
fi
if [ ! -f pubmed23n1038.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1038.xml.gz
  if ! gzip -d "pubmed23n1038.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1038.xml.gz"
    # rm pubmed23n1038.xml.gz
  fi
fi
if [ ! -f pubmed23n1039.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1039.xml.gz
  if ! gzip -d "pubmed23n1039.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1039.xml.gz"
    # rm pubmed23n1039.xml.gz
  fi
fi
if [ ! -f pubmed23n1040.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1040.xml.gz
  if ! gzip -d "pubmed23n1040.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1040.xml.gz"
    # rm pubmed23n1040.xml.gz
  fi
fi
if [ ! -f pubmed23n1041.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1041.xml.gz
  if ! gzip -d "pubmed23n1041.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1041.xml.gz"
    # rm pubmed23n1041.xml.gz
  fi
fi
if [ ! -f pubmed23n1042.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1042.xml.gz
  if ! gzip -d "pubmed23n1042.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1042.xml.gz"
    # rm pubmed23n1042.xml.gz
  fi
fi
if [ ! -f pubmed23n1043.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1043.xml.gz
  if ! gzip -d "pubmed23n1043.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1043.xml.gz"
    # rm pubmed23n1043.xml.gz
  fi
fi
if [ ! -f pubmed23n1044.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1044.xml.gz
  if ! gzip -d "pubmed23n1044.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1044.xml.gz"
    # rm pubmed23n1044.xml.gz
  fi
fi
if [ ! -f pubmed23n1045.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1045.xml.gz
  if ! gzip -d "pubmed23n1045.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1045.xml.gz"
    # rm pubmed23n1045.xml.gz
  fi
fi
if [ ! -f pubmed23n1046.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1046.xml.gz
  if ! gzip -d "pubmed23n1046.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1046.xml.gz"
    # rm pubmed23n1046.xml.gz
  fi
fi
if [ ! -f pubmed23n1047.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1047.xml.gz
  if ! gzip -d "pubmed23n1047.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1047.xml.gz"
    # rm pubmed23n1047.xml.gz
  fi
fi
if [ ! -f pubmed23n1048.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1048.xml.gz
  if ! gzip -d "pubmed23n1048.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1048.xml.gz"
    # rm pubmed23n1048.xml.gz
  fi
fi
if [ ! -f pubmed23n1049.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1049.xml.gz
  if ! gzip -d "pubmed23n1049.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1049.xml.gz"
    # rm pubmed23n1049.xml.gz
  fi
fi
if [ ! -f pubmed23n1050.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1050.xml.gz
  if ! gzip -d "pubmed23n1050.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1050.xml.gz"
    # rm pubmed23n1050.xml.gz
  fi
fi
if [ ! -f pubmed23n1051.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1051.xml.gz
  if ! gzip -d "pubmed23n1051.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1051.xml.gz"
    # rm pubmed23n1051.xml.gz
  fi
fi
if [ ! -f pubmed23n1052.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1052.xml.gz
  if ! gzip -d "pubmed23n1052.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1052.xml.gz"
    # rm pubmed23n1052.xml.gz
  fi
fi
if [ ! -f pubmed23n1053.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1053.xml.gz
  if ! gzip -d "pubmed23n1053.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1053.xml.gz"
    # rm pubmed23n1053.xml.gz
  fi
fi
if [ ! -f pubmed23n1054.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1054.xml.gz
  if ! gzip -d "pubmed23n1054.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1054.xml.gz"
    # rm pubmed23n1054.xml.gz
  fi
fi
if [ ! -f pubmed23n1055.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1055.xml.gz
  if ! gzip -d "pubmed23n1055.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1055.xml.gz"
    # rm pubmed23n1055.xml.gz
  fi
fi
if [ ! -f pubmed23n1056.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1056.xml.gz
  if ! gzip -d "pubmed23n1056.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1056.xml.gz"
    # rm pubmed23n1056.xml.gz
  fi
fi
if [ ! -f pubmed23n1057.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1057.xml.gz
  if ! gzip -d "pubmed23n1057.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1057.xml.gz"
    # rm pubmed23n1057.xml.gz
  fi
fi
if [ ! -f pubmed23n1058.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1058.xml.gz
  if ! gzip -d "pubmed23n1058.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1058.xml.gz"
    # rm pubmed23n1058.xml.gz
  fi
fi
if [ ! -f pubmed23n1059.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1059.xml.gz
  if ! gzip -d "pubmed23n1059.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1059.xml.gz"
    # rm pubmed23n1059.xml.gz
  fi
fi
if [ ! -f pubmed23n1060.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1060.xml.gz
  if ! gzip -d "pubmed23n1060.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1060.xml.gz"
    # rm pubmed23n1060.xml.gz
  fi
fi
if [ ! -f pubmed23n1061.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1061.xml.gz
  if ! gzip -d "pubmed23n1061.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1061.xml.gz"
    # rm pubmed23n1061.xml.gz
  fi
fi
if [ ! -f pubmed23n1062.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1062.xml.gz
  if ! gzip -d "pubmed23n1062.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1062.xml.gz"
    # rm pubmed23n1062.xml.gz
  fi
fi

if [ ! -f pubmed23n1063.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1063.xml.gz
  if ! gzip -d "pubmed23n1063.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1063.xml.gz"
    # rm pubmed23n1063.xml.gz
  fi
fi
if [ ! -f pubmed23n1064.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1064.xml.gz
  if ! gzip -d "pubmed23n1064.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1064.xml.gz"
    # rm pubmed23n1064.xml.gz
  fi
fi
if [ ! -f pubmed23n1065.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1065.xml.gz
  if ! gzip -d "pubmed23n1065.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1065.xml.gz"
    # rm pubmed23n1065.xml.gz
  fi
fi
if [ ! -f pubmed23n1066.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1066.xml.gz
  if ! gzip -d "pubmed23n1066.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1066.xml.gz"
    # rm pubmed23n1066.xml.gz
  fi
fi
if [ ! -f pubmed23n1067.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1067.xml.gz
  if ! gzip -d "pubmed23n1067.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1067.xml.gz"
    # rm pubmed23n1067.xml.gz
  fi
fi
if [ ! -f pubmed23n1068.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1068.xml.gz
  if ! gzip -d "pubmed23n1068.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1068.xml.gz"
    # rm pubmed23n1068.xml.gz
  fi
fi
if [ ! -f pubmed23n1069.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1069.xml.gz
  if ! gzip -d "pubmed23n1069.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1069.xml.gz"
    # rm pubmed23n1069.xml.gz
  fi
fi
if [ ! -f pubmed23n1070.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1070.xml.gz
  if ! gzip -d "pubmed23n1070.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1070.xml.gz"
    # rm pubmed23n1070.xml.gz
  fi
fi
if [ ! -f pubmed23n1071.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1071.xml.gz
  if ! gzip -d "pubmed23n1071.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1071.xml.gz"
    # rm pubmed23n1071.xml.gz
  fi
fi
if [ ! -f pubmed23n1072.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1072.xml.gz
  if ! gzip -d "pubmed23n1072.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1072.xml.gz"
    # rm pubmed23n1072.xml.gz
  fi
fi
if [ ! -f pubmed23n1073.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1073.xml.gz
  if ! gzip -d "pubmed23n1073.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1073.xml.gz"
    # rm pubmed23n1073.xml.gz
  fi
fi
if [ ! -f pubmed23n1074.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1074.xml.gz
  if ! gzip -d "pubmed23n1074.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1074.xml.gz"
    # rm pubmed23n1074.xml.gz
  fi
fi
if [ ! -f pubmed23n1075.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1075.xml.gz
  if ! gzip -d "pubmed23n1075.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1075.xml.gz"
    # rm pubmed23n1075.xml.gz
  fi
fi
if [ ! -f pubmed23n1076.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1076.xml.gz
  if ! gzip -d "pubmed23n1076.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1076.xml.gz"
    # rm pubmed23n1076.xml.gz
  fi
fi
if [ ! -f pubmed23n1077.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1077.xml.gz
  if ! gzip -d "pubmed23n1077.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1077.xml.gz"
    # rm pubmed23n1077.xml.gz
  fi
fi
if [ ! -f pubmed23n1078.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1078.xml.gz
  if ! gzip -d "pubmed23n1078.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1078.xml.gz"
    # rm pubmed23n1078.xml.gz
  fi
fi
if [ ! -f pubmed23n1079.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1079.xml.gz
  if ! gzip -d "pubmed23n1079.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1079.xml.gz"
    # rm pubmed23n1079.xml.gz
  fi
fi
if [ ! -f pubmed23n1080.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1080.xml.gz
  if ! gzip -d "pubmed23n1080.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1080.xml.gz"
    # rm pubmed23n1080.xml.gz
  fi
fi
if [ ! -f pubmed23n1081.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1081.xml.gz
  if ! gzip -d "pubmed23n1081.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1081.xml.gz"
    # rm pubmed23n1081.xml.gz
  fi
fi
if [ ! -f pubmed23n1082.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1082.xml.gz
  if ! gzip -d "pubmed23n1082.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1082.xml.gz"
    # rm pubmed23n1082.xml.gz
  fi
fi
if [ ! -f pubmed23n1083.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1083.xml.gz
  if ! gzip -d "pubmed23n1083.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1083.xml.gz"
    # rm pubmed23n1083.xml.gz
  fi
fi
if [ ! -f pubmed23n1084.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1084.xml.gz
  if ! gzip -d "pubmed23n1084.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1084.xml.gz"
    # rm pubmed23n1084.xml.gz
  fi
fi
if [ ! -f pubmed23n1085.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1085.xml.gz
  if ! gzip -d "pubmed23n1085.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1085.xml.gz"
    # rm pubmed23n1085.xml.gz
  fi
fi
if [ ! -f pubmed23n1086.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1086.xml.gz
  if ! gzip -d "pubmed23n1086.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1086.xml.gz"
    # rm pubmed23n1086.xml.gz
  fi
fi
if [ ! -f pubmed23n1087.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1087.xml.gz
  if ! gzip -d "pubmed23n1087.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1087.xml.gz"
    # rm pubmed23n1087.xml.gz
  fi
fi
if [ ! -f pubmed23n1088.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1088.xml.gz
  if ! gzip -d "pubmed23n1088.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1088.xml.gz"
    # rm pubmed23n1088.xml.gz
  fi
fi
if [ ! -f pubmed23n1089.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1089.xml.gz
  if ! gzip -d "pubmed23n1089.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1089.xml.gz"
    # rm pubmed23n1089.xml.gz
  fi
fi
if [ ! -f pubmed23n1090.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1090.xml.gz
  if ! gzip -d "pubmed23n1090.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1090.xml.gz"
    # rm pubmed23n1090.xml.gz
  fi
fi
if [ ! -f pubmed23n1091.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1091.xml.gz
  if ! gzip -d "pubmed23n1091.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1091.xml.gz"
    # rm pubmed23n1091.xml.gz
  fi
fi
if [ ! -f pubmed23n1092.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1092.xml.gz
  if ! gzip -d "pubmed23n1092.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1092.xml.gz"
    # rm pubmed23n1092.xml.gz
  fi
fi
if [ ! -f pubmed23n1093.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1093.xml.gz
  if ! gzip -d "pubmed23n1093.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1093.xml.gz"
    # rm pubmed23n1093.xml.gz
  fi
fi
if [ ! -f pubmed23n1094.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1094.xml.gz
  if ! gzip -d "pubmed23n1094.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1094.xml.gz"
    # rm pubmed23n1094.xml.gz
  fi
fi
if [ ! -f pubmed23n1095.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1095.xml.gz
  if ! gzip -d "pubmed23n1095.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1095.xml.gz"
    # rm pubmed23n1095.xml.gz
  fi
fi
if [ ! -f pubmed23n1096.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1096.xml.gz
  if ! gzip -d "pubmed23n1096.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1096.xml.gz"
    # rm pubmed23n1096.xml.gz
  fi
fi
if [ ! -f pubmed23n1097.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1097.xml.gz
  if ! gzip -d "pubmed23n1097.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1097.xml.gz"
    # rm pubmed23n1097.xml.gz
  fi
fi
if [ ! -f pubmed23n1098.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1098.xml.gz
  if ! gzip -d "pubmed23n1098.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1098.xml.gz"
    # rm pubmed23n1098.xml.gz
  fi
fi
if [ ! -f pubmed23n1099.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1099.xml.gz
  if ! gzip -d "pubmed23n1099.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1099.xml.gz"
    # rm pubmed23n1099.xml.gz
  fi
fi
if [ ! -f pubmed23n1100.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1100.xml.gz
  if ! gzip -d "pubmed23n1100.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1100.xml.gz"
    # rm pubmed23n1100.xml.gz
  fi
fi
if [ ! -f pubmed23n1101.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1101.xml.gz
  if ! gzip -d "pubmed23n1101.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1101.xml.gz"
    # rm pubmed23n1101.xml.gz
  fi
fi
if [ ! -f pubmed23n1102.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1102.xml.gz
  if ! gzip -d "pubmed23n1102.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1102.xml.gz"
    # rm pubmed23n1102.xml.gz
  fi
fi
if [ ! -f pubmed23n1103.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1103.xml.gz
  if ! gzip -d "pubmed23n1103.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1103.xml.gz"
    # rm pubmed23n1103.xml.gz
  fi
fi
if [ ! -f pubmed23n1104.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1104.xml.gz
  if ! gzip -d "pubmed23n1104.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1104.xml.gz"
    # rm pubmed23n1104.xml.gz
  fi
fi
if [ ! -f pubmed23n1105.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1105.xml.gz
  if ! gzip -d "pubmed23n1105.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1105.xml.gz"
    # rm pubmed23n1105.xml.gz
  fi
fi
if [ ! -f pubmed23n1106.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1106.xml.gz
  if ! gzip -d "pubmed23n1106.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1106.xml.gz"
    # rm pubmed23n1106.xml.gz
  fi
fi
if [ ! -f pubmed23n1107.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1107.xml.gz
  if ! gzip -d "pubmed23n1107.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1107.xml.gz"
    # rm pubmed23n1107.xml.gz
  fi
fi
if [ ! -f pubmed23n1108.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1108.xml.gz
  if ! gzip -d "pubmed23n1108.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1108.xml.gz"
    # rm pubmed23n1108.xml.gz
  fi
fi
if [ ! -f pubmed23n1109.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1109.xml.gz
  if ! gzip -d "pubmed23n1109.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1109.xml.gz"
    # rm pubmed23n1109.xml.gz
  fi
fi
if [ ! -f pubmed23n1110.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1110.xml.gz
  if ! gzip -d "pubmed23n1110.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1110.xml.gz"
    # rm pubmed23n1110.xml.gz
  fi
fi
if [ ! -f pubmed23n1111.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1111.xml.gz
  if ! gzip -d "pubmed23n1111.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1111.xml.gz"
    # rm pubmed23n1111.xml.gz
  fi
fi
if [ ! -f pubmed23n1112.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1112.xml.gz
  if ! gzip -d "pubmed23n1112.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1112.xml.gz"
    # rm pubmed23n1112.xml.gz
  fi
fi
if [ ! -f pubmed23n1113.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1113.xml.gz
  if ! gzip -d "pubmed23n1113.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1113.xml.gz"
    # rm pubmed23n1113.xml.gz
  fi
fi
if [ ! -f pubmed23n1114.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1114.xml.gz
  if ! gzip -d "pubmed23n1114.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1114.xml.gz"
    # rm pubmed23n1114.xml.gz
  fi
fi
if [ ! -f pubmed23n1115.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1115.xml.gz
  if ! gzip -d "pubmed23n1115.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1115.xml.gz"
    # rm pubmed23n1115.xml.gz
  fi
fi
if [ ! -f pubmed23n1116.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1116.xml.gz
  if ! gzip -d "pubmed23n1116.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1116.xml.gz"
    # rm pubmed23n1116.xml.gz
  fi
fi
if [ ! -f pubmed23n1117.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1117.xml.gz
  if ! gzip -d "pubmed23n1117.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1117.xml.gz"
    # rm pubmed23n1117.xml.gz
  fi
fi
if [ ! -f pubmed23n1118.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1118.xml.gz
  if ! gzip -d "pubmed23n1118.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1118.xml.gz"
    # rm pubmed23n1118.xml.gz
  fi
fi
if [ ! -f pubmed23n1119.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1119.xml.gz
  if ! gzip -d "pubmed23n1119.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1119.xml.gz"
    # rm pubmed23n1119.xml.gz
  fi
fi
if [ ! -f pubmed23n1120.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1120.xml.gz
  if ! gzip -d "pubmed23n1120.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1120.xml.gz"
    # rm pubmed23n1120.xml.gz
  fi
fi
if [ ! -f pubmed23n1121.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1121.xml.gz
  if ! gzip -d "pubmed23n1121.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1121.xml.gz"
    # rm pubmed23n1121.xml.gz
  fi
fi
if [ ! -f pubmed23n1122.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1122.xml.gz
  if ! gzip -d "pubmed23n1122.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1122.xml.gz"
    # rm pubmed23n1122.xml.gz
  fi
fi
if [ ! -f pubmed23n1123.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1123.xml.gz
  if ! gzip -d "pubmed23n1123.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1123.xml.gz"
    # rm pubmed23n1123.xml.gz
  fi
fi
if [ ! -f pubmed23n1124.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1124.xml.gz
  if ! gzip -d "pubmed23n1124.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1124.xml.gz"
    # rm pubmed23n1124.xml.gz
  fi
fi
if [ ! -f pubmed23n1125.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1125.xml.gz
  if ! gzip -d "pubmed23n1125.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1125.xml.gz"
    # rm pubmed23n1125.xml.gz
  fi
fi
if [ ! -f pubmed23n1126.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1126.xml.gz
  if ! gzip -d "pubmed23n1126.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1126.xml.gz"
    # rm pubmed23n1126.xml.gz
  fi
fi
if [ ! -f pubmed23n1127.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1127.xml.gz
  if ! gzip -d "pubmed23n1127.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1127.xml.gz"
    # rm pubmed23n1127.xml.gz
  fi
fi
if [ ! -f pubmed23n1128.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1128.xml.gz
  if ! gzip -d "pubmed23n1128.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1128.xml.gz"
    # rm pubmed23n1128.xml.gz
  fi
fi
if [ ! -f pubmed23n1129.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1129.xml.gz
  if ! gzip -d "pubmed23n1129.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1129.xml.gz"
    # rm pubmed23n1129.xml.gz
  fi
fi
if [ ! -f pubmed23n1130.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1130.xml.gz
  if ! gzip -d "pubmed23n1130.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1130.xml.gz"
    # rm pubmed23n1130.xml.gz
  fi
fi
if [ ! -f pubmed23n1131.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1131.xml.gz
  if ! gzip -d "pubmed23n1131.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1131.xml.gz"
    # rm pubmed23n1131.xml.gz
  fi
fi
if [ ! -f pubmed23n1132.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1132.xml.gz
  if ! gzip -d "pubmed23n1132.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1132.xml.gz"
    # rm pubmed23n1132.xml.gz
  fi
fi
if [ ! -f pubmed23n1133.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1133.xml.gz
  if ! gzip -d "pubmed23n1133.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1133.xml.gz"
    # rm pubmed23n1133.xml.gz
  fi
fi
if [ ! -f pubmed23n1134.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1134.xml.gz
  if ! gzip -d "pubmed23n1134.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1134.xml.gz"
    # rm pubmed23n1134.xml.gz
  fi
fi
if [ ! -f pubmed23n1135.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1135.xml.gz
  if ! gzip -d "pubmed23n1135.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1135.xml.gz"
    # rm pubmed23n1135.xml.gz
  fi
fi
if [ ! -f pubmed23n1136.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1136.xml.gz
  if ! gzip -d "pubmed23n1136.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1136.xml.gz"
    # rm pubmed23n1136.xml.gz
  fi
fi
if [ ! -f pubmed23n1137.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1137.xml.gz
  if ! gzip -d "pubmed23n1137.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1137.xml.gz"
    # rm pubmed23n1137.xml.gz
  fi
fi
if [ ! -f pubmed23n1138.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1138.xml.gz
  if ! gzip -d "pubmed23n1138.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1138.xml.gz"
    # rm pubmed23n1138.xml.gz
  fi
fi
if [ ! -f pubmed23n1139.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1139.xml.gz
  if ! gzip -d "pubmed23n1139.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1139.xml.gz"
    # rm pubmed23n1139.xml.gz
  fi
fi
if [ ! -f pubmed23n1140.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1140.xml.gz
  if ! gzip -d "pubmed23n1140.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1140.xml.gz"
    # rm pubmed23n1140.xml.gz
  fi
fi
if [ ! -f pubmed23n1141.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1141.xml.gz
  if ! gzip -d "pubmed23n1141.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1141.xml.gz"
    # rm pubmed23n1141.xml.gz
  fi
fi
if [ ! -f pubmed23n1142.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1142.xml.gz
  if ! gzip -d "pubmed23n1142.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1142.xml.gz"
    # rm pubmed23n1142.xml.gz
  fi
fi
if [ ! -f pubmed23n1143.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1143.xml.gz
  if ! gzip -d "pubmed23n1143.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1143.xml.gz"
    # rm pubmed23n1143.xml.gz
  fi
fi
if [ ! -f pubmed23n1144.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1144.xml.gz
  if ! gzip -d "pubmed23n1144.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1144.xml.gz"
    # rm pubmed23n1144.xml.gz
  fi
fi
if [ ! -f pubmed23n1145.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1145.xml.gz
  if ! gzip -d "pubmed23n1145.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1145.xml.gz"
    # rm pubmed23n1145.xml.gz
  fi
fi
if [ ! -f pubmed23n1146.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1146.xml.gz
  if ! gzip -d "pubmed23n1146.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1146.xml.gz"
    # rm pubmed23n1146.xml.gz
  fi
fi
if [ ! -f pubmed23n1147.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1147.xml.gz
  if ! gzip -d "pubmed23n1147.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1147.xml.gz"
    # rm pubmed23n1147.xml.gz
  fi
fi
if [ ! -f pubmed23n1148.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1148.xml.gz
  if ! gzip -d "pubmed23n1148.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1148.xml.gz"
    # rm pubmed23n1148.xml.gz
  fi
fi
if [ ! -f pubmed23n1149.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1149.xml.gz
  if ! gzip -d "pubmed23n1149.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1149.xml.gz"
    # rm pubmed23n1149.xml.gz
  fi
fi
if [ ! -f pubmed23n1150.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1150.xml.gz
  if ! gzip -d "pubmed23n1150.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1150.xml.gz"
    # rm pubmed23n1150.xml.gz
  fi
fi
if [ ! -f pubmed23n1151.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1151.xml.gz
  if ! gzip -d "pubmed23n1151.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1151.xml.gz"
    # rm pubmed23n1151.xml.gz
  fi
fi
if [ ! -f pubmed23n1152.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1152.xml.gz
  if ! gzip -d "pubmed23n1152.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1152.xml.gz"
    # rm pubmed23n1152.xml.gz
  fi
fi
if [ ! -f pubmed23n1153.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1153.xml.gz
  if ! gzip -d "pubmed23n1153.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1153.xml.gz"
    # rm pubmed23n1153.xml.gz
  fi
fi
if [ ! -f pubmed23n1154.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1154.xml.gz
  if ! gzip -d "pubmed23n1154.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1154.xml.gz"
    # rm pubmed23n1154.xml.gz
  fi
fi
if [ ! -f pubmed23n1155.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1155.xml.gz
  if ! gzip -d "pubmed23n1155.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1155.xml.gz"
    # rm pubmed23n1155.xml.gz
  fi
fi
if [ ! -f pubmed23n1156.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1156.xml.gz
  if ! gzip -d "pubmed23n1156.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1156.xml.gz"
    # rm pubmed23n1156.xml.gz
  fi
fi
if [ ! -f pubmed23n1157.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1157.xml.gz
  if ! gzip -d "pubmed23n1157.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1157.xml.gz"
    # rm pubmed23n1157.xml.gz
  fi
fi
if [ ! -f pubmed23n1158.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1158.xml.gz
  if ! gzip -d "pubmed23n1158.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1158.xml.gz"
    # rm pubmed23n1158.xml.gz
  fi
fi
if [ ! -f pubmed23n1159.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1159.xml.gz
  if ! gzip -d "pubmed23n1159.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1159.xml.gz"
    # rm pubmed23n1159.xml.gz
  fi
fi
if [ ! -f pubmed23n1160.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1160.xml.gz
  if ! gzip -d "pubmed23n1160.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1160.xml.gz"
    # rm pubmed23n1160.xml.gz
  fi
fi
if [ ! -f pubmed23n1161.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1161.xml.gz
  if ! gzip -d "pubmed23n1161.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1161.xml.gz"
    # rm pubmed23n1161.xml.gz
  fi
fi
if [ ! -f pubmed23n1162.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1162.xml.gz
  if ! gzip -d "pubmed23n1162.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1162.xml.gz"
    # rm pubmed23n1162.xml.gz
  fi
fi
if [ ! -f pubmed23n1163.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1163.xml.gz
  if ! gzip -d "pubmed23n1163.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1163.xml.gz"
    # rm pubmed23n1163.xml.gz
  fi
fi
if [ ! -f pubmed23n1164.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1164.xml.gz
  if ! gzip -d "pubmed23n1164.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1164.xml.gz"
    # rm pubmed23n1164.xml.gz
  fi
fi
if [ ! -f pubmed23n1165.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1165.xml.gz
  if ! gzip -d "pubmed23n1165.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1165.xml.gz"
    # rm pubmed23n1165.xml.gz
  fi
fi
if [ ! -f pubmed23n1166.xml ]; then
  wget --continue ftp://ftp.ncbi.nlm.nih.gov/pubmed/baseline/pubmed23n1166.xml.gz
  if ! gzip -d "pubmed23n1166.xml.gz" &> /dev/null; then
    echo "Cannot extract a file: pubmed23n1166.xml.gz"
    # rm pubmed23n1166.xml.gz
  fi
fi
