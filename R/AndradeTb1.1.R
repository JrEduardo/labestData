#' @name AndradeTb1.1
#' @title Estudo da Duração do Quinto Estádio Ninfal de Triatoma Klugi
#' @description Foi feito um experimento, na Universidade Federal de
#'     Santa Catarina, para estudar a duração, em dias, do quinto
#'     estádio ninfal de Triatoma klugi com alimentação em galo.
#' @format Um \code{vetor} numérico com 35 observações.
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     1.1, pág. 37)
#' @examples
#'
#' data(AndradeTb1.1)
#'
#' hist(AndradeTb1.1, prob = TRUE,
#'      xlab = "Duração do Quinto Estádio Ninfal (em dias)",
#'      ylab = "Densidade",
#'      main = NULL,
#'      ylim = c(0, 0.062))
#'
#' lines(density(AndradeTb1.1), lwd = 2)
#'
#' rug(AndradeTb1.1)
#'
#' boxplot(AndradeTb1.1,
#'         ylab = "Duração do Quinto Estádio Ninfal (em dias)")
#'
#' mean(AndradeTb1.1)
#'
#' sd(AndradeTb1.1)
#'
#' fivenum(AndradeTb1.1)
#'
NULL