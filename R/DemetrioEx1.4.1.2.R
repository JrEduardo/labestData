#' @name DemetrioEx1.4.1.2
#' @title Peso Médio de Galinhas
#' 
#' @description Foi mensurado o peso médio e consumo de alimentos de 50
#'     galinhas para 10 linhagens \emph{White Leghorn}.
#' 
#' @format Um \code{data.frame} de 10 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{peso}}{Peso médio.}
#'     
#'     \item{\code{consumo}}{Consumo de alimentos.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 1.4.1.2 pág. 14)
#' 
#' @examples 
#' 
#' data(DemetrioEx1.4.1.2)
#' 
#' library(lattice)
#' 
#' xyplot(consumo ~ peso, data = DemetrioEx1.4.1.2,
#'      main = "Peso VS Consumo",
#'      xlab = "Peso",
#'      ylab = "Consumo",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL
