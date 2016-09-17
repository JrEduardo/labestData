#' @name AndradeTb2.18
#' @title Rendimento Médio de Híbridos de Milho
#' @description Rendimentos médios, em \eqn{kg\,ha^{-1}}, de 32 híbridos
#'     de milho recomendados para a Região Oeste catarinense.
#' @format Um \code{vetor} numérico com 32 observações.
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.18, pág. 97)
#' @examples
#'
#' data(AndradeTb2.18)
#' str(AndradeTb2.18)
#'
#' hist(AndradeTb2.18,
#'      col = "darkturquoise",
#'      labels = TRUE,
#'      main = "",
#'      ylim = c(0, 1),
#'      prob = TRUE,
#'      xlab = "Rendimento Médio (em kg/ha)",
#'      ylab = "Densidade")
#'
#' lines(density(AndradeTb2.18), lwd = 2)
#'
NULL
