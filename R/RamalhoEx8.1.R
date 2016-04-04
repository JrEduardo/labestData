#' @name RamalhoEx8.1
#' @title Produção de Grãos de Arroz em Municípios de Minas Gerais
#' @description Experimento da produção de grãos de arroz, conduzido em
#'     três locais do Estado de Minas Gerais (Lambari, Lavras e
#'     Felixlândia). Delineamento inteiramente casualizado.
#' @format Um \code{data.frame} com 90 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais que representa as
#'     cultivares de arroz.}
#'
#' \item{\code{local}}{Fator de 3 níveis nominais, municípios de Minas
#'     Gerais onde foi realizado o experimento.}
#'
#' \item{\code{rept}}{Fator de 3 níveis do experimento, usado para
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz, medido em kg
#'     ha\eqn{^{-1}} nas unidades experimentais.}
#'
#' }
#' @keywords DIC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.1, pág. 132)
#' @examples
#'
#' data(RamalhoEx8.1)
#'
#' str(RamalhoEx8.1)
#'
#' with(RamalhoEx8.1, tapply(prod, list(cult, local), FUN = mean))
#'
#' aggregate(prod ~ local + cult, data = RamalhoEx8.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' library(lattice)
#'
#' xyplot(prod ~ cult | local, data = RamalhoEx8.1,
#'        xlab = "Cultivar de arroz",
#'        ylab = "Produção")
#'
NULL
