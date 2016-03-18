#' @name DemetrioEx2.12.5
#' @title Estimativa de Quadrados Mínimos
#' 
#' @description Os dados estão presentes no exercício com o objetivo de
#'     estimar na prática o quadrado mínimo.
#' 
#' @format Um \code{data.frame} de 5 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x}}{Sem interpretação.}
#'     
#'     \item{\code{y}}{Sem interpretação.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 2.12.5 pág. 60)
#' 
#' @examples 
#' 
#' data(DemetrioEx2.12.5)
#' 
#' library(lattice)
#' 
#' xyplot(y ~ x, data = DemetrioEx2.12.5,
#'      main = "x vs y",
#'      xlab = "x",
#'      ylab = "y",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL
