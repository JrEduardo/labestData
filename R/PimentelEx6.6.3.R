#' @name PimentelEx6.6.3
#' @title Efeito da Idade de Castra\enc{çã}{ca}o no Ganho de Peso de Su\enc{í}{i}nos
#' @description Ensaio de alimentação de suínos, no qual foi usado um
#'     quadrado latino de 4 x 4, com os resultados referentes aos ganhos
#'     de peso ao fim de 252 dias.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{leitegada}}{Fator de 4 níveis qualitativos, usado para
#'     identificar as 4 diferentes ninhadas de leitões, cada leitegada
#'     representa uma linha do quadrado latino de 4 x 4.}
#'
#' \item{\code{coluna}}{Fator de 4 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino de 4 x 4, essas colunas
#'     objetivam controlar a variação de peso dos leitões dentro de cada
#'     leitegada.}
#'
#' \item{\code{castracao}}{Fator de 4 níveis qualitativos, que são os
#'     diferentes tipos de tratamento, são eles: castração aos 7, 21 e
#'     56 dias de idade e a testemunha, que são animais não castrados.}
#'
#' \item{\code{peso}}{Ganho de peso, em kg, ao fim de 252 dias.}
#'
#' }
#' @keywords DQL
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Exercício 6.6.3, página 110)
#' @examples
#'
#' data(PimentelEx6.6.3)
#' str(PimentelEx6.6.3)
#'
#' library(lattice)
#'
#' xyplot(peso ~ castracao,
#'        jitter.x = TRUE,
#'        data = PimentelEx6.6.3,
#'        xlab = "Castração",
#'        ylab = "Ganho de peso (kg)")
#'
#' levelplot(peso ~ leitegada + coluna,
#'           data = PimentelEx6.6.3, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y,
#'                          PimentelEx6.6.3$castracao[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
NULL
