#' @name PimentelTb10.4.1
#' @title Experimento em Blocos Imcompletos do Tipo II
#' @description Experimento em blocos imcompletos equilibrados, no qual
#'     temos v = 7 tratamentos, lambda = 1, r = 6 repetições, b = 21
#'     blocos, em que os blocos são reunidos em grupos de duas
#'     repetições.
#' @format Um \code{data.frame} com 42 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{grupo}}{Fator de 3 níveis qualitativos, que são os
#'     diferentes grupos do experimento.}
#'
#' \item{\code{bloco}}{Fator de 7 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{varied}}{Fator de 7 níveis qualitativos que são os
#'     diferentes tratamentos do experimento.}
#'
#' \item{y}{Variável medida em função dos grupos, dos blocos e das
#'     variedades.}
#'
#' }
#' @keywords DBI
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 10.4.1,
#'     pág. 192)
#' @examples
#'
#' data(PimentelTb10.4.1)
#' str(PimentelTb10.4.1)
#' 
#' library(lattice)
#'
#' xyplot(y ~ varied,
#'        groups = grupo,
#'        data = PimentelTb10.4.1,
#'        xlab = "Variedade",
#'        ylab = "Y")
#'
NULL