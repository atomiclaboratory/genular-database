<?php 
    include __DIR__ . '/include/head.php';
    $lastVisits = retrieveLastVisitedPageCache();
?>

    <main role="main" class="flex-shrink-0">

        <section id="home" class="full-screen-section py-3">
            <div class="container-lg">
                <div class="text-center mb-4 pt-3">
                    <h1>genular</h1>
                    <p class="lead text-center">Gene Cell Repository: A Comprehensive Gene/Cell Database.</p>
                </div>
            </div>
        </section>

        <section id="database-search" class="full-screen-section py-2 d-md-block">
            <div class="container-lg">
                <!-- Search Box container -->
                <div class="row mt-4">
                    <div class="col-lg-8 offset-lg-2 col-12">
                        <div class="input-group">
                            <!-- Dropdown for Selecting Query Type -->
                            <div class="input-group-prepend">
                                <select class="custom-select" id="searchType" onchange="updateSearchDescription()">
                                    <option disabled value="">Choose Search Type...</option>
                                    <option value="cellExpressionProfiles">Cell Expression Profiles</option>
                                    <option selected value="symbol">Gene Symbol</option>
                                    <option disabled value="pathways">Pathways</option>
                                    <option disabled value="taxonomy">Taxonomy (Species)</option>
                                    <option disabled value="geneSymbol">Gene Symbol</option>
                                    <option disabled value="chromosomeLocation">Chromosome Location</option>
                                    <option disabled value="proteinAccession">Protein Accession</option>
                                    <option disabled value="diseaseAssociation">Disease Association</option>
                                    <option disabled value="functionalAnnotation">Functional Annotation</option>
                                    <option disabled value="tissueExpression">Tissue Expression</option>
                                    <option disabled value="pubMedCitations">PubMed Citations</option>
                                </select>
                            </div>
                            <!-- Search Input Box --><select class="form-control select2-ajax" id="searchInput"></select>

                            <!-- Search Button
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button" id="searchButton" 
                                style="height: calc(1.5em + .75rem + 2px);">Search</button>
                            </div>
                             -->
                        </div>
                        <!-- Search Description -->
                        <p id="searchDescription" class="mt-2">
                            This is a demo database interface. Results are limited to a small (100) subset of data. For full access, please use the API or download the data dumps.
                        </p>
                    </div>
                </div>
                <div class="row searchResultsTextarea">
                    <div class="col-md-12">
                        <textarea id="searchResults" class="form-control mt-3"  readonly></textarea>
                    </div>
                </div>



                <!-- Responsive Tabs 
                <div class="row">
                    <div class="col-md-12">                                
                        <div class="d-flex justify-content-center">
                            <div class="table-responsive">
                                <div id="stats" class="text-center mb-3">

                                </div>
                                <table id="data-viewer-table" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                -->
            </div>
        </section>

        <section id="introduction" class="full-screen-section py-4">
            <canvas id="string_canvas" class="d-none d-md-block"></canvas>

            <div class="container-lg">
              <div class="row">
                <div class="col-md-10 mx-auto">
                  <h2 class="py-3 text-center">What's This All About?</h2>
                  <p class="lead"> Our goal is to understand how genes and cells interact in a deeper, data-driven way. To do this, we created an database packed with information about genes, proteins, and cell activity. </p>
                  <ul>
                    <li>
                      <strong>Interconnected Data Insights:</strong> Each gene record links together gene expressions, disease connections, and more, all in one place.
                    </li>
                    <li>
                      <strong>Detailed Gene Analysis:</strong> Explore and filter genes under specific conditions, like T-cell activity, to understand their role in different biological processes.
                    </li>
                    <li>
                      <strong>Exploring Gene Pathways:</strong> Discover the pathways and networks genes are part of and how they relate to diseases or conditions.
                    </li>
                    <li>
                      <strong>Detailed Expression Profiles:</strong> Access comprehensive gene expression profiles across different cell types and organisms, offering insights into gene regulation and function.
                    </li>
                  </ul>
                </div>
              </div>


                 <div class="row py-4">
                    <div class="col-md-10 mx-auto">
                        <div class="row">
                            <!-- Card for Genes with responsive bottom margin -->
                            <div class="col-md-4 mb-2 mb-md-0">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <h5 class="card-title"><i class="fa fa-dna"></i> Genes</h5>
                                        <p class="card-text">42.1M</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card for Proteins with responsive bottom margin -->
                            <div class="col-md-4 mb-2 mb-md-0">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <h5 class="card-title"><i class="fa fa-dna"></i> Proteins</h5>
                                        <p class="card-text">9.4M</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Card for Cells with responsive bottom margin -->
                            <div class="col-md-4 mb-2 mb-md-0">
                                <div class="card text-center">
                                    <div class="card-body">
                                        <h5 class="card-title"><i class="fa fa-dna"></i> Cells</h5>
                                        <p class="card-text">340M</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-stats">(stats on 13 March 2024)</div>
                    </div>
                </div>
            </div>
        </section>

        <section id="database-scheme" class="full-screen-section py-4">
            <div class="container-lg">

                <!--
                <div class="row py-4">
                    <?php if (!empty($lastVisits)) : ?>
                        <div class="col-md-10 mx-auto">
                            <div class="d-flex justify-content-center">
                                <div class="word-cloud-wrapper">
                                    <canvas id="wordCloudCanvas"></canvas>
                                </div>
                            </div>
                        </div>                       
                        <?php 
                            $wordCloudData = [];
                            foreach (array_slice($lastVisits, 0, 50) as $visit) : 
                        ?>
                            <?php
                            $pageType = $visit['pageType'];
                            $info = $visit['info'];
                            $label = '';
                            $link = '';
                            // Determine the label and link based on page type
                            if ($pageType === 'gene-details' && trim($info['symbol']) !== "") {
                                $label = htmlspecialchars($info['symbol']);
                                $link = $_ENV['WEB_URL'] . "/details-gene/" . htmlspecialchars($info['geneID']);
                            } elseif ($pageType === 'cell-details' && trim($info['name']) !== "") {
                                $label = htmlspecialchars($info['name']);
                                $link = $_ENV['WEB_URL'] . "/details-cell/" . htmlspecialchars($info['cellID']);
                            }
                            if ($label && $link) {
                                $wordCloudData[] = ['label' => $label, 'link' => $link, 'value' => $visit['visits']];
                            }
                            ?>
                        <?php 
                            endforeach; 
                            $wordCloudData = json_encode($wordCloudData, JSON_HEX_TAG | JSON_HEX_APOS | JSON_HEX_QUOT | JSON_HEX_AMP);
                        ?>
                        <script>
                            const wordCloudData = <?php echo $wordCloudData; ?>;
                        </script>
                    <?php else : ?>
                        <p class="text-center">No recent visitor activity available.</p>
                    <?php endif; ?>
                </div>
                -->

                <div class="row">
                    <div class="col-md-10 mx-auto">
                        <h2 class="py-3 text-center">Document Schema</h2>
                        <div class="row">
                            <div class="col-lg-12 col-md-10 mx-auto">
                                <pre class="shadow-3xl overflow-x-auto"><code class="language-js">const gene = {
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

    // Data relating to Mendelian Inheritance in Man (MIM), linking genes to clinical features. (requires omim license)
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

    // Information on gene-associated disorders, aiding in clinical and research contexts. (requires omim license)
    geneDisorder: [
        {
            name: { type: String }, // Name of the associated disorder.
            loc: { type: String }, // Cytogenetic location related to the disorder.
        },
    ],
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
};</code></pre>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="api-documentation" class="full-screen-section py-4">
            <div class="container-lg">
                <h2 class="text-center py-3">API documentation & data access</h2>
                <div class="row">
                    <div class="col-lg-8 mx-auto">
                        <p class="lead">
                            Use API or download data directly:
                        </p>
                        <ul class="list-unstyled">
                            <li>
                                <strong>Database dump:</strong> 
                                <a href="http://genular.ams3.digitaloceanspaces.com/database-export/genes_and_helpers.tar.gz" class="text-decoration-none">Download genes_and_helpers.tar.gz dump</a><br />
                                Once extracted it can be imported into local MongoDB instance using the following command:
                                <pre class="shadow-3xl overflow-x-auto"><code class="language-bash">mongorestore --host 127.0.0.1 --port 27017 --username root --password xxx --authenticationDatabase admin /path/mongobackup</code></pre>

                            </li>
                            <li>
                                <strong>API Interaction:</strong> 
                                <a href="/api-docs" class="text-decoration-none">Visit API</a>
                            </li>
                            <li>
                                <strong>R Package:</strong> 
                                Use <a href="https://github.com/atomiclaboratory/genular-database/tree/master/libraries/genular-api/R-package" target="_blank" class="text-decoration-none">genular</a> package for integration with R. Request API key <a href="/contact" target="_blank" class="text-decoration-none">here</a>.
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
    </main>

<?php include __DIR__ . '/include/bottom.php'; ?>
