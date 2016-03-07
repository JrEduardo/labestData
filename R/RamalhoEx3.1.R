#' @name RamalhoEx3.1
#' @title Número de plantes de milho após inoculação.
#' @description Experimento referente ao número de plantas de milho, 
#'     por parcela, após a inoculação com Diploidia. Experimento para 
#'     avaliação de fungicidas para tratamento de sementes.
#' @format data.frame com 20 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{repet}{Repetições de inoculação do fungicida.}
#' 
#' \item{fugic}{Tipo deFungicida.}
#'
#' \item{plant}{Número de plantes de milho.}
#' 
#' \item{contr}{Controle.}
#' 
#' }
#' @keywords milho inoculação
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 50)
#'
#' @examples
#' library(lattice)
#' 
#' data(RamalhoEx3.1)
#' 
#' xyplot(jitter(plant) ~ fungic, groups = repet, data = RamalhoEx3.1, 
#'        auto.key = TRUE, 
#'        xlab = "Fungicida", ylab = "Número de plantas")
#' 
NULL
