#!/bin/bash

# untar your R installation
tar -xzf R.tar.gz

# make sure the script will use your R installation
export PATH=$(pwd)/R/bin:$PATH

# run R, with the name of your  R script
R CMD BATCH "--args $1 $2" perplexity.R $1.$2.Rout
