#' @name AndradeTb2.20
#' @title Altura de Brotos de Explantes de Abacaxi
#' @description Estudo com brotos obtidos de explantes de abacaxi
#'     \emph{In Vitro}, (\emph{Ananas comosus}), da cultivar Primavera.
#'     No estudo valiou-se as alturas dos brotos, em centímetros.
#' @format Um \code{vetor} numérico com 39 observações.
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.20, pág. 102)
#' @examples
#'
#' data(AndradeTb2.20)
#' str(AndradeTb2.20)
#'
#' hist(AndradeTb2.20,
#'      col = "darkturquoise",
#'      labels = TRUE,
#'      main = "",
#'      prob = TRUE,
#'      ylim = c(0, 2.5),
#'      xlab = "Altura dos Brotos (em cm)",
#'      ylab = "Densidade")
#'
#' lines(density(AndradeTb2.20), lwd = 2)
#'
NULL
