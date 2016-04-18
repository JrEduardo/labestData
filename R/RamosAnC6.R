#' @name RamosAnC6
#' @title Processo de fabricação de panelas
#' @description Conjunto de dados de um processo de fabricação  
#'     de panelas, com 30 amostras com tamanhos diferentes.
#'
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Tamanho da amostra.}
#'
#' \item{\code{naoconf}}{Número de panelas não conformes.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 136).
#'      
#' @examples
#'
#' data(RamosAnC6)
#'
#' library(qcc)
#'
#' qcc(RamosAnC6$naoconf, sizes = RamosAnC6$tamamostra, type = "u")
#'
NULL