#' @name VieiraTb5.3
#' @title Produção de Variedades de Milho
#' @description Experimento da produção de milho de 4 diferentes
#'     variedades em um delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais que indicam a variedade
#'     do milho.}
#'
#' \item{\code{bloc}}{Fator de 5 níveis, usado para controle local.}
#'
#' \item{\code{prod}}{Produção de milho em kg/100 m\eqn{^{2}}.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S.(1999).  Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (pág. 53, tabela 5.3).
#'
#' @examples
#'
#' data(VieiraTb5.3)
#'
#' str(VieiraTb5.3)
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied, groups = bloc,
#'       data = VieiraTb5.3,
#'       xlab = "Variedade",
#'       ylab = "Produção de milho")
#'
NULL
