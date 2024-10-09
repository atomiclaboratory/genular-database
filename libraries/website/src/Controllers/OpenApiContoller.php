<?php

// src/Controllers/OpenApiContoller.php
namespace Atomiclab\GenularApi\Controllers;

use MongoDB\Client as MongoClient;
use Slim\Http\Response as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Psr\Container\ContainerInterface;
use OpenApi\Annotations as OA;

/**
 * @OA\Info(
 *   title="Genular API Documentation",
 *   version="1.0",
 *   description="This API provides access to genomics data, enabling users to query gene and pathway information efficiently. It serves as an interface for researchers and bioinformaticians to retrieve specific datasets, analyze genetic material, and suggest pathways based on gene expression patterns.",
 *   termsOfService="https://genular.atomic-lab.org/terms",
 *   @OA\Contact(
 *     email="support@genular.org",
 *     name="Genular Support Team"
 *   ),
 *   @OA\License(
 *     name="Apache 2.0",
 *     url="http://www.apache.org/licenses/LICENSE-2.0.html"
 *   )
 * )
 * @OA\Server(
 *     url="https://genular.atomic-lab.org",
 *     description="Production server"
 * )
 * @OA\SecurityScheme(
 *     securityScheme="api_key",
 *     type="apiKey",
 *     in="query",
 *     name="api_key",
 *     description="API Key Authentication"
 * )
 * @OA\Schema(
 *     schema="Gene",
 *     type="object",
 *     @OA\Property(
 *         property="geneID",
 *         type="integer",
 *         description="Unique NCBI Gene ID - gene2accession.GeneID",
 *         example=123456
 *     ),
 *     @OA\Property(
 *         property="tax",
 *         type="object",
 *         description="Taxonomy information",
 *         @OA\Property(
 *             property="id",
 *             type="integer",
 *             description="Taxonomy ID - gene2accession.tax_id",
 *             example=9606
 *         ),
 *         @OA\Property(
 *             property="name",
 *             type="object",
 *             description="Taxonomy name - taxdump.names.dmp.name_txt",
 *             @OA\Property(
 *                 property="name",
 *                 type="string",
 *                 description="Taxonomy name - taxdump.names.dmp.name_txt",
 *                 example="Homo sapiens"
 *             ),
 *             @OA\Property(
 *                 property="unique",
 *                 type="string",
 *                 description="Unique taxonomy name - taxdump.names.dmp.unique_name",
 *                 example="Human"
 *             ),
 *             @OA\Property(
 *                 property="type",
 *                 type="string",
 *                 description="Taxonomy type - taxdump.names.dmp.name_class",
 *                 example="scientific name"
 *             )
 *         )
 *     ),
 *     @OA\Property(
 *         property="updated",
 *         type="date",
 *         description="Last update timestamp",
 *         example="2023-02-13T18:31:35.000Z"
 *     ),
 *     @OA\Property(
 *         property="geneStatus",
 *         type="string",
 *         description="Gene status (e.g., Predicted, Validated) - gene2accession.status",
 *         example="Predicted"
 *     ),
 *     @OA\Property(
 *         property="accession",
 *         type="object",
 *         description="Accession information",
 *         @OA\Property(
 *             property="rna",
 *             type="string",
 *             description="NCBI RNA nucleotide accession number - gene2accession.RNA_nucleotide_accession.version",
 *             example="NM_001005484.2"
 *         ),
 *         @OA\Property(
 *             property="protein",
 *             type="string",
 *             description="Array of protein accession numbers - gene2accession.protein_accession.version",
 *             example="NP_001005483.2 NP_001255790.1"
 *         ),
 *         @OA\Property(
 *             property="gene",
 *             type="string",
 *             description="Genomic nucleotide accession numbers - gene2accession.genomic_nucleotide_accession.version",
 *             example="NC_000001.11 NC_000019.10"
 *         ),
 *         @OA\Property(
 *             property="peptide",
 *             type="string",
 *             description="NCBI peptide reference sequence - gene2accession.mature_peptide_accession.version",
 *             example="NP_001005483.2"
 *         )
 *     ),
 *     @OA\Property(
 *         property="singleCellExpressions",
 *         type="object",
 *         description="Single cell expression data",
 *         @OA\Property(
 *             property="effectSizes",
 *             type="array",
 *             description="Gene Expression Marker Scores by Cell Type",
 *             @OA\Items(
 *                 @OA\Property(
 *                     property="i",
 *                     type="string",
 *                     description="cell_id eg. CL0000158",
 *                     example="CL0000158"
 *                 ),
 *                 @OA\Property(
 *                     property="c",
 *                     type="string",
 *                     description="context eg. UBERON0002048, PATO0000461, UBERON0002048PATO0000461, MONDO, overall",
 *                     example="PATO0000461"
 *                 ),
 *                 @OA\Property(
 *                     property="s",
 *                     type="number",
 *                     description="markerScore Uniqueness of a gene's expression in that cell type compared to others, not used."
 *                 )
 *             )
 *         )
 *     ),
 *     @OA\Property(
 *         property="crossReference",
 *         type="object",
 *         description="Cross-reference to other databases",
 *         @OA\Property(
 *             property="bulk",
 *             type="array",
 *             description="Identifiers in other databases (database:value) except: (HGNC:HGNC:1100)",
 *             @OA\Items(
 *                 @OA\Property(
 *                     property="dbName",
 *                     type="string",
 *                     description="Database name",
 *                     example="HGNC"
 *                 ),
 *                 @OA\Property(
 *                     property="value",
 *                     type="string",
 *                     description="Database value",
 *                     example="HGNC:1100"
 *                 )
 *             )
 *         ),
 *         @OA\Property(
 *             property="enseGeneID",
 *             type="string",
 *             description="ENSEMBL gene identifier - gene2ensembl.Ensembl_gene_identifier",
 *             example="ENSG00000141500"
 *         ),
 *         @OA\Property(
 *             property="enseProtID",
 *             type="string",
 *             description="ENSEMBL protein identifiers - gene2ensembl.Ensembl_protein_identifier",
 *             example="ENST00000456046 ENST00000552217"
 *         ),
 *         @OA\Property(
 *             property="enseRnaID",
 *             type="string",
 *             description="ENSEMBL RNA identifiers - gene2ensembl.Ensembl_rna_identifier",
 *             example="ENST00000552217"
 *         ),
 *         @OA\Property(
 *             property="pubmed",
 *             type="string",
 *             description="PubMed references - gene2pubmed.PubMed",
 *             example="12345678"
 *         )
 *     ),
 *     @OA\Property(
 *         property="genePos",
 *         type="object",
 *         description="Genomic position information",
 *         @OA\Property(
 *             property="start",
 *             type="integer",
 *             description="Start position on genomic sequence - gene2accession.start_position_on_the_genomic_accession",
 *             example=12345
 *         ),
 *         @OA\Property(
 *             property="end",
 *             type="integer",
 *             description="End position on genomic sequence - gene2accession.end_position_on_the_genomic_accession",
 *             example=67890
 *         )
 *     ),
 *     @OA\Property(
 *         property="orientation",
 *         type="string",
 *         description="Gene orientation ('+', '-', or '?') - gene2accession.orientation",
 *         example="+"
 *     ),
 *     @OA\Property(
 *         property="symbol",
 *         type="string",
 *         description="Gene symbol, searchable - gene2accession.Symbol",
 *         example="BRCA1"
 *     ),
 *     @OA\Property(
 *         property="locTag",
 *         type="string",
 *         description="Locus Tag - gene_info.LocusTag",
 *         example="LOC646215"
 *     ),
 *     @OA\Property(
 *         property="chrom",
 *         type="object",
 *         description="Chromosome on which this gene is placed - gene_info.chromosome",
 *         @OA\Property(
 *             property="pos",
 *             type="integer",
 *             description="Chromosome position - gene_info.chromosomal_location",
 *             example=12345678
 *         ),
 *         @OA\Property(
 *             property="type",
 *             type="string",
 *             description="Chromosome type (MT or NULL)",
 *             example="MT"
 *         ),
 *         @OA\Property(
 *             property="loc",
 *             type="string",
 *             description="Chromosome location - gene_info.chromosomal_location",
 *             example="12q22"
 *         )
 *     ),
 *     @OA\Property(
 *         property="desc",
 *         type="string",
 *         description="Gene description - gene_info.description",
 *         example="Breast cancer type 1 susceptibility protein"
 *     ),
 *     @OA\Property(
 *         property="geneType",
 *         type="integer",
 *         description="Gene type (e.g., Types: unknown (0), tRNA (1), rRNA (2), snRNA (3), scRNA (4), snoRNA (5), protein-coding (6), pseudo (7), transposon 8), miscRNA  (9), ncRNA (10), other (255)) - gene_info.type of gene",
 *         example=6
 *     ),
 *     @OA\Property(
 *         property="ontology",
 *         type="array",
 *         description="Gene ontology data from GO and Reactome DBs",
 *         @OA\Items(
 *             @OA\Property(
 *                 property="id",
 *                 type="string",
 *                 description="Ontology ID (GO:0005634, R-HSA-9033241)",
 *                 example="GO:0005634"
 *             ),
 *             @OA\Property(
 *                 property="term",
 *                 type="string",
 *                 description="Ontology Term (biological_process || N-terminal protein myristoylation)",
 *                 example="nucleus"
 *             ),
 *             @OA\Property(
 *                 property="cat",
 *                 type="string",
 *                 description="Ontology category (Function, Process, or Component)",
 *                 example="Component"
 *             ),
 *             @OA\Property(
 *                 property="pubmed",
 *                 type="string",
 *                 description="PubMed UIDs associated with the ontology annotation (gene2go.PubMed)",
 *                 example="12345678, 87654321"
 *             )
 *         )
 *     ),
 *     @OA\Property(
 *         property="geneRelations",
 *         type="array",
 *         description="Gene relationships",
 *         @OA\Items(
 *             @OA\Property(
 *                 property="relationType",
 *                 type="string",
 *                 description="Type of gene relation - gene_group.relationship",
 *                 example="Ortholog"
 *             ),
 *             @OA\Property(
 *                 property="similarGenes",
 *                 type="string",
 *                 description="Array of similar genes - gene_group.Other GeneID",
 *                 example="BRCA2 PALB2"
 *             )
 *         )
 *     ),
 *     @OA\Property(
 *         property="geneDisorder",
 *         type="array",
 *         description="Gene disorders (requires OMIM license)",
 *         @OA\Items(
 *             @OA\Property(
 *                 property="name",
 *                 type="string",
 *                 description="Disorder name - morbidmap.Disorder",
 *                 example="Breast cancer"
 *             ),
 *             @OA\Property(
 *                 property="loc",
 *                 type="string",
 *                 description="Cytogenetic location - morbidmap.cytogenetic location",
 *                 example="17q21"
 *             )
 *         )
 *     ),
 *     @OA\Property(
 *         property="protein",
 *         type="array",
 *         description="Protein data",
 *         @OA\Items(
 *             @OA\Property(
 *                 property="proteinID",
 *                 type="integer",
 *                 description="GENULAR proteinID\n= geneID + protein mass + protein length + crc32(sequence)",
 *                 example=123456789
 *             ),
 *             @OA\Property(
 *                 property="accession",
 *                 type="string",
 *                 description="Uniprot ID - Uniprot has multiple accessions!!\n(uniprot_sprot.accession)",
 *                 example="P06493 P53982"
 *             ),
 *             @OA\Property(
 *                 property="symbol",
 *                 type="string",
 *                 description="Protein Name\n(uniprot_sprot.name)",
 *                 example="BRCA1 protein"
 *             ),
 *             @OA\Property(
 *                 property="name",
 *                 type="string",
 *                 description="Protein full-descriptive name\n(uniprot_sprot.protein.recommendedName.fullName)",
 *                 example="Breast cancer type 1 susceptibility protein"
 *             ),
 *             @OA\Property(
 *                 property="databaseIDs",
 *                 type="object",
 *                 description="Protein IDs in other Databases",
 *                 @OA\Property(
 *                     property="pdbID",
 *                     type="string",
 *                     description="Protein Structure ID (idmapping_selected.PDB)",
 *                     example="1A19 1BRS"
 *                 ),
 *                 @OA\Property(
 *                     property="unigeneID",
 *                     type="string",
 *                     description="UniGene Protein Cluster (idmapping_selected.UniGene)",
 *                     example="Hs.573874"
 *                 )
 *             ),
 *             @OA\Property(
 *                 property="citations",
 *                 type="array",
 *                 @OA\Items(
 *                     @OA\Property(
 *                         property="title",
 *                         type="string",
 *                         description="Title of the citation"
 *                     ),
 *                     @OA\Property(
 *                         property="pubmedID",
 *                         type="string",
 *                         description="PubMed ID associated with the citation"
 *                     ),
 *                     @OA\Property(
 *                         property="doi",
 *                         type="string",
 *                         description="Digital Object Identifier (DOI) for the citation"
 *                     ),
 *                     @OA\Property(
 *                         property="scope",
 *                         type="array",
 *                         description="Scope or context of the citation",
 *                         @OA\Items(
 *                             type="string"
 *                         )
 *                     )
 *                 )
 *             ),
 *             @OA\Property(
 *                 property="refSeq",
 *                 type="object",
 *                 description="RefSeq Protein Similarity Indices (idmapping_selected.RefSeq)"
 *             ),
 *             @OA\Property(
 *                 property="uniref",
 *                 type="object",
 *                 description="UniRef similarity indices for RefSeq proteins"
 *             ),
 *             @OA\Property(
 *                 property="s50",
 *                 type="string",
 *                 description="UniRef50 ID - represents cluster at 50% sequence similarity"
 *             ),
 *             @OA\Property(
 *                 property="s90",
 *                 type="string",
 *                 description="UniRef90 ID - represents cluster at 90% sequence similarity"
 *             ),
 *             @OA\Property(
 *                 property="s100",
 *                 type="string",
 *                 description="UniRef100 ID - represents cluster at 100% sequence similarity"
 *             ),
 *             @OA\Property(
 *                 property="proteinFamily",
 *                 type="object",
 *                 description="Protein Family Information"
 *             ),
 *             @OA\Property(
 *                 property="accession",
 *                 type="string",
 *                 description="PFAM ID for protein family classification (pdb_pfam_mapping.PFAM_ACC)"
 *             ),
 *             @OA\Property(
 *                 property="name",
 *                 type="string",
 *                 description="Name of the protein family (pdb_pfam_mapping.PFAM_Name)"
 *             ),
 *             @OA\Property(
 *                 property="description",
 *                 type="string",
 *                 description="Description of the protein family (pdb_pfam_mapping.PFAM_desc)"
 *             ),
 *             @OA\Property(
 *                 property="value",
 *                 type="string",
 *                 description="Value representing the protein family (pdb_pfam_mapping.eValue)"
 *             ),
 *             @OA\Property(
 *                 property="proteinMotifs",
 *                 type="array",
 *                 description="Protein Motif Details from PROSITE Database",
 *                 @OA\Items(
 *                     @OA\Property(
 *                         property="id",
 *                         type="string",
 *                         description="PROSITE internal ID for protein motifs (prosite.ID)"
 *                     ),
 *                     @OA\Property(
 *                         property="description",
 *                         type="string",
 *                         description="Description of the protein motif pattern (prosite.DE)"
 *                     ),
 *                     @OA\Property(
 *                         property="sequence",
 *                         type="string",
 *                         description="Protein motif sequence pattern (prosite.PA)"
 *                     )
 *                 )
 *             ),
 *             @OA\Property(
 *                 property="interactionPartners",
 *                 type="array",
 *                 description="Protein Interaction Partners",
 *                 @OA\Items(
 *                     @OA\Property(
 *                         property="partnerID",
 *                         type="string",
 *                         description="Partner's UniProt ID (Format: string_id.uniprot_id) from protein.links.protein2"
 *                     ),
 *                     @OA\Property(
 *                         property="score",
 *                         type="number",
 *                         description="Combined interaction score from protein.links.combined_score"
 *                     )
 *                 )
 *             ),
 *             @OA\Property(
 *                 property="sequence",
 *                 type="object",
 *                 description="Protein Sequence Information"
 *             ),
 *             @OA\Property(
 *                 property="length",
 *                 type="number",
 *                 description="Length of the protein sequence"
 *             ),
 *             @OA\Property(
 *                 property="mass",
 *                 type="number",
 *                 description="Molecular mass of the protein"
 *             ),
 *             @OA\Property(
 *                 property="checksum",
 *                 type="string",
 *                 description="Checksum for sequence verification"
 *             ),
 *             @OA\Property(
 *                 property="modified",
 *                 type="date",
 *                 description="Date of last modification"
 *             ),
 *             @OA\Property(
 *                 property="version",
 *                 type="number",
 *                 description="Version of the protein sequence"
 *             ),
 *             @OA\Property(
 *                 property="sequence",
 *                 type="string",
 *                 description="Amino acid sequence of the protein (uniprot_???.sprot/trembl)"
 *             ),
 *             @OA\Property(
 *                 property="existence",
 *                 type="number",
 *                 description="Protein Existence Information"
 *             ),
 *             @OA\Property(
 *                 property="relevance",
 *                 type="number",
 *                 description="Protein Source Relevance"
 *             ),
 *             @OA\Property(
 *                 property="uniParcID",
 *                 type="string",
 *                 description="UniParc ID for Sequence Database"
 *             )
 *         )
 *     )
 * )
 */

abstract class OpenApiContoller
{
    abstract public function getOpenApiDocumentation(Request $request, Response $response, array $args);
}
