## Test environments
* macOS 15.5, R 4.3.1 (local)
* R CMD check on macOS (Terminal) — 0 errors ✔ | 0 warnings ✔ | 1 note ✖
* devtools::check() — 0 errors ✔ | 0 warnings ✔ | 1 note ✖

## R CMD check results
There were no ERRORs or WARNINGs.

There was 1 NOTE:
* "found 22 marked UTF-8 strings": These are intentional and come from the included educational dataset. The package declares UTF-8 encoding in the DESCRIPTION file.

## devtools::check() additional NOTE (not present in built package)
* "Non-standard file/directory found at top level: 'cran-comments.md'": This file is properly listed in `.Rbuildignore` and is not included in the final tarball.

## Downstream dependencies
This is the first CRAN release, so there are no downstream reverse dependencies.

## Comments
This is the second submission attempt for the initial CRAN release of the **MSMU** package. The first submission (version 0.1.0) was automatically rejected due to incoming check NOTEs. These issues have been resolved in version 0.1.1. The package includes fundamental functions for descriptive statistics and educational data sets designed for use in introductory data science and statistics courses.

