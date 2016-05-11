#' @name PaulaEx3.7.16
#' @title Experimento de toxidade
#'
#' @description Estudo que descreve os resultados de um
#' experimento em que a toxicidade de três concentrações (R-rotenine,
#' D-deguelin e M-mistura, essa última como uma mistura das duas pri-
#' meiras) é investigada. As concentrações foram testadas em insetos e
#' observado para cada dose o número de insetos mortos.
#' 
#' @format Um \code{data.frame} com 3 doses com 5 repetições. 
#'
#' \describe{
#'
#' \item{\code{conc}}{Identificação da concentração (R-rotenine, 
#' D-deguelin e M-mistura).}
#' 
#' \item{\code{dose}}{Quantidade de dose.}
#' 
#' \item{\code{exp}}{Número de insetos expostos.}
#'
#' \item{\code{mort}}{Número de insetos mortos.}
#' 
#' }
#' 
#' @keywords AD
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.14, pág. 274 e 275)
#'     
#' @references Morgan, B. J. T. (1992). Analysis of Quantal Response Data. 
#' Chapman and Hall, London. (Página 90)
#' 
#' @examples
#' 
#' data(PaulaEx3.7.16)
#' 
#' require(lattice)
#' 
#' xyplot(mort/exp ~ dose, groups = conc, data = PaulaEx3.7.16, 
#' auto.key = TRUE, xlab = "Porcentagem de insetos mortos",
#' ylab = "Dose", main = "Sobrevivência dos insetos expostos a toxina")
NULL