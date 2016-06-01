#' @name BarbinEx1
#' @title Altura de \emph{Pinus elliottii} aos 10 anos de idade
#' @description Os dados referem-se à altura (m) de \emph{Pinus
#'     elliottii}, var. \emph{elliottii}, com 10 anos de idade plantadas
#'     no espaçamento 2\eqn{\times}2,5 metros.
#' @format Um vetor com 50 elementos de valor numérico.
#' @keywords AAS
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 1, pág. 199)
#' @examples
#'
#' library(latticeExtra)
#' library(ggplot2)
#'
#' data(BarbinEx1)
#'
#' str(BarbinEx1)
#'
#' # Histograma + densidade com graphics.
#' ht <- hist(BarbinEx1, prob = TRUE, main = NULL, col = "orange",
#'            ylab = "Densidade de probabilidade",
#'            xlab = expression("Altura de árvores de"
#'                              ~italic("Pinus elliottii")))
#' lines(density(BarbinEx1))
#' rug(BarbinEx1)
#'
#' # Histograma + densidade com lattice.
#' histogram(BarbinEx1, breaks = ht$breaks, col = "orange",
#'           type = "density",
#'           ylab = "Densidade de probabilidade",
#'           xlab = expression("Altura de árvores de"
#'                             ~italic("Pinus elliottii"))) +
#'     latticeExtra::as.layer(densityplot(BarbinEx1,
#'                                        plot.points = FALSE,
#'                                        col = 1)) +
#'     latticeExtra::layer(panel.rug(x = x, col = 1))
#'
#' # Histograma + densidade com ggplot2.
#' ggplot() +
#'     geom_histogram(mapping = aes(x = BarbinEx1, y = ..density..),
#'                    breaks = ht$breaks, fill = "orange", col = 1) +
#'     geom_rug(mapping = aes(x = BarbinEx1), sides = "b") +
#'     geom_density(mapping = aes(x = BarbinEx1, y = ..density..)) +
#'     labs(y = "Densidade de probabilidade",
#'          x = expression("Altura de árvores de"
#'                         ~italic("Pinus elliottii")))
#'
#' # Acumulada empírica.
#' plot(ecdf(BarbinEx1))
#' ecdfplot(BarbinEx1, col = 1)
#' qplot(BarbinEx1,
#'       ecdf(x = BarbinEx1)(BarbinEx1),
#'       geom = "step")
#'
NULL
