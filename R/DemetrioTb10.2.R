#' @name DemetrioTb10.2
#' @title Estudo em Plantas Nicotianas
#' 
#' @description Dados referentes ao comprimento do caule,
#'     do ramo e do caule basal de plantas do gênero Nicotiana.
#' 
#' @format Um \code{data.frame} de 18 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{caule}}{Comprimento do caule.}
#' 
#'     \item{\code{ramo}}{Comprimento do ramo.}
#'     
#'     \item{\code{basal}}{Comprimento do caule basal.}
#'     
#' }
#' 
#' @keywords RM
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 10.2 pág. 161; Exercício 
#'     5.4.7 pág. 164)
#' 
#' @examples
#' 
#' data(DemetrioTb10.2)
#' 
#' pairs(~ caule + basal + ramo , data = DemetrioTb10.2,
#'      main = "Dispersão duas a duas")
#'
NULL
