# GENULAR Database Importer Documentation

The GENULAR database importer is a robust Node.js application designed for parsing and importing biological data into MongoDB. This documentation covers the necessary steps to set up and run the importer, along with additional development and database management tips.

## Overview
The main.js file orchestrates the import process by reading specific biological data files, parsing them, and inserting the data into a MongoDB database. It utilizes various parsers tailored to the structure of each data type.

## Database Setup

### Installing MongoDB
To get started, install MongoDB by following the instructions provided on the official MongoDB documentation page: [MongoDB Installation Guide](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-debian/).

### Configuring MongoDB

#### Creating the Admin User
Establish a secure MongoDB deployment by creating an administrative user:

```sh
use admin
db.createUser(
{
    user: "root",
    pwd: "<admin_password>",
    roles: [ "root" ]
})
```

Replace `<admin_password>` with a strong password.

#### Preparing the GENULAR Database
Initiate the database for storing biological data:

```sh
use genes
```

#### Establishing a Database User
For enhanced security, create a dedicated user for the GENULAR database:

```sh
db.createUser(
    {
      user: "genular_user",
      pwd: "<user_password>",
      roles: [
         { role: "dbAdmin", db: "genes" },
         { role: "readWrite", db: "genes" }
      ]
    }
)
```

Authenticate with the new credentials:

```sh
db.auth("genular_user", "<user_password>")
```

Replace `<user_password>` with a secure password for `genular_user`.

#### User Role Assignment
Grant appropriate permissions to `genular_user`:

```sh
db.grantRolesToUser(
  "genular_user",
  [
    { role: "readWrite", db: "genes" },
    { role: "readAnyDatabase", db: "admin" }
  ]
)
```

## Project Configuration

### Installing Dependencies
Navigate to the parser directory and install necessary dependencies:

```sh
cd /mnt/disk/repos/atomic/parsers
yarn install
```

### Data Acquisition
Fetch all required datasets:

```sh
cd ../data
bash download.sh
```

### Initiating Data Import
Start the full data import process:

```sh
cd ../parsers
node main.js
```

### Development Utilities

#### Generating Test Data
For a streamlined development process, generate test datasets by adjusting the number of lines to include:

```sh
# Adjust the number (e.g., 5000000) to the desired line count for each dataset
head -n<number_of_lines> ./source_path/file_name > ./destination_path/file_name

head -n5000000 ./ncbi-gene/bulk/gene2accession > ./ncbi-gene/test_data/gene2accession 
head -n5000000 ./ncbi-gene/bulk/gene2pubmed > ./ncbi-gene/test_data/gene2pubmed

head -n5000000 ./ncbi-gene/bulk/gene2ensembl > ./ncbi-gene/test_data/gene2ensembl   
head -n5000000 ./ncbi-gene/bulk/gene2go > ./ncbi-gene/test_data/gene2go     
head -n5000000 ./ncbi-gene/bulk/gene2refseq > ./ncbi-gene/test_data/gene2refseq
head -n5000000 ./ncbi-gene/bulk/gene_group > ./ncbi-gene/test_data/gene_group 
head -n5000000 ./ncbi-gene/bulk/gene_info > ./ncbi-gene/test_data/gene_info  
head -n5000000 ./ncbi-gene/bulk/mim2gene_medgen > ./ncbi-gene/test_data/mim2gene_medgen
head -n5000000 ./ncbi-gene/bulk/names.dmp > ./ncbi-gene/test_data/names.dmp
head -n5000000 ./omim/bulk/morbidmap.txt > ./omim/test_data/morbidmap.txt
head -n5000000 ./omim/bulk/mimTitles.txt > ./omim/test_data/mimTitles.txt
head -n5000000 ./omim/bulk/mim2gene.txt > ./omim/test_data/mim2gene.txt
head -n5000000 ./omim/bulk/genemap.txt > ./omim/test_data/genemap.txt
head -n5000000 ./omim/bulk/genemap2.txt > ./omim/test_data/genemap2.txt
head -n5000000 ./uniprot/bulk/idmapping_selected.tab > ./uniprot/test_data/idmapping_selected.tab
head -n5000000 ./uniprot/bulk/uniprot_sprot.xml > ./uniprot/test_data/uniprot_sprot.xml
head -n5000000 ./uniprot/bulk/uniprot_trembl.xml > ./uniprot/test_data/uniprot_trembl.xml
```

Modify `var MODE` to "test_data" in `main.js` to utilize these test files.

#### MongoDB Performance Tuning
Check and adjust the disk read-ahead settings if necessary:

```sh
sudo blockdev --report /dev/mapper/data
sudo blockdev --setra <value> /dev/mapper/data
```

### Useful MongoDB Queries
Here are some sample MongoDB queries for interacting with the 'genes' collection:

```javascript
// Find entries with protein data
db.getCollection('genes').find({"protein": {$exists: true}})

// Distinct taxonomy names
db.genes.distinct("tax.name.name")

// Find specific organisms
db.getCollection('genes').find({"tax.name.name": {"$in": ["Buchnera aphidicola"]}})

// Creating an index
db.getCollection('genes').createIndex({ "protein.proteinID": 1 }, {background: false, name: 'proteinID_idx'})

// Dropping an index
db.getCollection('genes').dropIndex("proteinID_idx")

// Listing indexes
db.getCollection('genes').getIndexes()
```

Ensure you manage sensitive information, such as passwords, responsibly, and never expose them in your documentation or source code.
