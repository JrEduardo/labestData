#' @name DemetrioEx1.4.1.1
#' @title Alturas de Feij\enc{ã}{a}o
#' 
#' @description Dados de altura de feijão durante 7 semanas.
#' 
#' @format Um \code{data.frame} de 7 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{idade}}{Idade do feijão medida em semanas.}
#'     
#'     \item{\code{altura}}{Altura do feijão medida em centímetros (cm).}
#'     
#' }
#' 
#' @keywords RS
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 1.4.1.1 pág. 14)
#' 
#' @examples 
#' 
#' data(DemetrioEx1.4.1.1)
#' 
#' library(lattice)
#' 
#' xyplot(altura ~ idade, data = DemetrioEx1.4.1.1,
#'      main = "Idade VS Altura",
#'      xlab = "Idade",
#'      ylab = "Altura",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL
