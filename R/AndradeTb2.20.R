#' @name AndradeTb2.20
#' @title Altura de Brotos de Explantes de Abacaxi
#' @description Experimento desenvolvido para avaliar o comportamento
#'     \emph{In Vitro} de abacaxi (\emph{Ananas comosus}) cv. Primavera
#'     e referem-se à variável altura dos brotos de explantes, em
#'     centímetros.
#' @format Um \code{vetor} numérico com 39 observações.
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.20, pág. 102)
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