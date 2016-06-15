#' @name PimentelPg382
#' @title Experimento de Métodos de Enxertia
#' @description Experimento com 3 métodos de enxertia em que haviam 200
#'     enxertos para cada método e pegaram 180, 150 e 145 desses
#'     enxertos, respectivamente. O resultado, traduzido por
#'     frequências, pode ser expresso em porcentagens, que devem ser
#'     comparadas.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{metod}}{Fator de 3 níveis qualitativos, que são os
#'     métodos de enxertia.}
#'
#' \item{\code{enxerto}}{Fator de 2 níveis qualitativos, que indica os
#'      Enxertos Pegados e os Enxertos Mortos.}
#'
#' \item{\code{freq}}{Totais de frequências.}
#'
#' }
#' @keywords DIC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Página 382)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg382)
#' str(PimentelPg382)
#' 
#' xyplot(freq ~ metod,
#'        groups = enxerto,
#'        type = "o",
#'        auto.key = list(title = "Enxerto",
#'                        cext.tile = 1,
#'                        columns = 2),
#'        data = PimentelPg382,
#'        ylab = "Frequência",
#'        xlab = "Método de Enxertia")
#'
NULL