#' @name RamalhoEx8.2
#' @title Produção de Amêndoas de Clones de Caju
#' @description Experimento da produção de amêndoas obtidos da avaliação
#'     de clones de caju, em 5 colheitas. Delineamento em blocos
#'     casualizados.
#' @format Um \code{data.frame} com 200 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator de 10 níveis que indica os clones de caju.}
#'
#' \item{\code{colh}}{Fator de 5 níveis que representa as colheitas.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis do experimento, usado para
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de clones de caju, medido em g/planta nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.2, pág. 133)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx8.2)
#'
#' str(RamalhoEx8.2)
#'
#' xtabs(~clone + colh, data = RamalhoEx8.2)
#'
#' xyplot(prod ~ colh | clone, data = RamalhoEx8.2,
#'        jitter.x = TRUE, type = c("p", "a"), as.table = TRUE,
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Clone", sep = " "),
#'        xlab = "Colheita",
#'        ylab = expression("Produção"~(g~parcela^{-1})))
#'
#'
NULL
