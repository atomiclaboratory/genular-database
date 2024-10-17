import ijson
import csv

json_file_path = 'output/data.processed.json'

# Initialize a dictionary to hold counts for each cell dynamically
cell_expression_count = {}

# Function to incrementally parse the large JSON file
def process_large_json(file_path):
    with open(file_path, 'r') as f:
        # Parsing JSON object per gene, one at a time
        for gene_data in ijson.items(f, '', multiple_values=True):
            for gene, gene_info in gene_data.items():
                for expression in gene_info.get("expressions", []):
                    cell_id = expression.get("cell_id")
                    if cell_id:
                        # Increment the count for each cell ID found
                        if cell_id in cell_expression_count:
                            cell_expression_count[cell_id] += 1
                        else:
                            cell_expression_count[cell_id] = 1

# Run the function to process the large JSON file
process_large_json(json_file_path)

# Write the results to a CSV file
csv_file_path = 'output/cell_expression_counts.csv'

with open(csv_file_path, 'w', newline='') as csvfile:
    fieldnames = ['Cell_ID', 'Expression_Count']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()
    for cell_id, count in cell_expression_count.items():
        writer.writerow({'Cell_ID': cell_id, 'Expression_Count': count})

print(f"Expression counts saved to {csv_file_path}")
