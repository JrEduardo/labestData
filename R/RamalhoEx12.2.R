#' @name RamalhoEx12.2
#' @title Dados Genéricos para Regressão Múltipla
#' @description Conjunto de dados apresentados para exercício. Objetivo
#'     do exercício é estimar a equação de regressão múltipla.
#' @format Um \code{data.frame} com 8 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator que indica as cultivares.}
#'
#' \item{\code{prod}}{Produtividade de grãos, medidos em kg/ha.}
#'
#' \item{\code{alt}}{Altura da planta, em centímetros.}
#'
#' \item{\code{perf}}{Número de perfilhos.}
#'
#' }
#' @keywords RM
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 12.2, pág. 231)
#' @examples
#'
#' data(RamalhoEx12.2)
#'
#' str(RamalhoEx12.2)
#'
#' pairs(RamalhoEx12.2[, -1])
#'
#' library(lattice)
#'
#' splom(RamalhoEx12.2[, -1], type = c("p", "r"))
#'
NULL
