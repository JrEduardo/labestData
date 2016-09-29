#' @name AndradeTb2.45
#' @title Tamanho de Pecíolos de \emph{Hydrocotille sp}
#' @description Em um estudo do comportamento de uma planta típica de
#'     dunas, a \emph{Hydrocotille sp}, quanto ao seu desenvolvimento,
#'     mediu-se o tamanho do pecíolo , em cm, em duas áreas: seca e
#'     úmida. Selecionou-se de cada uma dessas áreas amostras aleatórias
#'     de plantas e mediu-se o tamanho dos pacíolos.
#' @format Um \code{data.frame} com 69 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{area}}{Fator de 2 níveis qualitativos, que são as áreas
#'     seca e úmida.}
#'
#' \item{\code{tamanho}}{Tamanho do pecíolo, em centímetros.}
#'
#' }
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.45, pág. 148)
#' @examples
#'
#' data(AndradeTb2.45)
#' str(AndradeTb2.45)
#'
#' barplot(xtabs(data = AndradeTb2.45),
#'         legend = TRUE,
#'         xlab = "Tamanho do Pecíolo (em cm)",
#'         ylab = "Frequência")
#'
NULL