#' @name AndradeTb2.11
#' @title Relação entre Ciclo e Virescência em Plantas
#' @description Experimento que tem por objetivo verificar se os
#'     caracteres ciclo e virescência, de uma progênie da espécie "X",
#'     segregam de forma independente.
#' @format Um \code{data.frame} com 4 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ciclo}}{Fator de 2 níveis qualitativos que indica o
#'     caractere ciclo (tardio e precoce).}
#'
#' \item{\code{vir}}{Fator de 3 níveis qualitativos que indica o
#'     caractere virescência (normal e virescente).}
#'
#' \item{\code{cont}}{Contagem de plantas segregando para dois
#'     caracteres numa progênie da espécie "X".}
#'
#' }
#' @keywords contingência
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.11, pág. 80)
#' @examples
#'
#' data(AndradeTb2.11)
#' str(AndradeTb2.11)
#'
#' (tb <- xtabs(cont~ciclo + vir, data= AndradeTb2.11))
#'
#' mosaicplot(tb)
#'
#' barplot(t(tb),
#'         beside = TRUE,
#'         legend.text = TRUE,
#'         args.legend = list(x = "topleft"),
#'         col = c("darkturquoise", "lawngreen"),
#'         ylim = c(0, 3500),
#'         xlab = "Ciclo",
#'         ylab = "Contagem de Plantas")
#'
NULL
