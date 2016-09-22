#' @name AndradeTb2.31
#' @title Efeito do Rizóbio na Altura das Plantas
#' @description Altura de plantas, medida em centímetros, para dois
#'     tratamentos, no qual um tratamento é o controle, isto é, não foi
#'     feita a inoculação do rizóbio nas plantas e o outro corresponde à
#'     aplicação de rizóbio nas plantas (rizóbios tem a capacidade de
#'     fixar o nitrogênio atmosférico e fornecê-lo às culturas).
#' @format Um \code{data.frame} com 40 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Indica o tratamento aplicado às plantas (com
#'     rizóbio ou controle).}
#'
#' \item{\code{altura}}{Altura das plantas, medida em cm.}
#'
#' }
#' @keywords AASI
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.31, pág. 111)
#' @examples
#'
#' data(AndradeTb2.31)
#' str(AndradeTb2.31)
#'
#' with(AndradeTb2.31, by(altura, trat, summary))
#'
#' library(lattice)
#' bwplot(altura ~ trat,
#'        data = AndradeTb2.31,
#'        xlab = "Tratamento",
#'        ylab = "Altura")
#'
NULL
