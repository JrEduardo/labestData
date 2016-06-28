#' @name ZimmermannTb12.27
#' @title Produtividade de Arroz para Resist\enc{ê}{e}ncia a Insetos
#' @description Ensaio 2 de um experimento em delineamento quadrado
#'     latino, que avaliou a resistência a insetos em seis cultivares de
#'     arroz, sendo uma delas comum ao ensaio 1. Os dados são de
#'     produtividade de espiguetas, em gramas.
#' @format Um \code{data.frame} com 36 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis nominais. Indica em que linha do
#'      quadrado latino a unidade experimental está.}
#'
#' \item{coluna}{Fator de níveis nominais. Indica em que coluna do
#'     quadrado latino a unidade experimental está.}
#'
#' \item{cult}{Fator de níveis nominais que representam as cultivares
#'     de arroz.}
#'
#' \item{prod}{Produção de espiguetas, em gramas.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.27, pág 262)
#' @examples
#'
#' library(lattice)
#' library(reshape)
#'
#' data(ZimmermannTb12.27)
#' str(ZimmermannTb12.27)
#'
#' cast(ZimmermannTb12.27, linha ~ coluna, value = "cult")
#' cast(ZimmermannTb12.27, linha ~ coluna, value = "prod")
#'
#' levelplot(prod ~ linha + coluna,
#'           data = ZimmermannTb12.27, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y, ZimmermannTb12.27$cult[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
#' xyplot(prod ~ cult, data = ZimmermannTb12.27, type = c("p", "a"),
#'        xlab = "Cultivares",
#'        ylab = expression("Produtividade de espiguetas"~(g)))
#'
NULL
