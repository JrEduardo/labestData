#' @name RamosAnC7
#' @title Processo qu\enc{í}{i}mico
#' @description Conjunto de dados de um processo químico com  
#'     o pH da água, e pH do cloreto de potássio em 30 amostras
#'     de tamanho 1.
#'
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{phagua}}{pH da água.}
#'
#' \item{\code{phclore}}{pH do cloreto de potássio.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 137).
#'      
#' @examples
#'
#' data(RamosAnC7)
#'
#' library(qcc)
#'
#' qcc(RamosAnC7$phagua, type="xbar.one",
#'   xlab = "Amostra", ylab = "Ph da água", 
#'   title = "")
#' qcc(RamosAnC7$phclore, type="xbar.one",
#'   xlab = "Amostra", ylab = "Ph do cloreto", 
#'   title = "")
#'
NULL
