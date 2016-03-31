#' @name DemetrioTb2.9
#' @title Dados Genéricos para Regressão Simples
#' 
#' @description Dados para exercício analítico, com o objetivo de
#'     estimar os parâmetros de forma pontual e intervalar, realizar a
#'     ANOVA, entre outros.
#' 
#' @format Um \code{data.frame} de 10 linhas e 2 colunas.
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
#' model <- lm(y ~ x, data = DemetrioTb2.9)
#' summary(model)
#' anova(model)
#' 
NULL
