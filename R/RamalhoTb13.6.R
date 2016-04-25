#' @name RamalhoTb13.6
#' @title Produção de Grãos de Feijão e Teor de \eqn{P_{2}O_{5}}
#' @description Experimento apresentado por Pereira (1993) referente a
#'     avaliação da produção de feijão e teor de \eqn{P_{2}O_{5}} em
#'     cada parcela, cujos dados foram obtidos de 10 cultivares de
#'     feijão. Neste experimento, a produtividade de grãos é considerada
#'     a variável dependente e o teor a variável independente.
#' @format Um \code{data.frame} com 30 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de 10 níveis que representa a cultivar de
#'     feijão utilizada no experimento.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis utilizado para fazer controle
#'     local.}
#'
#' \item{\code{teor}}{Teor de \eqn{P_{2}O_{5}} no solo, medidos em ppm.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medida em g/parcela.}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.6, pág. 243 e tabela 13.9, pág. 246)
#'
#'     Pereira, A. F. Emprego de Covariância visando reduzir o efeito da
#'     heterogeneidade Ambiental nos Experimentos com a Cultura do
#'     Fejoeiro (Phaseolus vulgaris L.) Lavras: UFLA, 1993. 58p.
#'     (Dissertação-Mestrado Fitotecnia).
#' @examples
#'
#' data(RamalhoTb13.6)
#'
#' library(lattice)
#'
#' xyplot(prod ~ teor, groups = cult, data = RamalhoTb13.6,
#'        auto.key = list(space = "right", title = "Cultivar"),
#'        xlab = "Teor de P_{2}O_{5}",
#'        ylab = "Produção de grãos de feijão")
#'
#' aggregate(prod ~ cult,  data = RamalhoTb13.6,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' aggregate(teor ~ cult,  data = RamalhoTb13.6,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL