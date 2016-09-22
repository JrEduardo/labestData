#' @name AndradeEx2.13
#' @title Estudo dos Ovos de \emph{Biomphalaria Taenagophila}
#' @description Estudo da distribuição do número de ovos inviáveis de
#'     \emph{Biomphalaria taenagophila} (caramujo) em ambiente
#'     poluído. Para isso tomou-se uma amostra de 23 caramujos.
#' @format Um \code{vetor} numérico com 23 observações.
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Capítulo 2, Exercício
#'     13, pág. 109)
#' @examples
#'
#' data(AndradeEx2.13)
#' str(AndradeEx2.13)
#'
#' hist(AndradeEx2.13,
#'      labels = TRUE,
#'      prob = TRUE,
#'      main = NULL,
#'      col = "darkturquoise",
#'      ylim = c(0, 0.12),
#'      xlab = "Número de Ovos",
#'      ylab = "Densidade")
#'
#' lines(density(AndradeEx2.13), lwd = 2)
#'
NULL
