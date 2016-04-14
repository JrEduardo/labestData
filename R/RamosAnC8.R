#' @name RamosAnC8
#' @title Teor de elementos químicos
#' @description Conjunto de dados de teor de elementos químicos  
#'     resultantes de análises de laboratório em 30 amostras 
#'     de tamanho 1.
#'
#' @format Um \code{data.frame} com 30 observações e 8 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{magnes}}{Teor do magnésio.}
#'
#' \item{\code{ferro}}{Teor do ferro.}
#'
#' \item{\code{fosfor}}{Teor do fósforo.}
#'
#' \item{\code{potass}}{Teor do potássio.}
#'
#' \item{\code{calcio}}{Teor do cálcio.}
#'
#' \item{\code{aluminio}}{Teor do alumínio.}
#'
#' \item{\code{vanad}}{Teor do vanádio.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 138).
#'      
#' @examples
#'
#' data(RamosAnC8)
#'
#' library(qcc)
#'
#' qcc(RamosAnC8$magnes, type="xbar.one")
#' 
#' qcc(RamosAnC8$ferro, type="xbar.one")
#'
NULL