#' @name DemetrioTb4.2
#' @title Sobrevivência de Ratos após Envenenamento
#' 
#' @description Os dados referem-se a tempos de sobrevivência de ratos 
#'     após envenenamento com 4 tipos de venenos e 3 diferentes 
#'     tratamentos.
#' 
#' @format Um \code{data.frame} de 48 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{tempo}}{Tempo de sobrevivência.}
#' 
#'     \item{\code{tipo}}{Tipo de veneno.}
#'     
#'     \item{\code{trat}}{Tipo de tratamento aplicado (não descrito o
#'     que é o tratamento).}
#' 
#' }
#' 
#' @keywords dummy
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 4.2 pág. 132)
#' 
#' @examples 
#' 
#' data(DemetrioTb4.2)
#'
#' xtabs(~tipo + trat, data = DemetrioTb4.2)
#'
#' group <- with(DemetrioTb4.2, paste0(tipo, "-", trat))
#' boxplot(tempo ~ group, data = DemetrioTb4.2)
#'
NULL
