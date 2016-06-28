#' @name ZimmermannTb5.2
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Gen\enc{ó}{o}tipos de Arroz
#' @description Experimento em delineamento quadrado latino cujo
#'     objetivo foi medir a resposta em produtividade de um grupo de
#'     oito genótipos de arroz ao ataque inicial de pragas.
#' @format Um \code{data.frame} com 64 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{linha}{Fator de níveis nominais. Indica em que linha do
#'      quadrado latino a unidade experimental está.}
#'
#' \item{coluna}{Fator de níveis nominais. Indica em que coluna do
#'     quadrado latino a unidade experimental está.}
#'
#' \item{geno}{Fator de níveis nominais que representam os genótipos de
#'     arroz em estudo.}
#'
#' \item{prod}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DQL
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.2, pág 92)
#' @examples
#'
#' library(lattice)
#' library(reshape)
#'
#' data(ZimmermannTb5.2)
#'
#' str(ZimmermannTb5.2)
#'
#' cast(ZimmermannTb5.2, linha ~ coluna, value = "geno")
#' cast(ZimmermannTb5.2, linha ~ coluna, value = "prod")
#'
#' levelplot(prod ~ linha + coluna,
#'           data = ZimmermannTb5.2, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts)
#'               panel.text(x, y, ZimmermannTb5.2$geno[subscripts],
#'                          pos = 3)
#'               panel.text(x, y, sprintf("%0.1f", z), pos = 1)
#'           })
#'
#' xyplot(prod ~ geno, data = ZimmermannTb5.2, type = c("p", "a"),
#'        xlab = "Genótipos de arroz",
#'        ylab = expression("Produção de arroz"~(kg~ha^{-1})))
#'
NULL
