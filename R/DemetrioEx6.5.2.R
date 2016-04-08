#' @name DemetrioEx6.5.2
#' @title Tabela 9.1
#' 
#' @description Dados simulados para uso em exercício.
#' 
#' @format Um \code{data.frame} de 5 linhas e 4 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x1}}{Informação indisponível.}
#'     
#'     \item{\code{x2}}{Informação indisponível.}
#'     
#'     \item{\code{x3}}{Informação indisponível.}
#'     
#'     \item{\code{y}}{Informação indisponível.}
#'     
#' }
#' 
#' @keywords RS
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
