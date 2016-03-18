#' @name DemetrioEx2.12.15
#' @title Valores Simulados
#' 
#' @description Os dados estão presentes no exercício com o objetivo de
#'     desenhar o gráfico de dispersão e realizar o ajuste do modelo.
#' 
#' @format Um \code{data.frame} de 6 linhas e 2 colunas.
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
#'     Regressão. Piracicaba: ESALQ. (Exercício 2.12.15 pág. 63)
#' 
#' @examples 
#' 
#' data(DemetrioEx2.12.15)
#' 
#' library(lattice)
#' 
#' xyplot(y ~ x, data = DemetrioEx2.12.15,
#'      main = "x vs y",
#'      xlab = "x",
#'      ylab = "y",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL
