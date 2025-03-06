# System dependencies
system("apt-get update && apt-get install -y libxml2-dev libssl-dev libcurl4-openssl-dev")

# CRAN packages
install.packages(c("BiocManager", "IRkernel", "remotes"), repos = "https://cloud.r-project.org")

# Bioconductor packages
BiocManager::install(c(
  "TCGAbiolinks",
  "SummarizedExperiment"
), ask = FALSE)

# Register R kernel for Jupyter
IRkernel::installspec()
