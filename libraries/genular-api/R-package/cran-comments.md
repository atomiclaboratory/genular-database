## Test environments
- Local: R 4.4.1 on Manjaro Linux 24.0.8 (x86_64)

## R CMD check results
- No ERRORs or WARNINGs.
- 1 NOTE:
  - "No visible global binding for global variables" for several variables used in `dplyr` pipelines. These have been addressed by declaring the variables using `utils::globalVariables()`.

## Downstream dependencies
- This is the first release, and there are no downstream dependencies.

## Comments
- This is the initial release of the **'genular' R API** package, which provides R functions to interact with the 'Genular' API (<https://genular.atomic-lab.org>) for querying cells, gene expression profiles, and related biological data.
- Updated the DESCRIPTION file to adhere to CRAN's requirements: package names and software names are now in single quotes, and a web reference for the API has been added.
- Commented-out lengthy examples (> 5 sec) and replaced with executable toy examples to ensure compliance with CRAN guidelines.
