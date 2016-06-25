#' @name DiasEx6.5.1
#' @title Peso em Função das Idades em Codornas
#' @description Dados referentes ao peso em função da idade de codornas.
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{idade}}{Idade do animal, em semanas.}
#'
#' \item{\code{peso}}{Peso do animal (g).}
#'
#' }
#' @keywords RL
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exercício 1, Cap. 6, pág. 179)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx6.5.1)
#' str(DiasEx6.5.1)
#'
#' xyplot(peso ~ idade, data = DiasEx6.5.1, type = c("p", "r"),
#'        ylab = "Peso (g)", xlab = "Idade (semanas)")
#'
NULL
