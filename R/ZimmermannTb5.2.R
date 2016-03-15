#' @name ZimmermannTb5.2 
#' @title Dados de produção de grãos de arroz
#' @description Experimento em DQL, cujo objetivo foi medir a resposta 
#'     de um grupo de oito genótipos de arroz ao ataque inicial de pragas.
#'     Os dados se referem à produção de arroz em kg/ha.
#' @format Um \code{data.frame} com 64 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis numéricos. Indica em que linha do quadrado a 
#'      UE se encontra.}
#'
#' \item{coluna}{Fator de níveis numéricos. Indica em que coluna do quadrado a
#'      UE se encontra}
#'
#' \item{geno}{Indica o genótipo do arroz.}
#'
#' \item{prod}{Produção de arroz, em kg/ha.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 92)
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#' library(reshape)
#'
#' data(ZimmermannTb5.2)
#'
#' cast(ZimmermannTb5.2, linha~coluna, value="geno")
#' cast(ZimmermannTb5.2, linha~coluna, value="prod")
#' 
#' levelplot(prod~linha+coluna,
#'           data=ZimmermannTb5.2, aspect="iso",
#'           panel=function(x, y, z, subscripts, ...){
#'             panel.levelplot(x, y, z, subscripts=subscripts)
#'             panel.text(x, y, q$geno[subscripts])
#'             panel.text(x, y, z, pos=1)
#'           })
#' 
#' xyplot(prod~geno, data=ZimmermannTb5.2, type=c("p","a"), col="red", 
#'        xlab="Tipo de Tratamento", ylab="Produção Total", 
#'        main="Experimento com diferentes tipos 
#'        de tratamento em DQL")
#'
NULL