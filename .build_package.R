#!/usr/bin/env Rscript

options(echo = TRUE)

#--------------------------------------------
# Carregar pacotes.

library(devtools)
library(roxygen2)

sessionInfo()

#--------------------------------------------
# Carregar objetos do pacote.

file.create("NAMESPACE")

load_all()

ls("package:labestData")
packageVersion("labestData")

#--------------------------------------------
# Produzir a documentação dos objetos.

document()

cp <- compareVersion(a = "1.9.1",
                     b = as.character(packageVersion("devtools")))

if (cp > 0) {
    check_man()
} else {
    check_doc()
}

#--------------------------------------------
# Checar conteúdo e organização do pacote.

check(cleanup = FALSE,
      manual = TRUE,
      vignettes = FALSE,
      check_dir = "../")

#--------------------------------------------
# Gerar as vinhetas, caso existam.

if (length(list.files("./vignettes"))) {
    build_vignettes()
}

#--------------------------------------------
# Construir pacote.

build(manual = TRUE, vignettes = TRUE)

#--------------------------------------------
# Instalar o pacote.

lib <- path.expand("~/R-test/")
dir.create(lib)
.libPaths(new = lib)
.libPaths()

install()

unlink(lib, recursive = TRUE)

#--------------------------------------------
