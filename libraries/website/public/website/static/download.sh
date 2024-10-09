#!/bin/bash

# Define the base directory for saving the downloaded files
BASE_DIR="3rdparty"

# Create the base directory if it doesn't exist
mkdir -p "$BASE_DIR"

# Define an array of URLs to download. These should include all specified external CSS and JavaScript links.
urls=(
  "https://code.jquery.com/jquery-3.7.1.min.js"
  "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
  "https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
  "https://cdn.jsdelivr.net/npm/chart.js"
  "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"
  "https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"
  "https://cdn.datatables.net/2.0.1/js/dataTables.js"
  "https://cdn.datatables.net/2.0.1/js/dataTables.bootstrap4.js"
  "https://cdn.datatables.net/buttons/3.0.0/js/dataTables.buttons.min.js"
  "https://cdn.datatables.net/buttons/3.0.0/js/buttons.bootstrap4.min.js"
  "https://cdn.datatables.net/buttons/3.0.0/js/buttons.html5.min.js"
  "https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"
  "https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
  "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
  "https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css"
  "https://cdn.jsdelivr.net/npm/@ttskch/select2-bootstrap4-theme@x.x.x/dist/select2-bootstrap4.min.css"
  "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/styles/atom-one-dark.min.css"
  "https://cdn.datatables.net/2.0.1/css/dataTables.bootstrap4.css"
  "https://cdn.datatables.net/buttons/2.2.2/css/buttons.dataTables.min.css"
)

# Download each file using wget and save it in the BASE_DIR
for url in "${urls[@]}"; do
  # Create subdirectories based on the URL structure
  subdir="${url#*://}"
  subdir="${subdir%%\?*}" # Remove query string if present
  subdir="$BASE_DIR/${subdir%/*}"
  mkdir -p "$subdir"
  
  # Download the file
  wget -nc -P "$subdir" "$url"
done

echo "Download complete."
