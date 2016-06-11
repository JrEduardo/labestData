#' @name BarbinEx14
#' @title Produção de Milho em Ensaio Fatorial de NPK
#' @description Ensaio fatorial de adubação NPK, fatorial \eqn{2^3}, com
#'     resultados referentes à produção de milho (kg ha\eqn{^{-1}}),
#'     conduzido em delineamento de blocos casualizados em Limoeiro, PE.
#' @format Um \code{data.frame} com 24 observações e 5 variáveis.
#'
#' \describe{
#'
#' \item{\code{N}}{Fator métrico com níveis codificados para adubação
#'     com nitrogênio.}
#'
#' \item{\code{P}}{Fator métrico com níveis codificados para adubação
#'     com fósforo.}
#'
#' \item{\code{K}}{Fator métrico com níveis codificados para adubação
#'     com potássio.}
#'
#' \item{\code{bloc}}{Fator que identifica os blocos do experimento.}
#'
#' \item{\code{prod}}{Produção de milho, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC FAT3
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 14, pág. 206)
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx14)
#'
#' str(BarbinEx14)
#'
#' xyplot(prod ~ as.factor(N) | as.factor(P),
#'        groups = K, data = BarbinEx14, type = c("p", "a"),
#'        xlab = "Nitrogênio",
#'        ylab = "Diâmetro da árvore (cm)",
#'        strip = strip.custom(strip.names = TRUE, var.name = "Fósforo"),
#'        auto.key = list(columns = 2, cex.title = 1,
#'                        title = "Potássio"))
#'
NULL
