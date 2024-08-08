#!/usr/bin/env Rscript

install.packages("usethis")
install.packages("devtools")
library(usethis)
library(devtools)

install_github("BTIP2024/write-seurat-object")
install_github("BTIP2024/quality-control-seurat")
install_github("BTIP2024/selection-scaling-seurat")
install_github("BTIP2024/pca-seurat")
# library(writeseuratobject)
#library(qualitycontrolseurat)
#library(selectionscalingseurat)
#library(pcaseurat)
