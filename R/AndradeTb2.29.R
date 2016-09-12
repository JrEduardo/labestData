#' @name AndradeTb2.29
#' @title Biometria Total de \emph{Macrobrachium Potiuna}
#' @description Biometria total, em mm, do \emph{Macrobrachium potiuna}
#'     (MÜLLER, 1880) da família Palaemonidae.
#' @format Um \code{vetor} numérico com 36 observações.
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.29, pág. 110)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.29)
#' str(AndradeTb2.29)
#'
#' hist(AndradeTb2.29,
#'      labels = TRUE,
#'      prob = TRUE,
#'      main = NULL,
#'      col = "darkturquoise",
#'      ylim = c(0, 0.071),
#'      xlab = "Biometria Total (em mm)",
#'      ylab = "Densidade")
#'
#' lines(density(AndradeTb2.29), lwd = 2)
#'
NULL