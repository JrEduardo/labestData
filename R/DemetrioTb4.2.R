#' @name DemetrioTb4.2
#' @title Sobrevivência de Ratos após o envenenamento
#' 
#' @description Os dados referem-se a tempos de sobrevivência de ratos 
#'     após envenenamento com 4 tipos de venenos e 3 diferentes 
#'     tratamentos.
#' 
#' @format Um \code{data.frame} de 48 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{tempo}}{ Tempo de sobrevivência. }
#' 
#'     \item{\code{tipo}}{ Tipo de veneno. }
#'     
#'     \item{\code{trat}}{ Tipo de tratamento.}
#' 
#' }
#' 
#' @keywords RS
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 4.2 pág. 132)
#' 
#' @examples 
#' 
#' data(DemetrioTb4.2)
#' 
#' pairs(~ tempo + tipo + trat , data = DemetrioTb4.2,
#'      main = "Dispersão duas a duas")
#'      
#' x <- with(DemetrioTb4.2, tapply(tempo, tipo, data.frame))     
#' boxplot(x, main = "Tempo vs Veneno", xlab = "Tipo de Veneno",
#'     ylab = "Tempo")
#'
NULL
