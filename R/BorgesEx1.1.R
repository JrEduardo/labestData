#' @name BorgesEx1.1
#' @title Altura de Feijão
#' 
#' @description Dados de altura de feijão durante 7 semanas.
#' 
#' @format Um \code{data.frame} de 7 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{idade}}{Idade do feijão medida em semanas.}
#'     
#'     \item{\code{altura}}{Altura do feijão medida em centímetros (cm).}
#'     
#' }
#' 
#' @keywords feijão idade altura
#' 
#' @source Borges, C. G., Demétrio, & Zocchi, S. S. (2011). 
#' Modelo de Regressão. Piracicaba, SP: USP.
#' 
#' @examples 
#' 
#' ## Carregando o banco de dados --------------------------------------
#' 
#' data(BorgesEx1.1)
#' 
#' ## Carregando pacotes necessários -----------------------------------
#' 
#' library(lattice)
#' 
#' ## Plotando o gráfico -----------------------------------------------
#' 
#' xyplot(altura ~ idade, data = BorgesEx1.1,
#'      main = "Idade VS Altura",
#'      xlab = "Idade",
#'      ylab = "Altura",
#'      panel = function(x, y){
#'          panel.xyplot(x, y)
#'          panel.abline(lm(y ~ x), col = 3)
#'      })
#'      
NULL