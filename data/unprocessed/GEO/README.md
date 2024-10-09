ftp://ftp.ncbi.nlm.nih.gov/geo/README.txt

ftp://ftp.ncbi.nlm.nih.gov/geo/datasets/

http://www.ncbi.nlm.nih.gov/geo/info/download.html



wget --recursive --cut-dirs=2 --continue --random-wait -r -e robots=off -U mozilla --no-clobber --no-cookies --mirror --page-requisites --convert-links --domains ftp.ncbi.nlm.nih.gov --no-parent ftp://ftp.ncbi.nlm.nih.gov/geo/datasets/
