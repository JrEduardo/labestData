#' @name DiasEx9.6.7
#' @title Produ\enc{çã}{ca}o de Porta-Enxertos em Mangueira
#' @description Resultados de um experimento em delineamento de blocos
#'     casualizados que considerou a produção de frutos na primeira
#'     colheita para difentes porta-enxertos de magueira sendo a copa a
#'     variedade Imperial.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{penx}}{Variável categórica que são os porta-enxertos de
#'     mangueira usados para a copa Imperial.}
#'
#' \item{\code{bloc}}{Fator categórico que representa os blocos do
#'     experimento.}
#'
#'
#' \item{\code{frutos}}{Número de frutos na primeira colheita.}
#'
#' }
#' @keywords DBC
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exercício 7, Cap. 9, pág. 261)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.7)
#' str(DiasEx9.6.7)
#'
#' xtabs(~penx + bloc, data = DiasEx9.6.7)
#'
#' xyplot(nfpc ~ reorder(penx, nfpc),
#'        groups = bloc, data = DiasEx9.6.7,
#'        xlab = "Porta-enxertos de mangueira",
#'        ylab = "Número de frutos na primeira colheita")
#'
NULL
