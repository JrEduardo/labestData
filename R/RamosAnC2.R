#' @name RamosAnC2
#' @title Teor de sódio em um processo químico 
#' @description Conjunto de dados do teor de sódio (Na)  
#'     em 25 amostras de tamanho 5 de um processo químico.
#'
#' @format Um \code{data.frame} com 125 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{sodio}}{Teor do sódio.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 134).
#'      
#' @examples
#'
#' data(RamosAnC2)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosAnC2$sodio, RamosAnC2$amostra)
#'
#' qcc(obj, type = "xbar", nsigmas = 3, ylab = "Média amostral", xlab = 
#'      "Amostra", title = "")
#'
NULL