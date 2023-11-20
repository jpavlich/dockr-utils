#!/bin/bash
Rscript -e 'install.packages("testthat", force=FALSE)'
Rscript -e 'install.packages("devtools", force=FALSE)'
Rscript -e 'library(devtools);devtools::install_deps(upgrade="always")'