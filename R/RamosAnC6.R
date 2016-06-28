#' @name RamosAnC6
#' @title Processo de fabrica\enc{çã}{ca}o de panelas
#' @description Conjunto de dados de um processo de fabricação  
#'     de panelas, com 30 amostras com tamanhos diferentes.
#'
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Tamanho da amostra de panelas avaliadas.}
#'
#' \item{\code{naoconf}}{Número de não conformidades nas panelas.}
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
#' qcc(RamosAnC6$naoconf, sizes = RamosAnC6$tamamostra, type = "u", 
#'    ylim = c(0,2.5), xlab = "Amostra", ylab = "Número de não 
#'    conformidades em panelas", title = "")
#'   
#'
NULL
