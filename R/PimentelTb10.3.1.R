#' @name PimentelTb10.3.1
#' @title Experimento em Blocos Imcompletos do Tipo I
#' @description Experimento em blocos imcompletos equilibrados, no qual
#'     temos v = 8 tratamentos, \eqn{\lambda = 1}, k = 2 parcelas por
#'     bloco, r = 7 repetições, b = 28 blocos e E = 55%, em que os
#'     blocos podem ser agrupados em repetições.
#' @format Um \code{data.frame} com 56 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator de 7 níveis qualitativos, que são as
#'     repetições do experimento.}
#'     
#' \item{\code{varied}}{Fator de 8 níveis qualitativos que são os
#'     diferentes tratamentos do experimento.}
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{y}{Variável medida em função das repetições, das variedades e
#'     dos blocos.}
#'
#' }
#' @keywords DBI
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 10.3.1,
#'     pág. 190)
#' @examples
#'
#' data(PimentelTb10.3.1)
#' str(PimentelTb10.3.1)
#' 
#' library(lattice)
#'
#' xyplot(y ~ varied,
#'        groups = bloco,
#'        auto.key = list(title = "Blocos", cex.title = 1, columns = 4),
#'        data = PimentelTb10.3.1,
#'        xlab = "Variedade",
#'        ylab = "Y")
#'
NULL