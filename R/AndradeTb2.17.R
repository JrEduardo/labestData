#' @name AndradeTb2.17
#' @title Pesos da Carne de Mexilhões de Manguezal
#' @description Dados de peso da carne de mexilhões de manguezal.
#' @format Um \code{vetor} numérico com 35 observações.
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.17, pág. 96)
#' @examples
#'
#' data(AndradeTb2.17)
#' str(AndradeTb2.17)
#'
#' hist(AndradeTb2.17,
#'      col = "darkturquoise",
#'      labels = TRUE,
#'      main = "",
#'      prob = TRUE,
#'      ylim = c(0, 0.06),
#'      xlab = "Peso da Carne (em gramas)",
#'      ylab = "Densidade")
#'
#' lines(density(AndradeTb2.17), lwd = 2)
#'
NULL
