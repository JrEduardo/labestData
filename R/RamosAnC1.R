#' @name RamosAnC1
#' @title Temperatura do \enc{ó}{o}leo de misturadores
#' @description Conjunto de dados da temperatura do óleo de misturadores,  
#'    com 25 amostras de tamanho 8 de um processo metalúrgico.
#'
#' @format Um \code{data.frame} com 200 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{oleo}}{Temperatura ddo óleo (em °C ).}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 133).
#'      
#' @examples
#'
#' data(RamosAnC1)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosAnC1$oleo, RamosAnC1$amostra)
#' 
#' qcc(obj, type = "xbar", nsigmas = 3, xlab = "Amostra", ylab = 
#'      "Temperatura média", title = " ")
#'
NULL
