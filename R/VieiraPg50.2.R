#' @name VieiraPg50.2
#' @title Voltagens de quatro voltrímetros
#' @description Experimento para verificar a força constante
#'       de 100 volts, testados cinco vezes, para quatro
#'       voltímetros de um laboratório.
#'
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{voltim}}{Fator de 4 níveis segundo o voltímetro.}
#'
#' \item{\code{voltagem}}{Voltagem avaliada com força consatante 
#'       de 100 volts.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S.(1999). 
#'     Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (pg 50 - Ex 4).
#'      
#' @examples
#'
#' data(VieiraPg50.2)
#' 
#' library(lattice)
#' xyplot(voltagem ~ voltim, data = VieiraPg50.2,
#'        xlab = "Voltímetro",
#'        ylab = "Voltagem")
#'
NULL