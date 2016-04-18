#' @name RamalhoTb13.1
#' @title Produção de Grãos de Milho
#' @description Experimento referente a cultura de milho, cujos dados
#'     foram obtidos de dez plantas. Neste experimento, a produção de
#'     grãos é considerada a variável dependente e a altura da planta a
#'     independente.
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Altura da planta, medido em cm.}
#'
#' \item{\code{y}}{Produção de grãos, medido em g/planta.}
#'
#' }
#' @keywords COV
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.1, pág. 233)
#' @examples
#'
#' plot(y ~ x, data = RamalhoTb13.1,
#'      xlab = "Altura (cm)",
#'      ylab = "Produção (g/planta)")
#'
#' plot(ecdf(RamalhoTb13.1$y),
#'      xlab = "y",
#'      ylab = "Fn(y)",
#'      main = NULL)
#'
NULL