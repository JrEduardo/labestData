#' @name AndradeTb2.11
#' @title Experimento de Contagem de Plantas
#' @description Experimento que tem por objetivo verificar se os
#'     caracteres ciclo e virescência, de uma progênie da espécie "X",
#'     segregam de forma independente.
#' @format Um \code{data.frame} com 4 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ciclo}}{Fator de 2 níveis qualitativos que indica o
#'     caractere ciclo (Tardio e Precoce).}
#'
#' \item{\code{vir}}{Fator de 3 níveis qualitativos que indica o
#'     caractere virescência (Normal e Virescente).}
#'
#' \item{\code{cont}}{Contagem de plantas segregando para dois
#'     caracteres numa progênie da espécie "X".}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.11, pág. 80)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.11)
#' str(AndradeTb2.11)
#'
#' tb <- xtabs(cont~ciclo + vir, data= AndradeTb2.11)
#'
#' barplot(t(tb),
#'         beside = TRUE,
#'         legend.text = TRUE,
#'         col = c("darkturquoise", "lawngreen"),
#'         ylim = c(0, 3500),
#'         xlab = "Ciclo",
#'         ylab = "Contagem de Plantas")
#'
NULL