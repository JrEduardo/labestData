#' @name DemetrioEx5.4.5
#' @title Méis Silvestres
#' 
#' @description 
#'     Análise físico química de méis silvestres, produzidos por 
#'     Apis mellifera em 1999, provenientes de 94 localidades de
#'     São Paulo.
#' 
#' @format Um \code{data.frame} de 94 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{condut}}{Condutividade elétrica, em \eqn{\mu}S.}
#'     
#'     \item{\code{n}}{Proporção de Nitrogênio proteico.}
#'     
#'     \item{\code{cinzas}}{Proporção de cinzas.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 5.4.2 pág. 169)
#' 
#' @examples 
#' 
#' data(DemetrioEx5.4.2)
#' 
#' pairs(~ condut + n + cinzas, data = DemetrioEx5.4.2,
#'     main = "Gráfico de Pares")
#'      
NULL
