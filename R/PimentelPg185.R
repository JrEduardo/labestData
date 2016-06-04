#' @name PimentelPg185
#' @title Experimento em Blocos Incompletos do Tipo III
#' @description Experimento em blocos incompletos equilibrados, no qual
#'     temos \eqn{v = 5} tratamentos, \eqn{\lambda = 3}, \eqn{k = 3}
#'     parcelas por bloco, \eqn{r = 6} repetições e \eqn{b = 10} blocos,
#'     em que os blocos não podem ser agrupados em repetições ou grupos
#'     de repetições.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 10 níveis qualitativos, usado para
#'     controle local. Cada bloco tem tamanho 3.}
#'
#' \item{\code{trat}}{Fator de 5 níveis qualitativos que são os
#'     tratamentos estudados do experimento.}
#'
#' \item{y}{Variável resposta medida nas parcelas.}
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
#' xyplot(y ~ trat,
#'        groups = bloc, type = "o",
#'        data = PimentelPg185,
#'        auto.key = list(title = "Blocos",
#'                        cex.title = 1.1, columns = 5),
#'        xlab = "Tratamento",
#'        ylab = "Resposta")
#'
NULL
