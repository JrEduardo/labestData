#' @name DemetrioEx1.4.1.5
#' @title Número de Ovos por Folículos Ovulados
#' 
#' @description Foi contado o número me ovos postos e o número de
#'     folículos ovulados.
#' 
#' @format Um \code{data.frame} de 14 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{ovo}}{Número de ovos.}
#'     
#'     \item{\code{foli}}{Número de folículos.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 1.4.1.5 pág. 15)
#' 
#' @examples 
#' 
#' data(DemetrioEx1.4.1.5)
#' 
#' library(lattice)
#' 
#' xyplot(foli ~ ovo, data = DemetrioEx1.4.1.5,
#'      main = "Ovos VS Folículos",
#'      xlab = "N° Ovos",
#'      ylab = "N° Folículos",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL
