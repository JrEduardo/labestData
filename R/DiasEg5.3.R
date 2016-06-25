#' @name DiasEg5.3
#' @title Produtividade de Cultivares de Milho
#' @description Resultados de um experimento em delineamento
#'     inteiramente casualizado que mediu a produtividade de cultivares
#'     de milho.
#' @format Um \code{data.frame} com 15 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares de
#'     milho.}
#'
#' \item{\code{rept}}{Inteiro que indica as repetições das cultivares.}
#'
#' \item{\code{prod}}{Produtividade de grãos (toneladas por hectare).}
#'
#' }
#' @keywords DIC
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exercício 9, Cap. 11, pág. 321)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg5.3)
#' str(DiasEg5.3)
#'
#' unstack(DiasEg5.3, prod ~ cult)
#'
#' xyplot(prod ~ reorder(cult, prod), data = DiasEg5.3,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Cultivares de milho",
#'        yalb = "Produtividade de grãos (ton/ha)")
#'
NULL
