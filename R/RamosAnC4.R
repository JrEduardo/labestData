#' @name RamosAnC4
#' @title Processo produtivo de canetas
#' @description Conjunto de dados de um processo produtivo  
#'     de canetas, com 34 amostras de tamanhos diferentes.
#'
#' @format Um \code{data.frame} com 34 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Tamanho da amostra.}
#'
#' \item{\code{naoconf}}{Número de canetas não conformes na amostra.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 135).
#'      
#' @examples
#'
#' data(RamosAnC4)
#'
#' library(qcc)
#'
#' qcc(RamosAnC4$naoconf, sizes = RamosAnC4$tamamostra, type = "p",
#'    xlab = "Amostra", ylab = "Número de canetas não conformes", title = "")
#'
NULL