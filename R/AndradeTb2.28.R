#' @name AndradeTb2.28
#' @title Número de Brotos por Explante de Abacaxi
#' @description Número de brotos por explante de abacaxi avaliada em
#'     dois meios de cultura.
#' @format Um \code{data.frame} com 26 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{Meio}}{Fator de 2 níveis qualitativos que são os meios
#'     de cultura.}
#'
#' \item{\code{Brotos}}{Número de brotos por explante de abacaxi.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.28, pág. 109)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.28)
#' str(AndradeTb2.28)
#'
#' bwplot(Brotos ~ Meio,
#'        data = AndradeTb2.28,
#'        xlab = "Meio de Cultura",
#'        ylab = "Número de Brotos")
#'
NULL