#' @name RamalhoTb8.12
#' @title Produção média de grãos de café-cereja
#' @description Experimento da produção média de grãos de café-cereja, 
#'     dados obtidos por Mendes (1994). Delineamento em blocos 
#'     casualizados.
#' @format Um \code{data.frame} com 120 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{prog}}{Progênie do cultivar Icatu.}
#'
#' \item{\code{colh}}{Fator de 3 níveis, colheitas realizadas em 
#'     anos sucessivos.}
#'
#' \item{\code{rept}}{Fator de 4 níveis do experimento, usado para 
#'     controle local.}
#'
#' \item{\code{prod}}{Produção média de grãos de café-cereja, medido em 
#'     kg/parcela nas unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pg 128)
#' @examples
#'
#' library(lattice)
#' 
#' xyplot(prod ~ rept | colh, data = RamalhoTb8.12,
#'        jitter.x = TRUE,
#'        xlab = "Repetição",
#'        ylab = "Produção")
#' 
#' aggregate(prod ~ rept,  data = RamalhoTb8.12,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL