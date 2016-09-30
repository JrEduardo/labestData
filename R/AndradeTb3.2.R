#' @name AndradeTb3.2
#' @title Fecundidade de Duas Raças Suínas
#' @description Estudo sobre fecundidade de duas raças suínas, onde
#'     foram examinados 28 animais.
#' @format Um \code{data.frame} com 4 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{raca}}{Fator de 2 níveis qualitativos, que são as raças
#'     dos suínos.}
#'
#' \item{\code{fecun}}{Fator de 2 níveis qualitativos, onde F =
#'     "Fecundas" e Fc = "Não fecundas".}
#'
#' \item{\code{freq}}{Frequência absoluta (relativa) da fecundidade das
#'     duas raças suínas.}
#'
#' }
#' @keywords DBC
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 3.2, pág. 193)
#' @examples
#'
#' data(AndradeTb3.2)
#' str(AndradeTb3.2)
#'
#' barplot(AndradeTb3.2$freq,
#'         col = c("darkturquoise", "blue"),
#'         legend.text = c("Raça A", "Raça B"),
#'         names.arg = c(rep("F", 2), rep("Fc", 2)),
#'         xlab = "Fecundidade",
#'         ylab = "Frequência Absoluta")
#'
NULL