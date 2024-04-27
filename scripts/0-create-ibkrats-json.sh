#!/bin/bash

set -e

# scripts from twsToJson/R
Rscript -e "rmarkdown::render('load-01.Rmd')"
Rscript -e "rmarkdown::render('json-00.Rmd')"

printf "\nIBKR SEC rule 605 files processed.\n"
