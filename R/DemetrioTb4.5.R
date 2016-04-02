#' @name DemetrioTb4.5
#' @title Dados simulados
#' 
#' @description Dados simulados
#' 
#' @format Um \code{data.frame} de 9 linhas e 5 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x}}{ Formação indisponível. }
#' 
#'     \item{\code{y1}}{ Formação indisponível. }
#'     
#'     \item{\code{y2}}{ Formação indisponível. }
#'     
#'     \item{\code{y3}}{ Formação indisponível. }
#'     
#'     \item{\code{y4}}{ Formação indisponível. } 
#' 
#' }
#' 
#' @keywords RM
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 4.5 pág. 137)
#' 
#' @examples
#' 
#' data(DemetrioTb4.5)
#' 
#' pairs(~ x + y1 + y2 + y3 + y4 , data = DemetrioTb4.5,
#'      main = "Dispersão duas a duas")
#'
NULL
