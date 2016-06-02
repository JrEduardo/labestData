#' @name PimentelPg185
#' @title Experimento em Blocos Imcompletos do Tipo III
#' @description Experimento em blocos imcompletos equilibrados, no qual
#'     temos v = 5 tratamentos, lambda = 3, k = 3 parcelas por bloco,
#'     r = 6 repetições e b = 10 blocos, em que os blocos não podem ser
#'     agrupados em repetições ou grupos de repetições.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 10 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos que são os
#'     diferentes tratamentos do experimento.}
#'
#' \item{y}{Variável medida em função do bloco e da variedade.}
#'
#' }
#' @keywords DBI
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Página 185)
#' @examples
#'
#' data(PimentelPg185)
#' str(PimentelPg185)
#' 
#' library(lattice)
#'
#' xyplot(y ~ varied,
#'        groups = bloco,
#'        data = PimentelPg185,
#'        xlab = "Variedade",
#'        ylab = "Y")
#'
NULL