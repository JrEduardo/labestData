#' @name DemetrioEx2.12.15
#' @title Dados Gen\enc{é}{e}ricos Simulados para Regress\enc{ã}{a}o Simples
#' 
#' @description Dados simulados para exercício analítico de estimação
#'     via método dos quadrados mínimos em diferentes modelos de
#'     regressão linear.
#' 
#' @format Um \code{data.frame} de 6 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x}}{Variável independente, sem interpretação.}
#'     
#'     \item{\code{y}}{Variável dependente, sem interpretação.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
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
