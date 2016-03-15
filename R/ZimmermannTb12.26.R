#' @name ZimmermannTb12.26 
#' @title Dados de produtividade de espiguetas
#' @description Ensaio 1 de um experimento em DQL, que avaliou a resistência
#'      a insetos em seis cultivares de arroz, sendo uma delas comum ao 
#'      ensaio 2. Os dados são de produtividade de espiguetas, em gramas.  
#' @format Um \code{data.frame} com 36 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis numéricos. Indica em que linha do quadrado a 
#'      UE se encontra.}
#'
#' \item{coluna}{Fator de níveis numéricos. Indica em que coluna do quadrado a
#'      UE se encontra}
#'
#' \item{cult}{Indica a cultivar.}
#'
#' \item{prod}{Produção de espiguetas, em gramas.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 261)
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#' library(reshape)
#'
#' data(ZimmermannTb12.26)
#'
#' cast(ZimmermannTb12.26, linha~coluna, value="prod")
#' cast(ZimmermannTb12.26, linha~coluna, value="cult")
#' 
#' levelplot(prod~linha+coluna,
#'           data=p, aspect="iso",
#'           panel=function(x, y, z, subscripts, ...){
#'             panel.levelplot(x, y, z, subscripts=subscripts)
#'             panel.text(x, y, ZimmermannTb12.26$cult[subscripts])
#'             panel.text(x, y, z, pos=1)
#'           })
#' 
#' xyplot(prod~cult, data=ZimmermannTb12.26, type=c("p","a"), col="blue", 
#'        xlab="Cultivar", ylab="Produtividade de Espiguetas", 
#'        main="Experimento em DQL")
#'
NULL