#' @name BorgesEx1.2
#' @title Peso Médio de Galinhas
#' 
#' @description Foi mensurado o peso médio e consumo de alimentos de 50
#' galinhas de 10 linhagens White Leghorn.
#' 
#' @format Um \code{data.frame} de 10 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{peso}}{Peso médio.}
#'     
#'     \item{\code{consumo}}{Consumo de alimentos.}
#'     
#' }
#' 
#' @keywords galinha peso consumo
#' 
#' @source Borges, C. G., Demétrio, & Zocchi, S. S. (2011). 
#' Modelo de Regressão. Piracicaba, SP: USP.
#' 
#' @examples 
#' 
#' ## Carregando o banco de dados --------------------------------------
#' 
#' data(BorgesEx1.2)
#' 
#' ## Carregando pacotes necessários -----------------------------------
#' 
#' library(lattice)
#' 
#' ## Plotando o gráfico -----------------------------------------------
#' 
#' xyplot(consumo ~ peso, data = BorgesEx1.2,
#'      main = "Peso VS Consumo",
#'      xlab = "Peso",
#'      ylab = "Consumo",
#'      panel = function(x, y){
#'          panel.xyplot(x, y)
#'          panel.abline(lm(y ~ x), col = 3)
#'      })
#'      
NULL