#' @name BanzattoQd3.6.1
#' @title Produção de matéria seca em cultivares de sorgo
#' @description Experimento em delineamento inteiramente casualizado
#'     avaliando a produção de matéria de cultivares de sorgo. O
#'     experimento é desbalanceado no número de repetições das
#'     cultivares.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator nominal. Cultivares de sorgo estudadas.}
#'
#' \item{\code{rept}}{Inteiro. Identifica as unidades experimentais de
#'     cada cultivar. }
#'
#' \item{\code{pms}}{Produção de matéria seca (ton ha\eqn{^{-1}}).}
#'
#' }
#' @keywords DIC desbalanceado
#' @source Banzatto, D. A., & Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (???)
#' @examples
#' library(lattice)
#'
#' data(BanzattoQd3.6.1)
#'
#' aggregate(pms ~ cult,  data = BanzattoQd3.6.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(pms ~ cult, data = BanzattoQd3.6.1,
#'        xlab = "Cultivares de sorgo",
#'        ylab = expression(Produção~de~matéria~seca~(t~ha^{-1})))
#'
NULL
