# R script to install requirements for exercises -------------------------------

## global variables (edit in this section) -------------------------------------
pkgs <- c("SummarizedExperiment", "SingleCellExperiment",
          "TENxPBMCData", "iSEE", "iSEEu", "scater", "scuttle", "scran",
          "BiocSingular", "SingleR", "celldex", "igraph", "knitr", "rmarkdown",
          "htmltools", "BiocStyle", "shiny")


## install Bioconductor --------------------------------------------------------
biocversion <- "3.21"
if (!require("BiocManager", quietly = TRUE)) {
    install.packages("BiocManager")
}

if (!identical(as.character(BiocManager::version()), biocversion)) {
    BiocManager::install(version = biocversion)
}

## install and check package loading -------------------------------------------
for (pkg in basename(pkgs)) {
    BiocManager::install(pkg, ask = FALSE, update = FALSE);

    if (! library(pkg, character.only = TRUE, logical.return = TRUE)) {
        write(paste0("Installation of package ",
                     pkg,
                     " exited with non-zero exit status"),
                     stdout())
        quit(status = 1, save = "no")
    }
}

sessionInfo()