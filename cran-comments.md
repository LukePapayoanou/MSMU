## Test environments
* macOS 15.5, R 4.3.1 (local)
* R CMD check on macOS (Terminal) — 0 errors ✔ | 0 warnings ✔ | 1 note ✖
* devtools::check() — 0 errors ✔ | 0 warnings ✔ | 0 notes ✔

## R CMD check results
There were no ERRORs or WARNINGs.

There was 1 NOTE:
* "found 22 marked UTF-8 strings": These are intentional and come from included educational datasets. The package declares UTF-8 encoding in the DESCRIPTION file and the strings are expected.

## devtools::check() additional NOTE (not present in built package)
* "Non-standard file/directory found at top level: 'cran-comments.md'": This file is correctly listed in `.Rbuildignore` and is not included in the source tarball.

## Downstream dependencies
This is the first CRAN release, so there are no reverse dependencies.

## Comments
This is the **second submission attempt** for the initial CRAN release of the **MSMU** package.  
The first submission (version 0.1.0) was automatically rejected due to incoming check NOTEs, which were partially resolved in version 0.1.1. This version (0.1.2) further corrects minor issues with documentation links identified during final review. The package includes core descriptive statistics functions and educational datasets designed
for data courses.


