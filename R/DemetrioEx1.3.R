#' @name DemetrioEx1.3
#' @title Absorção de CO2
#' 
#' @description Foi aplicado CO2 sobre folhas de trigo a uma 
#' temperatura de 35°C. Mediu-se a quantia de CO2 absorvido pelas 
#' folhas. 
#' 
#' @format Um \code{data.frame} de 11 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{co2}}{Concentração de CO2 aplicada sobre as folhas
#'     de trigo.}
#'     
#'     \item{\code{absorv}}{Quantia de CO2 absorvida pelas folhas de 
#'     trigo, medida em cm^3/dm^2/hora.}
#'     
#' }
#' 
#' @keywords CO2 trigo
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 1.3 pág. 14)
#' 
#' @examples 
#' 
#' data(DemetrioEx1.3)
#' 
#' library(lattice)
#' 
#' xyplot(absorv ~ co2, data = DemetrioEx1.3,
#'      main = "CO2 Aplicado VS Absorvido",
#'      xlab = "Aplicado",
#'      ylab = "Absorvido",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL