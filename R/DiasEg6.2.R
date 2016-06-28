#' @name DiasEg6.2
#' @title Aduba\enc{çã}{ca}o NPK na Produ\enc{çã}{ca}o de Feij\enc{ã}{a}o
#' @description Experimento instalado em delineamento de blocos
#'     casualizados para estudar o efeito da adubação NPK na
#'     produtividade do feijoeiro.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{npk}}{Fator métrico que são as doses de NPK (kg
#'     ha\eqn{^{-1}}).}
#'
#' \item{\code{bloco}}{Fator cetegórico que são os blocos do
#'     experimento.}
#'
#' \item{\code{prod}}{Produtividade de grãos de feijão (kg
#'     parcela\eqn{^{-1}}).}
#'
#' }
#' @keywords DBC RP
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exemplo 6.2, pág. 164)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg6.2)
#' str(DiasEg6.2)
#'
#' names(DiasEg6.2)[2] <- "bloc"
#'
#' xyplot(prod ~ npk, data = DiasEg6.2,
#'        groups = bloc, type = "b",
#'        xlab = expression("Dose de NPK"~(kg~ha^{-1})),
#'        ylab = expression("Produtividade de grãos"~(kg~parcela^{-1})),
#'        auto.key = list(title = "Bloco", cex.title = 1.1,
#'                        columns = 4))
#'
NULL
