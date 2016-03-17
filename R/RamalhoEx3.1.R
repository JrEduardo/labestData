#' @name RamalhoEx3.1
#' @title Número de plantas de milho após inoculação
#' @description Experimento referente ao número de plantas de milho,
#'     por parcela, após a inoculação com Diploidia. Experimento para
#'     avaliação de fungicidas para tratamento de sementes.
#' @format data.frame com 20 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fugic}}{Fator que indica o tipo de tratamento aplicado.
#'     Fungicida (A, B, C, D, E) ou controle (Fc).}
#'
#' \item{\code{rept}}{Repetições de inoculação do fungicida.}
#'
#' \item{\code{plant}}{Número de plantas de milho observadas.}
#'
#' }
#' @keywords contagem
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 50)
#'
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx3.1)
#'
#' xyplot(jitter(plant) ~ fungic, data = RamalhoEx3.1,
#'        groups = repet, auto.key = TRUE,
#'        xlab = "Fungicida", ylab = "Número de plantas")
#'
NULL
