#' @name AndradeEx4.8
#' @title Número de Machos em Ninhadas de Porcos
#' @description Estudo onde foram examinadas 2.000 ninhadas de cinco
#'     porcos, contabilizando o número de machos em cada.
#' @format Um \code{data.frame} com 6 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{nmachos}}{Número de machos na ninhada de 5 porcos.}
#'
#' \item{\code{ninhadas}}{Número de ninhadas com \code{nmachos} porcos
#'     machos.}
#'
#' }
#' @keywords contingência*
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Capítulo 4, Exercício
#'     8, pág. 237)
#' @examples
#'
#' data(AndradeEx4.8)
#' str(AndradeEx4.8)
#'
#' # Média de porcos machos homens por ninhada
#' with(AndradeEx4.8, weighted.mean(nmachos, ninhadas/sum(ninhadas)))
#'
#' # Distribuição de frequências
#' barplot(AndradeEx4.8$ninhadas,
#'         col = "darkturquoise",
#'         names.arg = AndradeEx4.8$nmachos,
#'         xlab = "Número de Machos na Ninhada",
#'         ylab = "Número de Ninhadas")
#'
NULL
