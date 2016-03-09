library(devtools)
library(roxygen2)

packageVersion("devtools")
packageVersion("roxygen2")

#-----------------------------------------------------------------------
setwd("/home/angela/labestData/data-raw")

MingotiTb6.1 <- read.table(file = "MingotiTb6.1.txt", header = TRUE, sep = "\t")
str(MingotiTb6.1)

library(lattice)
xyplot(renda ~ idade,
       data = MingotiTb6.1,
       ylab="Renda mensal")



# Se necessário, edite os dados antes de incluir no pacote.

# Usa os dados no pacote.
use_data(MingotiTb6.1)

#-----------------------------------------------------------------------
# Escreva a documentação do dataset.
 do pacote.

# Limpe a área de trabalho.

rm(list = ls())
ls()

load_all()
search()

ls("package:labestData")
str(MingotiTb2.2)

# Os objetos foram carregados?
# Estão exatamente como você os definiu?

#-----------------------------------------------------------------------
# Gerar e verificar a documentação.
getwd()
document()
check_man()

system("tree --charset=ascii -F ./")

# Toda documentação foi gerada?
# A documentação foi verificada sem erros?

#-----------------------------------------------------------------------
# Verificar constituição e organização do pacote e construi-lo.

check()
build()

#-----------------------------------------------------------------------
