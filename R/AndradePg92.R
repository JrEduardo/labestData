#' @name AndradePg92
#' @title Ganho Médio de Peso de Porcos
#' @description Para comparar o ganho médio de peso por dia, em gramas,
#'     de porcos submetidos a duas dietas diferentes, foi conduzido um
#'     experimento com 20 porcos. Dez porcos foram submetidos a cada uma
#'     das dietas.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{dieta}}{Fator de 2 níveis qualitativos que são as dietas
#'     submetidas aos porcos.}
#'
#' \item{\code{peso}}{Ganho médio de peso por dia, em gramas.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Página
#'     92)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradePg92)
#' str(AndradePg92)
#'
#' bwplot(peso ~ dieta,
#'        data = AndradePg92,
#'        xlab = "Dieta",
#'        ylab = "Ganho Médio de Peso por Dia (em gramas)")
#'
#'
NULL