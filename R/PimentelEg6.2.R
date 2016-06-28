#' @name PimentelEg6.2
#' @title Ensaio de Competi\enc{çã}{ca}o de Variedades de Cana-de-a\enc{çú}{cu}car
#' @description Experimento de competição de variedades de
#'     cana-de-açúcar no qual foram usadas cinco variedades dispostas
#'     em um delineamento quadrado latino 5 \eqn{\times} 5.
#' @format Um \code{data.frame} com 25 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as linhas do quadrado latino.}
#'
#' \item{\code{coluna}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos que são as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{prod}}{Dados de produção de cana-planta, em kg por
#'     parcela.}
#'
#' }
#' @keywords DQL
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Exemplo 6.2, pág. 96)
#' @examples
#'
#' data(PimentelEg6.2)
#' str(PimentelEg6.2)
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied,
#'        data = PimentelEg6.2,
#'        xlab = "Variedades de cana-de-açúcar",
#'        ylab = "Produção (kg/parcela)")
#'
#' levelplot(prod ~ linha + coluna,
#'           data = PimentelEg6.2, aspect = "iso",
#'           panel = function(x, y, z, subscripts, ...) {
#'               panel.levelplot(x, y, z, subscripts = subscripts, ...)
#'               panel.text(x, y,
#'                          PimentelEg6.2$varied[subscripts],
#'                          cex = 0.8)
#'               panel.text(x, y, z, pos = 1)
#'           })
#'
NULL
