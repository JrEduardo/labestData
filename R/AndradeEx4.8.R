#' @name AndradeEx4.8
#' @title Número de Ninhadas com X Porcos Machos
#' @description Foram examinadas 2.000 ninhadas de cinco porcos cada
#'     uma, segundo o número de machos.
#' @format Um \code{data.frame} com 6 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{x}}{Número de machos na ninhada de 5 porcos.}
#'
#' \item{\code{ninhadas}}{Número de ninhadas com x porcos machos.}
#'
#' }
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Capítulo 4, Exercício
#'     8, pág. 237)
#' @examples
#'
#' data(AndradeEx4.8)
#' str(AndradeEx4.8)
#'
#' barplot(AndradeEx4.8$ninhadas,
#'         col = "darkturquoise",
#'         names.arg = AndradeEx4.8$x,
#'         xlab = "Número de Machos na Ninhada",
#'         ylab = "Número de Ninhadas")
#'
NULL