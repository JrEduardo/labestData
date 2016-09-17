#' @name AndradePg90
#' @title Pesos de Bezerros Recém Nascidos
#' @description Pesos ao nascer de 24 bezerros machos das raças
#'     Charoleza e Gir.
#' @format Um \code{data.frame} com 24 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bezerro}}{Fator de 2 níveis qualitativos que são as raças
#'     dos bezerros (Charoleza e Gir).}
#'
#' \item{\code{peso}}{Peso do bezerro macho recém nascido, em kg.}
#'
#' }
#' @keywords AASI
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Página
#'     90)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradePg90)
#' str(AndradePg90)
#'
#' bwplot(peso ~ bezerro,
#'        data = AndradePg90,
#'        xlab = "Raça do Bezerro",
#'        ylab = "Peso (em kg)")
#'
#' densityplot(~peso, groups = bezerro,
#'             data = AndradePg90,
#'             auto.key = list(
#'                 corner = c(0.1, 0.9),
#'                 title = "Raça do bezerro",
#'                 cex.title = 1
#'             ))
#'
NULL
