#' @name AndradeTb1.1
#' @title Estudo da Duração do Quinto Estádio Ninfal de \emph{Triatoma
#'     Klugi}
#' @description Foi feito um experimento, na Universidade Federal de
#'     Santa Catarina, para estudar a duração, em dias, do quinto
#'     estádio ninfal de \emph{Triatoma klugi} com alimentação em galo.
#' @format Um \code{vetor} numérico com 35 observações.
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 1.1, pág. 37)
#' @examples
#'
#' data(AndradeTb1.1)
#' str(AndradeTb1.1)
#'
#' hist(AndradeTb1.1,
#'      prob = TRUE,
#'      labels = TRUE,
#'      col = "darkturquoise",
#'      xlab = "Duração do Quinto Estádio Ninfal (em dias)",
#'      ylab = "Densidade",
#'      main = NULL,
#'      ylim = c(0, 0.062))
#'
#' lines(density(AndradeTb1.1), lwd = 2)
#' rug(AndradeTb1.1)
#'
#' boxplot(AndradeTb1.1,
#'         ylab = "Duração do Quinto Estádio Ninfal (em dias)")
#'
#' mean(AndradeTb1.1)
#' sd(AndradeTb1.1)
#' fivenum(AndradeTb1.1)
#'
NULL
