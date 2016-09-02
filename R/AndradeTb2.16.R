#' @name AndradeTb2.16
#' @title Avaliação da Formação de Calos
#' @description Avaliação da formação de calos, mais especificamente, da
#'     altura de calos em cm, após um período de 30 dias \emph{in vitro}
#'     para os explantes de procedência do cerrado da espécie
#'     \emph{Mandevilla velutina}. Obs.: É importante que os calos não
#'     se desenvolvam, pois quanto menor eles forem, maior será o
#'     desenvolvimento das plantas.
#' @format Um \code{vetor} numérico com 37 observações.
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.16, pág. 96)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.16)
#' str(AndradeTb2.16)
#'
#' hist(AndradeTb2.16,
#'      col = "darkturquoise",
#'      labels = TRUE,
#'      xlab = "Altura dos Calos (em cm)",
#'      ylab = "Frequência",
#'      xlim = c(0, 1))
#'
NULL