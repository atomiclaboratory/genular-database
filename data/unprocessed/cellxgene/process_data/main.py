import json
import glob
import math
import sys
import os
from multiprocessing import Pool, cpu_count

import numpy as np
import scanpy as sc

# scanpy settings
sc.settings.verbosity = 0
sc.settings.autosave = True


def get_size(file_path, unit='bytes'):
    file_size = os.path.getsize(file_path)
    exponents_map = {'bytes': 0, 'kb': 1, 'mb': 2, 'gb': 3}
    if unit not in exponents_map:
        raise ValueError("Must select from \
        ['bytes', 'kb', 'mb', 'gb']")
    else:
        size = file_size / 1024 ** exponents_map[unit]
        return round(size, 3)


def process_gene_chunk(gene_names_chunk):
    gene_cell_types_chunk = {}

    # Loop over each gene in the gene names list
    for gene_idx, gene_name in gene_names_chunk.items():

        idx = adata.var_names.get_loc(gene_idx)
        # Extract the expression values for the current gene across all cells
        gene_expr = adata.X[:, idx]

        # Identify the cells where the gene is expressed (i.e. where the expression is non-zero)
        expressing_cells = np.nonzero(gene_expr)[0]
        # Get the cell type labels for the expressing cells
        expressing_cell_types = adata.obs['cell_type_ontology_term_id'][expressing_cells]

        if gene_idx not in gene_cell_types_chunk:
            gene_cell_types_chunk[gene_idx] = {}

        # Loop over each unique cell type in the expressing cells
        for cell_type in set(expressing_cell_types):
            if cell_type not in gene_cell_types_chunk[gene_idx]:
                gene_cell_types_chunk[gene_idx][cell_type] = 0
            # Add the count for the current cell type for the current gene
            gene_cell_types_chunk[gene_idx][cell_type] += np.count_nonzero(expressing_cell_types == cell_type)

    return gene_cell_types_chunk


def load_data(data_path, set_obs_names="", set_var_names=""):
    try:
        adata = sc.read_h5ad(data_path)
    except OSError as error:
        print("===> ERROR: ", error)
        raise Exception(error)

    if not set_obs_names == "":
        if set_obs_names not in adata.obs_keys():
            raise Exception(f"obs {set_obs_names} not found, options are: {adata.obs_keys()}")
        adata.obs_names = adata.obs[set_obs_names]
    if not set_var_names == "":
        if set_var_names not in adata.var_keys():
            raise Exception(f"var {set_var_names} not found, options are: {adata.var_keys()}")
        adata.var_names = adata.var[set_var_names]

    if not adata._obs.index.is_unique:
        print("Warning: obs index is not unique")
    if not adata._var.index.is_unique:
        print("Warning: var index is not un ique")

    return adata


def process_disease_ontology_term_ids(adata, output_prefix):
    # If 'disease_ontology_term_id' is not defined in adata, process all data and set disease_ontology_term_id to
    # "normal"
    if 'disease_ontology_term_id' not in adata.obs:
        print("===> WARNING: 'disease_ontology_term_id' not found in adata. Processing all data as 'normal'")
        unique_disease_ontology_term_ids = ["normal"]
    else:
        # Extract unique disease ontology term IDs
        unique_disease_ontology_term_ids = adata.obs['disease_ontology_term_id'].unique()

    for disease_ontology_term_id in unique_disease_ontology_term_ids:
        print(f"==> Processing disease_ontology_term_id: {disease_ontology_term_id}")

        # If disease_ontology_term_id is "normal", process all data
        if disease_ontology_term_id == "normal":
            adata_filtered = adata
        else:
            # Filter the data by the current disease_ontology_term_id
            adata_filtered = adata[adata.obs['disease_ontology_term_id'] == disease_ontology_term_id]

        # Extract the gene names from the filtered data
        gene_names_filtered = adata_filtered.var['feature_name']

        # Split the gene names list into several chunks
        total_cpu = (600 / get_size(h5ad_file, 'gb'))
        total_cpu = math.floor(total_cpu)
        if total_cpu > 96:
            total_cpu = cpu_count() - 1

        print(f"==> Converting data using {total_cpu} CPUs")
        gene_cell_types_filtered = run(gene_names_filtered, total_cpu)

        if len(adata_filtered.obs['tissue_ontology_term_id']) > 0:
            tissue = adata_filtered.obs['tissue_ontology_term_id'][0]
        else:
            tissue = "unknown"

        # Append the disease_ontology_term_id to the output filename
        output_filename = output_prefix + '|' + tissue + '|' + disease_ontology_term_id + '.json'

        print(f"==> Writing data to JSON file: {output_filename}")
        j = json.dumps({k: v for k, v in gene_cell_types_filtered.items()})

        with open(output_filename, "w") as outfile:
            outfile.write(j)


def run(gene_names, num_chunks):
    gene_names_chunks = np.array_split(gene_names, num_chunks)

    # Process each chunk in a separate process using a pool of worker processes
    with Pool(processes=num_chunks) as pool:
        results = pool.map(process_gene_chunk, gene_names_chunks)

    # Combine the results from each process into a single dictionary
    gene_cell_types = {}
    for result in results:
        for gene_idx, cell_types in result.items():
            if gene_idx in gene_cell_types:
                gene_cell_types[gene_idx] += cell_types
            else:
                gene_cell_types[gene_idx] = cell_types

    return gene_cell_types


os.chdir('../bulk')

for filename in os.listdir("."):

    if filename.endswith(".h5ad"):
        h5ad_file = filename
        output_prefix = h5ad_file.replace(".h5ad", "")

        # Use glob to search for JSON files with the same prefix
        matching_files = glob.glob(f"{output_prefix}*.json")

        if matching_files:
            print("==> File(s) already exist:")
            for matched_file in matching_files:
                print(matched_file)
            continue

        print("==> Processing START: ", h5ad_file)

        try:
            adata = load_data(h5ad_file)
        except Exception as error:
            print("===> ERROR: ", error)
            os.rename(h5ad_file, h5ad_file.replace(".h5ad", ".error"))
            continue

        try:
            if "cell_type_ontology_term_id" not in adata.obs:
                print("===> ERROR: mandatory key not found")
                print(adata.obs.keys())
                os.rename(h5ad_file, h5ad_file.replace(".h5ad", ".key_error"))
                continue
        except Exception as error:
            print("===> ERROR: ", error)
            print(adata)
            os.rename(h5ad_file, h5ad_file.replace(".h5ad", ".error"))
            continue

        sc.pp.filter_cells(adata, min_genes=1)
        sc.pp.filter_genes(adata, min_cells=1)

        print("==> Extracting data")
        # obs: 'assay_ontology_term_id', 'self_reported_ethnicity_ontology_term_id', 'is_primary_data',
        # 'organism_ontology_term_id', 'sample', 'tissue_ontology_term_id', 'disease_state',
        # 'sex_ontology_term_id', 'genotype', 'development_stage_ontology_term_id', 'author_cell_type',
        # 'cell_type_ontology_term_id', 'disease_ontology_term_id', 'donor_id', 'suspension_type',
        # 'cell_type', 'assay', 'disease', 'organism', 'sex', 'tissue', 'self_reported_ethnicity',
        # 'development_stage', 'n_genes'
        # var: 'feature_is_filtered', 'feature_name', 'feature_reference', 'feature_biotype', 'n_cells'
        # uns: 'schema_version', 'title'
        # obsm: 'X_spatial'

        # For each disease_ontology_term_id in the dataset, extract the cell types and save in separate JSON file
        process_disease_ontology_term_ids(adata, output_prefix)
