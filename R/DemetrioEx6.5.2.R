#' @name DemetrioEx6.5.2
#' @title Dados Genéricos Simulados para Regressão Linear Múltipla
#' 
#' @description Dados simulados para exercício de análise de um modelo
#'     de regressão linear múltipla com 3 covariáveis.
#' 
#' @format Um \code{data.frame} de 5 linhas e 4 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x1}}{Variável independente, sem interpretação.}
#'     
#'     \item{\code{x2}}{Variável independente, sem interpretação.}
#'     
#'     \item{\code{x3}}{Variável independente, sem interpretação.}
#'     
#'     \item{\code{y}}{Variável dependente, sem interpretação.}
#'     
#' }
#' 
#' @keywords RM
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 6.5.2 pág. 180)
#' 
#' @examples 
#' 
#' data(DemetrioEx6.5.2)
#' 
#' pairs(~ x1 + x2 + x3 + y, data = DemetrioEx6.5.2, 
#'     main = "Gráfico de Pares")
#'      
NULL
