#' @name DemetrioTb3.6
#' @title Três variáveis explicativas
#' 
#' @description Dados para exercício.
#' 
#' @format Um \code{data.frame} de 14 linhas e 4 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x1}}{ Informação indisponível.}
#'     
#'     \item{\code{x2}}{ Informação indisponível.}
#'     
#'     \item{\code{x3}}{ Informação indisponível.}
#'     
#'     \item{\code{y}}{ Informação indisponível.}
#' 
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 3.6 pág. 99)
#' 
#' @examples 
#' 
#' data(DemetrioTb3.6)
#' 
#' pairs(~ x1 + x2 + x3 + y , data = DemetrioTb3.6,
#'      main = "Dispersão duas a duas")
#'
#' cor(DemetrioTb3.6)
#'
NULL
