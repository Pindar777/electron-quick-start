# copy all relevant R-files

strPath <- "./shiny-electron-quick-start"
file.copy(
    from = list.files(".", "*.R"), to = strPath,
    overwrite = TRUE, recursive = TRUE, copy.mode = TRUE
)

dir.create(paste0(strPath, "/www"))
file.copy("./www", strPath, recursive = TRUE)

# install packages

if(!requireNamespace("batch", quietly=TRUE)) {
  install.packages("batch", repos = "http://cran.us.r-project.org")
}

if(!requireNamespace("tidyverse", quietly=TRUE)) {
  install.packages("tidyverse", repos = "http://cran.us.r-project.org")
}

if (!requireNamespace("remotes", quietly = TRUE)) {
  install.packages("remotes", repos = "http://cran.us.r-project.org")
}

if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager", repos = 'http://cran.us.r-project.org')
}

if(!requireNamespace("shiny", quietly=TRUE)) {
  install.packages("shiny", repos = "http://cran.us.r-project.org")
}




# if (!requireNamespace("magrittr", quietly = TRUE)){
#   utils::install.packages("magrittr", repos='http://cran.us.r-project.org')
# }
 library(batch)
# library(tidyverse)
# library(purrr)
# library(stringr)
# library(magrittr)

batch::parseCommandArgs(evaluate = TRUE)

if(cran_packages=="NULL") {
  cran_packages <- NULL
}

if(bioc_packages=="NULL") {
  bioc_packages <- NULL
}

if(github_packages=="NULL") {
  github_packages <- NULL
}

clean_package_list <- function(...){
  stringr::str_split(..., ",") %>%
    unlist() %>%
    as.list()
}

installFun <- function(packages, type="cran") {
  if(type=="cran"){
      utils::install.packages(packages, repos='http://cran.us.r-project.org')
  }else if (type == "github"){
      remotes::install_github(packages, build = FALSE, dependencies = FALSE)
  }else if (type == "bioc"){
      BiocManager::install(packages, update = FALSE)
  }
}

if(!is.null(cran_packages)) {
  cran_packages %>%
    clean_package_list() %>%
    purrr::map(installFun, "cran")
}

if (!is.null(bioc_packages)) {
  bioc_packages %>%
    clean_package_list() %>%
    purrr::map(installFun, "bioc")
}

if (!is.null(github_packages)) {
  github_packages %>%  
    stringr::str_split(",") %>%
    unlist() %>%
    installFun(type="github")
}