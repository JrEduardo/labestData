#' @name BarbinEx13
#' @title Di\enc{â}{a}metro M\enc{é}{e}dio do Tronco de Esp\enc{é}{e}cies de Eucalipto
#' @description Diâmetro médio (cm), aos 5 anos de idade, de plantas
#'     úteis da parcela de um ensaio fatorial 2 \eqn{\times} 4, em
#'     blocos casualizados com 3 repetições, conduzido por H. A. Mello e
#'     outros, Mogi-Guaçu (1966-1971).
#' @format Um \code{data.frame} com 24 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{euca}}{Fator categórico, seus níveis são espécies de
#'     eucalipto.}
#'
#' \item{\code{dist}}{Fator que representa a distância ou espaçamento de
#'     plantio das plantas, em metros.}
#'
#' \item{\code{bloc}}{Fator que representa os blocos do experimento.}
#'
#' \item{\code{diam}}{Diâmetro médio (cm) das plantas úteis da parcela.}
#'
#' }
#' @keywords DBC FAT2
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 13, pág. 206)
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx13)
#'
#' str(BarbinEx13)
#'
#' xyplot(diam ~ dist, groups = euca, data = BarbinEx13,
#'        type = c("p", "a"),
#'        xlab = "Distância entre ávores (m)",
#'        ylab = "Diâmetro da árvore (cm)",
#'        auto.key = list(columns = 2, cex.title = 1, font = 3,
#'                        title = expression("Espécies de"
#'                                           ~italic(Eucaliptus))))
#'
NULL
