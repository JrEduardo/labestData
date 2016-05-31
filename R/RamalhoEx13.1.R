#' @name RamalhoEx13.1
#' @title Avaliação de Clones de Eucalipto
#' @description Experimento referente a avaliação de clones de
#'     eucalipto, obtidos na Aracruz Celulose.
#' @format Um \code{data.frame} com 20 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator de 20 níveis que representa o clone de
#'     eucalipto.}
#'
#' \item{\code{alt}}{Altura do eucalipto, medido em metros.}
#'
#' \item{\code{dap}}{Diâmetro na altura do peito (cm).}
#'
#' \item{\code{broto}}{Número médio de brotos por árvore.}
#'
#' \item{\code{perc}}{Percentagem de enraizamento das estacas.}
#'
#' }
#' @keywords COV
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 13.1, pág. 255)
#' @examples
#'
#' data(RamalhoEx13.1)
#'
#' str(RamalhoEx13.1)
#'
#' library(lattice)
#'
#' splom(RamalhoEx13.1[, -1], type = c("p", "smooth"))
#'
NULL
