#' @name DiasEx6.5.9
#' @title Correlação entre Temperatura e Massa
#' @description Dados de 11 pares de valores de temperatura e massa.
#' @format Um \code{data.frame} com 11 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura.}
#'
#' \item{\code{massa}}{Massa em gramas.}
#'
#' }
#' @keywords AAS RL
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exercício 9, Cap. 6, pág. 181)
#'
#' library(lattice)
#'
#' data(DiasEx6.5.9)
#' str(DiasEx6.5.9)
#'
#' xyplot(massa ~ temp, data = DiasEx6.5.9, type = c("p", "r"),
#'        ylab = "Massa (g)", xlab = "Temperatura")
#'
NULL
