#' @name AndradeTb2.27
#' @title Estudo da Eficiência de uma Vacina Antigripal
#' @description Estudo para avaliar a eficiência de uma nova vacina
#'     antigripal, a qual foi administrada aos membros de uma pequena
#'     comunidade, em duas doses, ao longo de duas semanas. Algumas
#'     pessoas tomaram as duas doses, outras tomaram apenas a primeira
#'     dose e outras não tomaram nenhuma dose. Os tratamentos foram
#'     aplicados em 1.000 habitantes dessa comunidade.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{saude}}{Fator de 2 níveis qualitativos que são os estados
#'     de saúde dos habitantes.}
#'
#' \item{\code{vacina}}{Fator de 3 níveis qualitativos que são as
#'     dosagens da nova vacina antigripal.}
#'
#' \item{\code{freq}}{Número de habitantes.}
#'
#' }
#' @keywords contigência
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.27, pág. 108)
#' @examples
#'
#' data(AndradeTb2.27)
#' str(AndradeTb2.27)
#'
#' xt <- xtabs(freq ~ ., data = AndradeTb2.27)
#' xt
#'
#' mosaicplot(xt, col = c("darkturquoise", "lawngreen", "blue"),
#'            cex.axis = 0.8, main = "")
#'
#' library(lattice)
#' barchart(t(xt),
#'          horizontal = FALSE,
#'          stack = TRUE,
#'          auto.key = list(
#'              corner= c(0.9, 0.9),
#'              title = "Estado de saúde",
#'              cex.title = 1.1),
#'          xlab = "Número de doses da vacina",
#'          ylab = "Número de habitantes")
#'
NULL
