#' @name ZimmermannTb12.19
#' @title Dados de produtividade de grãos de feijão
#' @description Dados do ensaio 1 de um experimento em DBC de competição
#'     de cultivares de feijão do grupo preto. Este ensaio foi realizado
#'     no município de Senador Canedo (GO). Houveram três cultivares
#'     testemunhas e mais seis em cada ensaio.  Cada experimento foi
#'     conduzido no período de inverno, sob irrigação por aspersão. Os
#'     dados são relativos à produtividade de grãos, em kg/ha.
#' @format Um \code{data.frame} com 36 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais. Tratamento aplicado em plantas.}
#'
#' \item{bloco}{Número inteiro que identifica o bloco da observação.}
#'
#' \item{prod}{Produtividade de grãos.}
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
#' data(ZimmermannTb12.19)
#'
#' xyplot(prod ~ trat , groups = bloco, data = ZimmermannTb12.19,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Produtividade de grãos")
#'
#' aggregate(prod ~ trat, data = ZimmermannTb12.19,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
