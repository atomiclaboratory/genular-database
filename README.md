<div align="center">
    <h1>genular<br/><sub>A Comprehensive Resource for Mapping Gene-Cell Interactions</sub></h1>
</div>

# Introduction
Unraveling the intricate relationships between genes and cells is key to advancing our understanding of biological processes and disease mechanisms. `genular` an open-source, integrated gene-cell repository—was developed to fill the gap in current bioinformatics tools, which often struggle to capture the full complexity of gene-cell interactions at scale. Our platform unifies multi-dimensional data from gene expression, protein interactions, and single-cell RNA sequencing (scRNA-seq), providing a powerful resource for exploring the dynamic biological roles of genes across diverse cellular contexts.

# Getting Started

## Accessing via API
For developers and bioinformaticians preferring programmatic access, our RESTful API offers the fastest and most flexible way to query the database. You can find detailed API documentation [here](https://genular.atomic-lab.org/api-docs/).

The API documentation provides comprehensive details on available endpoints, allowing you to retrieve specific data efficiently.

## Using the R Package
For those working within the R environment, our R package simplifies data access and analysis. Installation instructions and usage guidelines are available at [our GitHub repository](https://github.com/atomiclaboratory/genular-database/tree/master/libraries/genular-api/R-package).


## Installation from Source

To get started with `genular`, clone the repository and prepare the database:

```bash
git clone git@github.com:atomiclaboratory/genular-database.git
## Define ${OMIM_API_KEY} in your environment
cd genular-database
bash data/download.sh
```
The download.sh script orchestrates the acquisition of various biological datasets.

To integrate singleCellExpressions data please refer to and run:
```bash
## 1. Download data (from CELLxGENE and convert from h5ad to json), 2. Prepossess (Calculate marker score), 3. Combine (make JSON file)
data/unprocessed/cellxgene/README.md
```
When this data is completely downloaded and prepossessed, you need to copy JSON files into:
```bash
data/cellxgene/bulk/data.processed.json
```
To populate the database with the downloaded datasets, navigate to the parsers directory and execute the data import script:

```bash
node main.js
```


## Database Schema

In MongoDB, data is stored in documents, which are analogous to JSON objects with a dynamic schema. This approach allows us to create a unique document for each gene. Each gene document possesses its own hierarchical structure, enabling us to model complex relationships and nested data effectively. This structure is particularly advantageous for representing the multifaceted nature of genetic information, where each gene can have a variety of attributes and sub-attributes.

```js
const gene = {
    // Unique identifier for the gene, corresponding to the NCBI Gene ID.
    geneID: { type: Number, index: { unique: true } },

    // Taxonomy-related information, detailing the classification and biological context of the gene.
    tax: {
        id: { type: Number, index: true }, // Numeric identifier for the taxonomic classification from gene2accession.tax_id.
        name: {
            name: { type: String }, // Descriptive name of the taxonomy category from taxdump.names.dmp.name_txt.
            unique: { type: String }, // A unique descriptor for taxonomy to facilitate fast lookups.
            type: { type: Number }, // Numerical code representing the taxonomy type for categorization purposes.
        },
    },
    updated: { type: Date, default: Date.now }, // Timestamp of the last update to this gene record.

    // Current status of the gene (e.g., "Predicted", "Validated") reflecting the validation level in research.
    geneStatus: { type: String },

    // Accession numbers associated with this gene, providing links to various sequence databases.
    accession: {
        rna: { type: String }, // Accession number for RNA sequences from gene2accession.
        protein: [{ type: String }], // List of protein accession numbers associated with this gene.
        gene: [{ type: String }], // List of genomic nucleotide accession numbers.
        peptide: { type: String }, // Accession number for peptide sequences.
    },

    // Data representing gene expression profiles across various cell types.
    singleCellExpressions: {
        effectSizes: [
            {
                i: { type: String }, // Identifier for the cell type, possibly following a standard nomenclature.
                c: { type: String }, // Contextual information including biological or medical categorizations.
                s: { type: Number } // Marker score quantifying gene expression uniqueness across cell types.
            }
        ]
    },

    // Aggregated cross-referencing data with other genomic databases for extended metadata and linkages.
    crossReference: {
        bulk: [
            {
                dbName: { type: String }, // Name of the external database for cross-referencing.
                value: { type: String }, // Corresponding identifier or value in the external database.
            }
        ],
        enseGeneID: { type: String }, // ENSEMBL gene identifier providing a direct link to ENSEMBL database.
        enseProtID: [{ type: String }], // List of ENSEMBL protein identifiers associated with this gene.
        enseRnaID: [{ type: String }], // List of ENSEMBL RNA identifiers.
        pubMed: [{ type: Number }], // Array of PubMed IDs for referencing literature.
    },

    // Information specifying the gene's location and orientation on the genome.
    genePos: {
        start: { type: Number }, // Starting position of the gene on its respective chromosome.
        end: { type: Number }, // Ending position of the gene.
    },
    orientation: { type: String }, // Orientation of the gene on the chromosome (e.g., '+', '-', '?').
    symbol: { type: String, index: true }, // Commonly used symbol or abbreviation for the gene.
    locTag: { type: String }, // Locus tag providing an alternative gene identifier.

    // Details of the chromosome where the gene is located, providing contextual genomic information.
    chrom: {
        pos: { type: Number }, // Positional index of the chromosome.
        type: { type: String }, // Type of the chromosome (e.g., "MT" for mitochondrial).
        loc: { type: String }, // Specific location descriptor on the chromosome.
    },
    desc: { type: String }, // Verbose description or annotation of the gene.

    // Categorical gene type providing insights into the gene's function and characteristics.
    geneType: { type: Number }, // Numeric code representing the gene's functional category.

    // Data relating to Mendelian Inheritance in Man (MIM), linking genes to clinical features. (requires omim license).
    // mim: [
    //     {
    //         id: { type: String, index: true }, // Unique MIM identifier.
    //         relation: { type: String }, // Relationship type between the gene and its MIM entry (e.g., gene, phenotype).
    //         cui: { type: Number }, // Concept Unique Identifier in medical databases.
    //     }
    // ],

    // Gene Ontology (GO) annotations providing insights into biological processes, cellular components, and molecular functions.
    ontology: [
        {
            id: { type: Number }, // GO identifier for referencing specific GO terms.
            term: { type: String }, // Descriptive term from the Gene Ontology.
            cat: { type: String }, // Category of the GO term (e.g., biological process, molecular function).
            pubMed: [{ type: Number }], // PubMed references supporting the association.
        },
    ],

    // Defines relationships with other genes, including orthologs and functional similarities.
    geneRelations: [
        {
            relationType: { type: String }, // Nature of the relationship (e.g., ortholog, readthrough sibling).
            similarGenes: [{ type: String }], // Array of gene identifiers denoting related genes.
        },
    ],

    // Information on gene-associated disorders, aiding in clinical and research contexts (requires omim license).
    // geneDisorder: [
    //     {
    //         name: { type: String }, // Name of the associated disorder.
    //         loc: { type: String }, // Cytogenetic location related to the disorder.
    //     },
    // ],
    // Comprehensive protein data linked to the gene, including identifiers and functional information.
    protein: [
        {
            // GENULAR proteinID = geneID + protein mass + protein length + crc32(sequence)
            proteinID: { type: Number, index: { unique: true } }, // , dropDups: true
            accession: [{ type: String, index: true }], // Array of accession numbers from various protein databases.
            symbol: { type: String }, // Standard symbol or abbreviation for the protein.
            name: { type: String }, // Full name providing detailed protein identification.
            // Database cross-references providing a network of protein-related information.
            databaseIDs: {
                pdbID: [{ type: String }], // Array of Protein Data Bank IDs linking to 3D structural data.
                goID: [{ type: String }], // Array of Gene Ontology IDs indicating associated biological processes, cellular components, and molecular functions.
                unigeneID: { type: String }, // UniGene cluster ID, providing a unique identifier for a set of related sequences.
                interProID: [{ type: String }], // Array of InterPro IDs, denoting the protein families, domains, and functional sites.
                Pfam: [{ type: String }], // Array of Protein family IDs from the Pfam database, categorizing proteins based on shared functional domains.
                PROSITE: [{ type: String }], // Array of PROSITE IDs, identifying protein domains, families, and functional sites through patterns and profiles.
                UniGene: { type: String }, // Redundant with unigeneID, possibly consider clarifying or ensuring distinct usage.
                PDBsum: [{ type: String }], // Array of PDBsum IDs for detailed protein structural and functional summaries.
                ProteinModelPortal: { type: String }, // IDs linking to the Protein Model Portal for comparative protein structure models.
                DIP: { type: String }, // Database of Interacting Proteins ID, denoting specific protein-protein interactions.
                MINT: { type: String }, // Molecular INTeraction database ID, referencing documented protein interaction data.
                STRING: { type: String }, // STRING database IDs, providing comprehensive protein-protein interaction networks.
                BindingDB: { type: String }, // Binding Database ID, related to the interaction of proteins with small, chemically defined molecules.
                ChEMBL: { type: String }, // ChEMBL ID, indicating bioactive molecule information with drug-like properties.
                DEPOD: { type: String }, // Dephosphorylation database ID, offering data on protein dephosphorylation.
                iPTMnet: { type: String }, // Integrated Post-Translational Modification Network ID, detailing protein post-translational modifications.
                PhosphoSite: { type: String }, // PhosphoSite ID, providing information on phosphorylation sites within proteins.
                SwissPalm: { type: String }, // SwissPalm ID, related to protein S-palmitoylation data.
                UniCarbKB: { type: String }, // Unified carbohydrate knowledgebase ID, cataloging information on protein glycosylation.
                BioMuta: { type: String }, // BioMuta ID, referencing a compendium of cancer-associated genetic variations.
                DMDM: { type: String }, // Domain Mapping of Disease Mutations ID, linking protein domains to disease mutations.
                EPD: { type: String }, // Eukaryotic Promoter Database ID, related to transcription start sites of eukaryotic genes.
                MaxQB: { type: String }, // MaxQuant database ID for quantitative proteomics data.
                PaxDb: { type: String }, // Protein abundance database ID, offering information on protein concentration levels.
                PRIDE: { type: String }, // Proteomics Identifications Database ID, for datasets and protein identifications.
                GeneID: { type: String }, // NCBI Gene ID, providing a unique identifier for a gene.
                KEGG: { type: String }, // KEGG ID, denoting entries in the Kyoto Encyclopedia of Genes and Genomes database.
                CTD: { type: String }, // Comparative Toxicogenomics Database ID, linking genes to environmental chemicals.
                GeneCards: { type: String }, // GeneCards ID, offering comprehensive information on human genes.
                HPA: [{ type: String }], // Human Protein Atlas ID, linking to protein expression profiles across human tissues.
                MalaCards: { type: String }, // MalaCards ID, providing an integrated database of human maladies and their annotations.
                neXtProt: { type: String }, // NeXtProt ID, offering a protein-centric view of human proteins in health and disease.
                PharmGKB: { type: String }, // Pharmacogenomics Knowledgebase ID, linking genes, drugs, and diseases.
                HOGENOM: { type: String }, // Database of homologous genes from fully sequenced organisms.
                HOVERGEN: { type: String }, // Database of homologous vertebrate genes, providing comparative genomics data.
                InParanoid: { type: String }, // Database ID for eukaryotic ortholog groups, aiding in comparative genomics analysis.
                KO: { type: String }, // KEGG Orthology ID, relating genes to their functions.
                PhylomeDB: { type: String }, // Database ID for complete collections of phylogenetic data.
                TreeFam: { type: String }, // TreeFam database ID, offering phylogenetic tree data of gene families.
                SignaLink: { type: String }, // Signaling pathway database ID, for biological signaling networks.
                SIGNOR: { type: String }, // SIGNOR ID, detailing signaling and regulatory events.
                EvolutionaryTrace: { type: String }, // ID linking to the Evolutionary Trace database for protein function prediction.
                GeneWiki: { type: String }, // Gene Wiki ID, providing collaborative gene summaries.
                GenomeRNAi: { type: String }, // GenomeRNAi ID, referencing RNA interference data for genomes.
                PRO: { type: String }, // Protein Ontology ID, offering structured information on protein entities.
                Proteomes: { type: String }, // UniProt Proteomes ID, denoting a complete set of proteins thought to be expressed by an organism.
                Bgee: { type: String }, // Database for gene expression evolution, providing expression data in different organisms.
                CleanEx: { type: String }, // Database ID for accessing expression data and gene expression atlases.
            },
            citations: [
                {
                    title: { type: String }, // Descriptive title of the referenced publication or citation.
                    pubmedID: { type: String }, // Unique identifier in the PubMed database, linking to the publication's abstract and details.
                    doi: { type: String }, // Standardized Digital Object Identifier providing a persistent link to the publication's online location.
                    scope: [{ type: String }], // The context or specific aspects of the publication that are relevant to the gene entry.
                },
            ],

            // Section for detailing protein sequence similarity indices as per RefSeq data.
            refSeq: {
                // Collection of UniRef similarity indices corresponding to different levels of sequence similarity.
                uniref: {
                    s50: { type: String }, // UniRef50 ID indicating a cluster with 50% sequence similarity.
                    s90: { type: String }, // UniRef90 ID indicating a cluster with 90% sequence similarity.
                    s100: { type: String }, // UniRef100 ID indicating a cluster with 100% sequence similarity.
                },
            },

            // Information on protein families derived from Pfam database classifications.
            proteinFamily: {
                accession: { type: String }, // Unique Pfam accession number identifying the protein family.
                name: { type: String }, // The name assigned to the protein family for easier reference.
                description: { type: String }, // Detailed description of the protein family, outlining defining characteristics.
                value: { type: String }, // Quantitative value or metric (e.g., e-value) associated with the protein family classification.
            },

            // Details on protein motifs as identified and described in the PROSITE database.
            proteinMotifs: [
                {
                    id: { type: String }, // Unique identifier for the protein motif within PROSITE.
                    description: { type: String }, // Detailed explanation of the motif, including its biological significance.
                    sequence: { type: String }, // The specific amino acid sequence pattern of the motif.
                }
            ],

            // Array capturing information about protein-protein interactions.
            interactionPartners: [
                {
                    partnerID: { type: String }, // UniProt ID of the interacting protein partner.
                    score: { type: Number }, // A score quantifying the strength or confidence of the interaction.
                },
            ],

            // Comprehensive details regarding the protein sequence.
            sequence: {
                length: { type: Number }, // The total number of amino acids in the protein sequence.
                mass: { type: Number }, // The molecular mass of the protein, typically in Daltons.
                checksum: { type: String }, // Checksum value for verifying the integrity of the protein sequence.
                modified: { type: Date }, // The date when the protein sequence was last modified.
                version: { type: Number }, // Version number indicating updates or revisions to the protein sequence.
                sequence: { type: String }, // The complete amino acid sequence of the protein.
            },

            // Metadata related to the existence and source of the protein information.
            existence: { type: Number }, // Numerical code indicating the evidence level for the protein's existence.
            relevance: { type: Number }, // Indicates the source database's confidence level: higher for Swiss-Prot (sprot) and lower for TrEMBL (trembl).
            uniParcID: { type: String }, // Identifier in the UniParc database, providing a cross-reference to the protein sequence.
            uniParcVersion: { type: Number }, // Version number of the protein sequence in the UniParc database.
        }
    ]
};
```
Some more schema info here in [api-docs](https://genular.atomic-lab.org/api-docs/).

## Contributing
We highly value your contributions! Whether it's through submitting bug reports, suggesting enhancements, or adding new data parsers, your input is welcome. Please follow our contributing guidelines when submitting pull requests.

## License

See the [LICENSE](LICENSE) file for more details.

### Third-Party Databases

Please note that individual databases integrated with this project may be subject to their own licenses. We advise users to review the respective licenses for each database before using them:

- **NCBI Gene**: Refer to NCBI's terms of use.
- **UniProt**: Subject to UniProt's terms and conditions.
- **OMIM**: Refer to OMIM's licensing agreements.
- **Reactome**: Please see Reactome's license.
- **Protein Atlas**: Review Protein Atlas's terms of use.
- **CELLxGENE**: Check CELLxGENE's licensing for data use.
- **Others**: all other databases have their own licenses.

Ensure compliance with these licenses when using data from these sources.
