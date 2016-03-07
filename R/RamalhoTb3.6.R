#' @name RamalhoTb3.6
#' @title Largura dos ascos do fungo colletrotrichum lindemuthianum.
#' @description Experimento referente a largura dos ascos de três 
#'     isolados do fungo Colletotrichum lindemuthianum.
#' @format data.frame com 90 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{amostra}{Experimento com 30 observações em cada bloco.}
#' 
#' \item{isol}{Blocos dos isolados do fungo (A, B e C).}
#'
#' \item{larg}{Largura dos ascos dos isolados.}
#'
#' }
#' @keywords largura fungo
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 48)
#'
#' @examples
#'
#' data(RamalhoTb3.6)
#' 
#' aggregate(larg ~ isol,  data = RamalhoTb3.6, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
NULL
