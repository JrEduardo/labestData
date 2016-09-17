#' @name AndradePg92
#' @title Ganho de Peso em Suínos
#' @description Para comparar o ganho médio de peso em suínos submetidos
#'     a duas diferentes dietas, foi conduzido um experimento com 20
#'     porcos. Dez porcos foram submetidos a cada uma das dietas e
#'     mensurou-se o ganho médio de peso por dia.
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
#' @keywords AASI
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Página
#'     92)
#' @examples
#'
#' data(AndradePg92)
#' str(AndradePg92)
#'
#' library(lattice)
#' bwplot(peso ~ dieta,
#'        data = AndradePg92,
#'        xlab = "Dieta",
#'        ylab = "Ganho Médio de Peso por Dia (em gramas)")
#'
#' library(latticeExtra)
#' ecdfplot(~peso, groups = dieta, data = AndradePg92,
#'          grid = TRUE,
#'          auto.key = list(
#'              corner = c(0.9, 0.1),
#'              title = "Dieta",
#'              cex.title = 1,
#'              lwd = 2
#'          ))
#'
NULL
