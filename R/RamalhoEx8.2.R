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
#' \item{\code{rept}}{Fator de 10 níveis que identifica as repetições do
#'     experimento.}
#'
#' \item{\code{clone}}{Fator de 5 níveis em cada repetição, cada clone
#'     indica uma colheita.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis do experimento, usado para
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de clones de caju, medido em g/planta nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.2, pág. 133)
#' @examples
#'
#' data(RamalhoEx8.2)
#'
#' str(RamalhoEx8.2)
#'
#' boxplot(prod ~ rept, data = RamalhoEx8.2,
#'         xlab = "Repetição",
#'         ylab = "Produção")
#'
#' library(lattice)
#'
#' xyplot(prod ~ clone | rept, data = RamalhoEx8.2,
#'        jitter.x = TRUE,
#'        xlab = "Clone",
#'        ylab = "Produção")
#'
NULL
