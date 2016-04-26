#' @name VieiraTb4.1
#' @title Produção de Variedades de Milho
#' @description Experimento que mediu a produção, em kg/100
#'     m\eqn{^{-2}}), de 4 variedades de milho em um delineamento
#'     inteiramente casualizado.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator categórico de 4 níveis que indica as
#'     variedades de milho.}
#'
#' \item{\code{prod}}{Produção de milho, medida em kg/100 m\eqn{^{2}}).}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.). São
#'     Paulo, SP: Atlas. (pág 44, tabela 4.1).
#' @examples
#'
#' data(VieiraTb4.1)
#'
#' str(VieiraTb4.1)
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied, data = VieiraTb4.1,
#'       xlab = "Variedades",
#'       ylab = "Produção de milho")
#'
NULL
