#' @name ZimmermannTb12.19
#' @title Produtividade de feijão em ensaio de competição de cultivares
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
#' \item{\code{cult}}{Fator de níveis nominais. Identifica a cultivar de
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
#'     Feijão. (Tabela 12.19, pág 258)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.19)
#'
#' str(ZimmermannTb12.19)
#'
#' xyplot(prod ~ cult, data = ZimmermannTb12.19,
#'        groups = bloco, type = "b",
#'        xlab = "Tratamentos",
#'        ylab = "Produtividade de grãos",
#'        scales = list(x = list(rot = 90)))
#'
#' aggregate(prod ~ cult, data = ZimmermannTb12.19,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
