#' @name ZimmermannTb4.4
#' @title Estudo sobre produtividade de grãos de feijão
#' @description Dados de um ensaio de competição de cultivares, em
#'     blocos completos ao acaso, da produção de grãos de feijão em
#'     kg/ha.  O experimento teve quinze tratamentos (cultivares e/ou
#'     linhagens) e quatro blocos.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis nominais. Tratamento aplicado em feijão.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da observação.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 72)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb4.4)
#'
#' xyplot(prod ~ trat, data = ZimmermannTb4.4,
#'        type = "o", jitter.x = TRUE, groups = bloco,
#'        xlab = "Tratamento", ylab = "Produção de feijão",
#'        main = "Experimento de competição de cultivares")
#'
#' aggregate(prod ~ trat, data = ZimmermannTb4.4,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
