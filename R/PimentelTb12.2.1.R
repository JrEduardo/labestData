#' @name PimentelTb12.2.1
#' @title Experimento de Adubação de Milho em Polinômios Ortogonais
#' @description Experimento de adubação de milho em polinômios
#'     ortogonais, feito pelos engenheiros agrônomos Glauco Pinto Viegas
#'     e Erik Smith, em blocos ao acaso
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{P2O5}}{Fator de 5 níveis qualitativos que são as
#'     diferentes dosagens de \eqn{P_2O_5} em \eqn{kg.ha^{-1}}.}
#'
#' \item{\code{prod}}{Produção de milho, em kg/parcela.}
#'
#' }
#' @keywords RP
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 12.2.1,
#'     pág. 232)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb12.2.1)
#' str(PimentelTb12.2.1)
#' 
#' xyplot(prod ~ P2O5,
#'        groups = bloco,
#'        data = PimentelTb12.2.1,
#'        auto.key = list(title = "Blocos", cex.title = 1, columns = 4),
#'        type = c("r", "p"),
#'        ylab = "Produção (kg/parcela)",
#'        xlab = expression(Dosagem~de~P[2]*O[5]))
#'
NULL