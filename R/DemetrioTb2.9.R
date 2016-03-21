#' @name DemetrioTb2.9
#' @title Pares de Valores
#' 
#' @description Os dados estão presentes no exercício com o objetivo de
#'     estimar os parâmetros, realizar a ANOVA, entre outros.
#' 
#' @format Um \code{data.frame} de 10 linhas e 2 colunas.
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
#'     Regressão. Piracicaba: ESALQ. (Tabela 2.9 pág. 64)
#' 
#' @examples 
#' 
#' data(DemetrioTb2.9)
#' 
#' library(lattice)
#' 
#' xyplot(y ~ x, data = DemetrioTb2.9,
#'      main = "x vs y",
#'      xlab = "x",
#'      ylab = "y",
#'      type = c("p", "r"), col.line = 3)
#'      
#' model <- lm(y ~ x)
#' summary(model)
#' anova(model)
#' 
NULL
