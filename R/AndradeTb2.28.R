#' @name AndradeTb2.28
#' @title Número de Brotos por Explante de Abacaxi
#' @description Número de brotos por explante de abacaxi avaliada em
#'     dois meios de cultura.
#' @format Um \code{data.frame} com 26 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{meio}}{Fator de 2 níveis qualitativos que são os meios
#'     de cultura.}
#'
#' \item{\code{nbroto}}{Número de brotos por explante de abacaxi.}
#'
#' }
#' @keywords AASI
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.28, pág. 109)
#' @examples
#'
#' data(AndradeTb2.28)
#' str(AndradeTb2.28)
#'
#' with(AndradeTb2.28, by(nbroto, meio, summary))
#'
#' library(lattice)
#'
#' bwplot(nbroto ~ meio,
#'        data = AndradeTb2.28,
#'        xlab = "Meio de Cultura",
#'        ylab = "Número de Brotos")
#'
#' densityplot(~nbroto,
#'             groups = meio,
#'             grid = TRUE,
#'             data = AndradeTb2.28)
#'
NULL
