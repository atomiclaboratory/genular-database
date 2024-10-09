const gene = {
    //  Unique NCBI Gene ID - gene2accession.GeneID 
    geneID: { type: Number, index: { unique: true } },
    // Taxonomy information
    tax: {
        id: { type: Number, index: true }, // Taxonomy ID - gene2accession.tax_id
        name: {
            name: { type: String }, // Taxonomy name - taxdump.names.dmp.name_txt
            unique: { type: String },
            type: { type: Number },
        },
    },
    updated: { type: Date, default: Date.now }, // Last update timestamp
    // Gene status (e.g., Predicted, Validated) - gene2accession.status
    geneStatus: { type: String },
    // Accession information
    accession: {
        rna: { type: String }, // NCBI RNA nucleotide accession number - gene2accession.RNA_nucleotide_accession.version
        protein: [{ type: String }], // Array of protein accession numbers - gene2accession.protein_accession.version
        gene: [{ type: String }], // Genomic nucleotide accession numbers - gene2accession.genomic_nucleotide_accession.version
        peptide: { type: String }, // NCBI peptide reference sequence - gene2accession.mature_peptide_accession.version
    },
    // Single cell expression data
    singleCellExpressions: {
        // Gene Expression Marker Scores by Cell Type
        effectSizes: [
            { 
                i: { type: String }, // cell_id eg. CL0000158
                c: { type: String }, // context eg. UBERON0002048, PATO0000461, UBERON0002048PATO0000461, MONDO, overall
                s: { type: Number } // markerScore Uniqueness of a gene's expression in that cell type compared to others, not used.
                /* (The marker score is calculated by comparing gene expressions across different cell types within a gene itslef (gene_level), 
                    Accumulated results are available in different mongodb collection (calculation of markerScore across all genes)
                */
            }
        ]
    },
    // mRNA expression levels (Immune cell specificity)
    mRNAExpressions: {
        proteinAtlas: [
            { 
                l: { type: String },
                c: { type: String },
                e: { type: Number }
            }
        ]
    },
    // Cross-reference to other databases
    crossReference: {
        // Identifiers in other databases (database:value) except: (HGNC:HGNC:1100) - gene_info.dbXrefs
        bulk: [
            {
                dbName: { type: String },
                value: { type: String },
            }
        ],
        enseGeneID: { type: String }, // ENSEMBL gene identifier - gene2ensembl.Ensembl_gene_identifier
        enseProtID: [{ type: String }], // ENSEMBL protein identifiers - gene2ensembl.Ensembl_protein_identifier
        enseRnaID: [{ type: String }], // ENSEMBL RNA identifiers - gene2ensembl.Ensembl_rna_identifier
        pubMed: [{ type: Number }], // PubMed references - gene2pubmed.PubMed
    },
    // Genomic position information
    genePos: {
        start: { type: Number }, // Start position on genomic sequence - gene2accession.start_position_on_the_genomic_accession
        end: { type: Number }, // End position on genomic sequence - gene2accession.end_position_on_the_genomic_accession
    },
    orientation: { type: String }, // Gene orientation ('+', '-', or '?') - gene2accession.orientation
    symbol: { type: String, index: true }, // Gene symbol, searchable - gene2accession.Symbol
    locTag: { type: String }, // Locus Tag - gene_info.LocusTag
    // Chromosome on which this gene is placed - gene_info.chromosome
    chrom: {
        pos: { type: Number },
        type: { type: String }, // Chromosome type (MT or NULL)
        loc: { type: String }, // Chromosome location
    },
    desc: { type: String }, // Gene description - gene_info.description
    geneType: { type: Number }, // Gene type (e.g., Types: unknown (0), tRNA (1), rRNA (2), snRNA (3), scRNA (4), snoRNA (5), protein-coding (6), pseudo (7), transposon 8), miscRNA  (9), ncRNA (10), other (255)) - gene_info.type of gene
    // MIM (Mendelian Inheritance in Man) data
    mim: [
        {
            id: { type: String, index: true }, // MIM Number (OMIM) - mim2gene_medgen.MIM number)
            relation: { type: String }, // MIM type (MIM relation)  (gene | phenotype) - mim2gene_medgen.type)
            cui: { type: Number }, // MedGenCUI - mim2gene_medgen.MedGenCUI)
        }
    ],
    // Gene ontology data from GO and Reactome DBs
    ontology: [
        {
            // (gene2go.GO ID or Reactome ID)
            // Ontology ID (GO:0005634, R-HSA-9033241)
            id: { type: String },

            // (gene2go.GO term or Reactome Pathway name)
            // Ontology Term (biological_process || N-terminal protein myristoylation)
            term: { type: String },

            // (gene2go.Category)
            // Ontology category (Function, Process, or Component)
            cat: { type: String },
            // (gene2go.PubMed) pipe-delimited set of PubMed uids reported as evidence for the association
            pubMed: [{ type: Number }],
        },
    ],
    // Gene relationships
    geneRelations: [
        {
            // Type of gene relation - gene_group.relationship
            // Ortholog, Potential readthrough sibling, Readthrough child, Readthrough parent, Readthrough sibling, Region member, Region parent, Related functional gene, Related pseudogene,
            relationType: { type: String },
            similarGenes: [{ type: String }], // Array of similar genes - gene_group.Other GeneID
        },
    ],
    // Gene disorders  (requires omim license).
    geneDisorder: [
        {
            name: { type: String }, // Disorder name - morbidmap.Disorder
            loc: { type: String } // Cytogenetic location - morbidmap.cytogenetic location
        },
    ],
    // Protein data
    protein: [
        {
            // GENULAR proteinID
            // = geneID + protein mass + protein length + crc32(sequence)
            proteinID: { type: Number, index: { unique: true } }, // , dropDups: true
            // Uniprot ID - Uniprot has multiple accessions!!
            // (uniprot_sprot.accession)
            accession: [{ type: String, index: true }],
            // Protein Name
            // (uniprot_sprot.name)
            symbol: { type: String },
            // Protein full-descriptive name
            // (uniprot_sprot.protein.recommendedName.fullName)
            name: { type: String },
            // Protein IDs in other Databases
            databaseIDs: {
                pdbID: [{ type: String }], // Protein Structure ID (idmapping_selected.PDB)
                goID: [{ type: String }], // Protein GO ID (idmapping_selected.GO)
                unigeneID: { type: String }, // UniGene Protein Cluster (idmapping_selected.UniGene)
                interProID: [{ type: String }], // Protein InterPro ID (uniprot_???.InterPro)
                Pfam: [{ type: String }], // Protein family IDs (<dbReference id="PF12567" type="Pfam">)
                PROSITE: [{ type: String }], // Protein domain IDs (<dbReference id="PS50853" type="PROSITE">)
                UniGene: { type: String }, // UniGene ID for protein cluster (<dbReference id="Hs.654514" type="UniGene"/>)
                PDBsum: [{ type: String }], // Protein database summary IDs (<dbReference id="1YGR" type="PDBsum"/>)
                ProteinModelPortal: { type: String }, // Protein model IDs (<dbReference id="P08575" type="ProteinModelPortal"/>)
                DIP: { type: String }, // Database of Interacting Proteins ID (<dbReference id="DIP-224N" type="DIP"/>)
                MINT: { type: String }, // Molecular INTeraction database ID (<dbReference id="MINT-1130341" type="MINT"/>)
                STRING: { type: String }, // Protein-protein interaction IDs (<dbReference id="9606.ENSP00000356346" type="STRING"/>)
                BindingDB: { type: String }, // Protein binding data IDs (<dbReference id="P08575" type="BindingDB"/>)
                ChEMBL: { type: String }, // Chemical entities of biological interest IDs (<dbReference id="CHEMBL3243" type="ChEMBL"/>)
                DEPOD: { type: String }, // Dephosphorylation database ID (<dbReference id="P08575" type="DEPOD"/>)
                iPTMnet: { type: String }, // Integrated Post-Translational Modification Network ID (<dbReference id="P08575" type="iPTMnet"/>)
                PhosphoSite: { type: String }, // Protein phosphorylation site IDs (<dbReference id="P08575" type="PhosphoSite"/>)
                SwissPalm: { type: String }, // Protein palmitoylation data IDs (<dbReference id="P08575" type="SwissPalm"/>)
                UniCarbKB: { type: String }, // Unified carbohydrate knowledgebase ID (<dbReference id="P08575" type="UniCarbKB"/>)
                BioMuta: { type: String }, // Protein mutation data IDs (<dbReference id="PTPRC" type="BioMuta"/>)
                DMDM: { type: String }, // Domain Mapping of Disease Mutations ID (<dbReference id="33112650" type="DMDM"/>)
                EPD: { type: String }, // Eukaryotic Promoter Database ID (<dbReference id="P08575" type="EPD"/>)
                MaxQB: { type: String }, // MaxQuant Quantitative proteomics data ID (<dbReference id="P08575" type="MaxQB"/>)
                PaxDb: { type: String }, // Protein abundance database ID (<dbReference id="P08575" type="PaxDb"/>)
                PRIDE: { type: String }, // Proteomics Identifications Database ID (<dbReference id="P08575" type="PRIDE"/>)
                GeneID: { type: String }, // NCBI Gene ID (<dbReference id="5788" type="GeneID"/>)
                KEGG: { type: String }, // Kyoto Encyclopedia of Genes and Genomes ID (<dbReference id="hsa:5788" type="KEGG"/>)
                CTD: { type: String }, // Comparative Toxicogenomics Database ID (<dbReference id="5788" type="CTD"/>)
                GeneCards: { type: String }, // GeneCards ID for human genes (<dbReference id="PTPRC" type="GeneCards"/>)
                HPA: [{ type: String }], // Human Protein Atlas ID (<dbReference id="CAB000052" type="HPA"/>)
                MalaCards: { type: String }, // Malacards ID for human diseases (<dbReference id="PTPRC" type="MalaCards"/>)
                neXtProt: { type: String }, // NeXtProt ID for human proteins (<dbReference id="NX_P08575" type="neXtProt"/>)
                PharmGKB: { type: String }, // Pharmacogenomics Knowledgebase ID (<dbReference id="PA34011" type="PharmGKB"/>)
                HOGENOM: { type: String }, // Homologous genes database ID (<dbReference id="HOG000049064" type="HOGENOM"/>)
                HOVERGEN: { type: String }, // Homologous vertebrate genes database ID (<dbReference id="HBG000066" type="HOVERGEN"/>)
                InParanoid: { type: String }, // Eukaryotic ortholog groups ID (<dbReference id="P08575" type="InParanoid"/>)
                KO: { type: String }, // KEGG Orthology ID (<dbReference id="K06478" type="KO"/>)
                PhylomeDB: { type: String }, // Phylome database ID (<dbReference id="P08575" type="PhylomeDB"/>)
                TreeFam: { type: String }, // TreeFam database ID (<dbReference id="TF351829" type="TreeFam"/>)
                SignaLink: { type: String }, // Signaling pathway database ID (<dbReference id="P08575" type="SignaLink"/>)
                SIGNOR: { type: String }, // SIGNOR signaling network ID (<dbReference id="P08575" type="SIGNOR"/>)
                EvolutionaryTrace: { type: String }, // Evolutionary Trace Report Maker ID (<dbReference id="P08575" type="EvolutionaryTrace"/>)
                GeneWiki: { type: String }, // Gene Wiki ID for gene information (<dbReference id="5788" type="GenomeRNAi"/>)
                GenomeRNAi: { type: String }, // GenomeRNAi database ID for RNAi data (<dbReference id="PR:P08575" type="PRO"/>)
                PRO: { type: String }, // Protein Ontology ID from PRO
                Proteomes: { type: String }, // UniProt Proteomes ID (<dbReference id="UP000005640" type="Proteomes"/>)
                Bgee: { type: String }, // Database of gene expression evolution ID (<dbReference id="P08575" type="Bgee"/>)
                CleanEx: { type: String }, // Expression reference database ID (<dbReference id="HS_PTPRC" type="CleanEx"/>)
            },
            // Citations DOI's array - (dbReference id="10.1104/pp.101.4.1413" type="DOI" />)
            citations: [
                {
                    title: { type: String }, // Title of the citation
                    pubmedID: { type: String }, // PubMed ID associated with the citation
                    doi: { type: String }, // Digital Object Identifier (DOI) for the citation (e.g., <dbReference id="10.1104/pp.101.4.1413" type="DOI"/>)
                    scope: [{ type: String }], // Scope or context of the citation
                },
            ],
            // RefSeq Protein Similarity Indices (idmapping_selected.RefSeq)
            refSeq: {
                // UniRef similarity indices for RefSeq proteins
                uniref: {
                    s50: { type: String }, // UniRef50 ID - represents cluster at 50% sequence similarity
                    s90: { type: String }, // UniRef90 ID - represents cluster at 90% sequence similarity
                    s100: { type: String }, // UniRef100 ID - represents cluster at 100% sequence similarity
                },
            },
            // Protein Family Information (Pfam ID: <dbReference type="Pfam" id="PF04947">, Source: UniProt)
            proteinFamily: {
                // PFAM ID for protein family classification (pdb_pfam_mapping.PFAM_ACC)
                accession: { type: String },
                // Name of the protein family (pdb_pfam_mapping.PFAM_Name)
                name: { type: String },
                // Description of the protein family (pdb_pfam_mapping.PFAM_desc)
                description: { type: String },
                // Value representing the protein family (pdb_pfam_mapping.eValue)
                value: { type: String },
            },
            // Protein Motif Details from PROSITE Database
            proteinMotifs: [
                {
                    // PROSITE internal ID for protein motifs (prosite.ID)
                    id: { type: String },
                    // Description of the protein motif pattern (prosite.DE)
                    description: { type: String },
                    // Protein motif sequence pattern (prosite.PA)
                    sequence: { type: String },
                }
            ],
            // Protein Interaction Partners
            interactionPartners: [
                {
                    // Partner's UniProt ID (Format: string_id.uniprot_id) from protein.links.protein2
                    partnerID: { type: String },

                    // Combined interaction score from protein.links.combined_score
                    score: { type: Number },
                },
            ],
            // Protein Sequence Information
            sequence: {
                length: { type: Number }, // Length of the protein sequence
                mass: { type: Number }, // Molecular mass of the protein
                checksum: { type: String }, // Checksum for sequence verification
                modified: { type: Date }, // Date of last modification
                version: { type: Number }, // Version of the protein sequence
                sequence: { type: String }, // Amino acid sequence of the protein (uniprot_???.sprot/trembl)
            },
            // Protein Existence Information
            existence: { type: Number }, // Protein existence type (e.g., predicted) (<proteinExistence type="predicted"/>)
            // Protein Source Relevance
            relevance: { type: Number }, // Source of the protein data: trembl (2), sprot (1) (uniprot_???.sprot/trembl)
            // UniParc ID for Sequence Database
            uniParcID: { type: String }, // FASTA sequence database ID (idmapping_selected.UniParc) (e.g., UPI00003B0FD4)
        }
    ]
};
