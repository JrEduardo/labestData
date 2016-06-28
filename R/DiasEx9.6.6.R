#' @name DiasEx9.6.6
#' @title Teores de S\enc{ó}{o}lidos Sol\enc{ú}{u}veis Totais da Poupa de Frutos
#' @description Experimento em delineamento inteiramente casualizado,
#'     com 5 repetições e 4 cultivares de tomateiro onde os totais de
#'     sólidos solúveis na poupa dos frutos foram avaliados.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     tomateiro.}
#'
#' \item{\code{rept}}{Inteiro que representa as repetições.}
#'
#' \item{\code{tssp}}{Teor de sólidos solúveis da polpa do fruto.}
#'
#' }
#' @keywords DIC
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exercício 6, Cap. 9, pág. 260)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.6)
#' str(DiasEx9.6.6)
#'
#' xtabs(~cult, data = DiasEx9.6.6)
#' unstack(DiasEx9.6.6, tssp ~ cult)
#'
#' xyplot(tssp ~ reorder(cult, tssp),
#'        type = c("p", "a"),
#'        data = DiasEx9.6.6,
#'        ylab = "Total de sólidos solúveis na polpa do fruto",
#'        xlab = "Cultivares de tomateiro")
#'
NULL
