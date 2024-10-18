#!/usr/bin/env python3

import ijson
import csv

json_file_path = 'output/data.processed.json'

# Initialize dictionaries to hold counts for each category
cell_expression_count = {}
cell_tissue_expression_count = {}
cell_disease_expression_count = {}
tissue_expression_count = {}
disease_expression_count = {}
cell_experiment_expression_count = {}  # New dictionary for cell_id and experiment_id

# Function to incrementally parse the large JSON file
def process_large_json(file_path):
    with open(file_path, 'r') as f:
        # Parsing JSON object per gene, one at a time
        for gene_data in ijson.items(f, '', multiple_values=True):
            for gene, gene_info in gene_data.items():
                for expression in gene_info.get("expressions", []):
                    cell_id = expression.get("cell_id")
                    tissue_id = expression.get("tissue_id")
                    disease_id = expression.get("disease_id")
                    
                    # Increment counts by cell_id
                    if cell_id:
                        if cell_id in cell_expression_count:
                            cell_expression_count[cell_id] += 1
                        else:
                            cell_expression_count[cell_id] = 1

                    # Increment counts by cell_id and tissue_id
                    if cell_id and tissue_id:
                        key = (cell_id, tissue_id)
                        if key in cell_tissue_expression_count:
                            cell_tissue_expression_count[key] += 1
                        else:
                            cell_tissue_expression_count[key] = 1

                    # Increment counts by cell_id and disease_id
                    if cell_id and disease_id:
                        key = (cell_id, disease_id)
                        if key in cell_disease_expression_count:
                            cell_disease_expression_count[key] += 1
                        else:
                            cell_disease_expression_count[key] = 1

                    # Increment counts by tissue_id
                    if tissue_id:
                        if tissue_id in tissue_expression_count:
                            tissue_expression_count[tissue_id] += 1
                        else:
                            tissue_expression_count[tissue_id] = 1

                    # Increment counts by disease_id
                    if disease_id:
                        if disease_id in disease_expression_count:
                            disease_expression_count[disease_id] += 1
                        else:
                            disease_expression_count[disease_id] = 1
                    
                    # Increment counts by cell_id and experiment_id
                    if cell_id and "values" in expression:
                        for value in expression["values"]:
                            experiment_id = value.get("experiment_id")
                            if experiment_id:
                                key = (cell_id, experiment_id)
                                if key in cell_experiment_expression_count:
                                    cell_experiment_expression_count[key] += 1
                                else:
                                    cell_experiment_expression_count[key] = 1

# Run the function to process the large JSON file
process_large_json(json_file_path)

# Helper function to write counts to CSV
def write_csv(file_path, fieldnames, data):
    with open(file_path, 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for key, count in data.items():
            if isinstance(key, tuple):
                row = {fieldnames[0]: key[0], fieldnames[1]: key[1], fieldnames[2]: count}
            else:
                row = {fieldnames[0]: key, fieldnames[1]: count}
            writer.writerow(row)

# Write the results to the appropriate CSV files

# 1. Count by cell_id
write_csv('output/cell_expression_counts.csv', ['Cell_ID', 'Expression_Count'], cell_expression_count)

# 2. Count by cell_id and tissue_id
write_csv('output/cell_tissue_expression_counts.csv', ['Cell_ID', 'Tissue_ID', 'Expression_Count'], cell_tissue_expression_count)

# 3. Count by cell_id and disease_id
write_csv('output/cell_disease_expression_counts.csv', ['Cell_ID', 'Disease_ID', 'Expression_Count'], cell_disease_expression_count)

# 4. Count by tissue_id
write_csv('output/tissue_expression_counts.csv', ['Tissue_ID', 'Expression_Count'], tissue_expression_count)

# 5. Count by disease_id
write_csv('output/disease_expression_counts.csv', ['Disease_ID', 'Expression_Count'], disease_expression_count)

# 6. Count by cell_id and experiment_id
write_csv('output/cell_experiment_expression_counts.csv', ['Cell_ID', 'Experiment_ID', 'Expression_Count'], cell_experiment_expression_count)

print("All expression counts saved successfully!")
