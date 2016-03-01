#!/usr/bin/env Rscript

#--------------------------------------------
# Carregar pacotes.

library(devtools)
library(roxygen2)

sessionInfo()

#--------------------------------------------
# Carregar objetos do pacote.

load_all()

ls("package:labestData")
packageVersion("labestData")

#--------------------------------------------
# Gerar a documentação dos objetos.

document()
check_doc()

#--------------------------------------------
# Chegar conteúdo e organização do pacote.

check(cleanup = FALSE,
      manual = TRUE,
      vignettes = FALSE,
      check_dir = "../")

#--------------------------------------------
# Gerar as vinhetas.

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
