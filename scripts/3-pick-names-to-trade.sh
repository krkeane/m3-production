#!/bin/bash

set -e

# scripts from twsToJson/R
Rscript -e "rmarkdown::render('rule-605-est-00.Rmd')"
Rscript -e "rmarkdown::render('rule-605-est-01.Rmd')"
Rscript -e "rmarkdown::render('rule-605-est-05-knapsack.Rmd')"

printf "\nTrading list created.\n"

