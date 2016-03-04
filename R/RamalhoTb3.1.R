#' @name RamalhoTb3.1
#' @title Número de nematóides por vasos.
#' @description Experimento do número de nematóides (vermes que estão 
#'     presentes no solo) por vasos infectando plantas de figo em 
#'     diferentes idades de inoculação, experimento com 4 repetições.
#' @format data.frame com 16 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{dias}{Idade de inoculação, tratamento.}
#' 
#' \item{rep}{Número que indica as repetições de cada tratamento.}
#'
#' \item{nemat}{Número de nematóides por vaso coletado.}
#'
#' }
#' @keywords figo nematóides
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 43)
#'
#' @examples
#'
#' library(lattice)
#' 
#' data(RamalhoTb3.1)
#' 
#' # Dados originais
#' 
#' aggregate(nemat ~ dias, data = RamalhoTb3.1,
#'          FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' plot(nemat ~ dias, data = RamalhoTb3.1, 
#'     ylab = "Número de Nematóides")
#' 
#' # Dados aplicando logaritmo 
#' 
#' aggregate(log(nemat) ~ dias, data = RamalhoTb3.1,
#'       FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' plot(log(nemat) ~ dias, data = RamalhoTb3.1)
#' 
NULL
