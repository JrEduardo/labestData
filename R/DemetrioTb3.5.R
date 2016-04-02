#' @name DemetrioTb3.5
#' @title Duas variáveis explicativas
#' 
#' @description Dados para exercício.
#' 
#' @format Um \code{data.frame} de 6 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x1}}{ Informação indisponível.}
#'     
#'     \item{\code{x2}}{ Informação indisponível.}
#'     
#'     \item{\code{y}}{ Informação indisponível.}
#' 
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 3.5 pág. 99)
#' 
#' @examples 
#' 
#' data(DemetrioTb3.5)
#' 
#' pairs(~ x1 + x2 + y , data = DemetrioTb3.5,
#'      main = "Dispersão duas a duas")
#'
#' cor(DemetrioTb3.5)
#'
NULL
