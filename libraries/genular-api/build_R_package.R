########################
### genular-database ###
########################


# Install necessary packages
# The following section checks if specific packages are installed, and if not, installs them.
if (!require("Rcpp")) install.packages("Rcpp", repos = "http://cran.us.r-project.org")
if (!require("devtools")) install.packages("devtools", repos = "http://cran.us.r-project.org")
if (!require("knitr")) install.packages("knitr", repos = "http://cran.us.r-project.org")
if (!require("roxygen2")) devtools::install_github("klutometis/roxygen")  # Install from GitHub if not available on CRAN
if (!require("rmarkdown")) install.packages("rmarkdown", repos = "http://cran.us.r-project.org")

# Load libraries
# Load the necessary libraries for building, documenting, and rendering the package.
library(devtools)  # Development tools for building and managing R packages
library(knitr)  # Tools for dynamic report generation in R
library(Rcpp)  # Interface for seamless integration of R and C++ code

# Set the project directory (consider passing as an argument or setting externally)
# Define the path to the package source directory.
project_dir <- "/mnt/data/projects/atomic/libraries/genular-api/R-package"
# Avoid using setwd() in scripts as it can affect the working directory globally and lead to unexpected behavior.
# Instead, use absolute paths or manage working directories externally if needed.
# setwd(project_dir)

# Load all functions, compile, and document the package
# Load the package functions without installing, useful for testing and development.
devtools::load_all(project_dir)

# Generate documentation files for the package.
# This function uses `roxygen2` to create or update the documentation files (e.g., `.Rd` files) based on the code.
devtools::document(project_dir)

# Build the package
# This creates a compressed file of the package that can be installed or distributed.
devtools::build(project_dir)

# Run package checks
# Check the package for common issues (e.g., coding problems, dependency issues).
devtools::check(project_dir)

# Optional: Uncomment and use if raw data preparation or README updates are necessary
# The following commands can be used to prepare raw data and update README for the package.
# usethis::use_data_raw()  # Set up infrastructure for creating data sets
# devtools::use_readme_rmd()  # Use an R Markdown file as the README

# Install the package locally for testing or deployment.
devtools::install(project_dir)

# Render README to ensure it is up to date before releasing the package
# Convert the README.Rmd file into a README.md file, making sure the documentation is current.
rmarkdown::render(file.path(project_dir, "README.Rmd"))

# Finalize documentation and release the package
# Generate documentation with `roxygen2` (similar to devtools::document but can be used independently).
roxygen2::roxygenise(project_dir)

# Release the package to CRAN or GitHub.
devtools::release(project_dir)


# setwd(project_dir)
# system(paste("R CMD Rd2pdf", shQuote(project_dir), "--output=manual.pdf"))

