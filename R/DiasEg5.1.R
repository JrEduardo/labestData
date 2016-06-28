#' @name DiasEg5.1
#' @title N\enc{ú}{u}mero de Ovos Eclodidos de Nemat\enc{ó}{o}ides Ap\enc{ó}{o}s Aplica\enc{çã}{ca}o de
#'     Nematicidas Naturais
#' @description Resultados de um experimento em delineamento
#'     inteiramente casualizado que avaliou o efeito de 5 nematicidas
#'     naturais na eclosão de ovos de nematoides.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{nemat}}{Fator categórico que identifica os nematicidas.}
#'
#' \item{\code{rept}}{Inteiro que representa as repetições.}
#'
#' \item{\code{ovos}}{Número de ovos eclodidos.}
#'
#' }
#' @keywords DIC contagem
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exemplo 5.1, pág. 130)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg5.1)
#' str(DiasEg5.1)
#'
#' unstack(DiasEg5.1, ovos ~ nemat)
#'
#' xyplot(ovos ~ reorder(nemat, ovos), data = DiasEg5.1,
#'        type = c("p", "a"),
#'        xlab = "Nematicidas",
#'        ylab = "Número de ovos eclodidos")
#'
NULL
