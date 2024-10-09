# cellxgene Data Processing Script

This repository contains scripts to download, process, and integrate single-cell data from cellxgene.

## Key Functions

- Download single cell data from cellxgene: Automates dataset retrieval, saving time.
- Preprocess data into JSON format: Ensures compatibility with downstream analysis.
- Combine data and calculate marker scores: Prepares data for insights and visualization.

## Prerequisites

- NodeJS
- Puppeteer
- Python with Conda environment
- ols4_entities SOLR instance: (See setup instructions below)


## OLS4 SOLR Setup

1. Download the latest SOLR database dump from https://ftp.ebi.ac.uk/pub/databases/spot/ols/latest/solr.tgz
2. Extract to a suitable location (e.g., /mnt/genular/solr)
3. Start the SOLR container:

`docker run -d -v /mnt/genular/solr:/var/solr/data -p 8983:8983 --name ebi_solr solr:9.4`

## How to Use

### 1. Data Acquisition
- **Objective:** Download single-cell dataset IDs from the cellxgene website.
- **Execution:** Run `index.js` to check for and download missing datasets into the `./bulk` directory.

### 2. Data Processing
- **Objective:** Convert H5AD files to JSON format and standardize naming.
- **Execution:** Activate your conda environment `conda activate cellxgene` and execute `process_data/main.py`. This step transforms H5AD files into JSON and appends UBERON IDs to filenames where absent.

### 3. Data Post processing
- **Objective:** Process all converted data, calculate effect sizes and generate mapping files
- **Execution:**
  - Run `node --max-old-space-size=1300000 processing.js` to initiate.

### 4. Data-Integration
- **Objective:** Integrate the processed data into the application
- **Execution:** 
  - Transfer `data.processed.json` into the application's data directory (`data/cellxgene/bulk/data.processed.json`).
  - Import `data.cells.json`, `data.cellLinkedEntities.json`, `data.cellLineages.json` into genes_helpers mongodb collection as separate objects.

### 5. Ontology Mapping Generation
- **Objective:** Create a mapping file to support end-user cell type searches.
- **Execution:** Primary script will compile 3 additional json files, import them into genes_helpers->genes_helpers.
```
$this->markerScoresDoc = $this->collection_genes_helpers->findOne(['type' => 'markerScores']);
{
  "type": "markerScores",
  "relevantScoreThreshold": {
    ./output/data.cells.json
  }
}

$this->lineagesDoc = $this->collection_genes_helpers->findOne(['type' => 'cellLineages']);
{
  "type": "cellLineages",
  "cells": {
    ./output/data.cellLineages.json
  }
}


$this->linkedEntitiesDoc = $this->collection_genes_helpers->findOne(['type' => 'linkedEntities']);
{
  "type": "linkedEntities",
  "cells": {
    ./output/data.cellLinkedEntities.json
  }
}
```

### Reference Steps
- Crawl through the JSON data to extract unique cell IDs.
- Generate a database import file leveraging these IDs and referencing the following schema:
  - Schema: `id, cl_id, parent_cl_id, cl_name, cl_synonyms, cl_definition`
  - Data source: [EBI Cell Ontology](https://ftp.ebi.ac.uk/pub/databases/spot/ols/latest/ontologies.json.gz)

## Cell Ontology Reference

For additional context on how UBERON and Cell Ontology (CL) IDs are integrated into the data structure, please refer to the EBI Cell Ontology resource:

- [EBI Cell Ontology Download Page](https://www.ebi.ac.uk/ols/ontologies/cl/download)

Example Data Structure Usage:

```json
{
  "2048": {
    "uberon_id": "UBERON:0002048",
    "cells": {
      "CL:0000084": 46,
      "CL:0000115": 204,
      "CL:0000158": 48
    }
  },
  "shared_cells": ["CL:0000084", "CL:0000115"]
}
```
