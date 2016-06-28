#' @name ZimmermannTb12.20
#' @title Produtividade de Gr\enc{ã}{a}os de Cultivares de Feij\enc{ã}{a}o
#' @description Dados do ensaio 2 de um experimento em DBC de competição
#'     de cultivares de feijão do grupo preto. Este ensaio foi realizado
#'     no município de Santo Antonio de Goiás (GO). Houveram três
#'     cultivares testemunhas e mais seis em cada ensaio.  Cada
#'     experimento foi conduzido no período de inverno, sob irrigação
#'     por aspersão. Os dados são relativos à produtividade de grãos, em
#'     kg/ha.
#' @format Um \code{data.frame} com 36 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. dentifica a cultivar de
#'     feijão.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{prod}}{Produtividade de grãos em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 258)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.20)
#'
#' xyplot(prod ~ cult , groups = bloco, data = ZimmermannTb12.20,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Produtividade de grãos")
#'
#' aggregate(prod ~ cult, data = ZimmermannTb12.20,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
