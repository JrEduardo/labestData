#' @name PimentelEg6.2
#' @title Competição de Variedades de Cana-de-açúcar
#' @description Experimento de competição de variedades de
#'     cana-de-açúcar, no qual foram usadas cinco variedades dispostas
#'     em um quadrado latino de 5 x 5.
#' @format Um \code{data.frame} com 25 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as linhas do quadrado latino de 5 x 5.}
#'
#' \item{\code{coluna}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino de 5 x 5.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos (A, B, C, D, E)
#'     que são as variedades de cana-de-açúcar.}
#'
#' \item{\code{prod}}{Dados de produção de cana-planta em kg por
#'     parcela.}
#'
#' }
#' @keywords DQL
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Exemplo 6.2)
#' @examples
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied + linha + coluna,
#'        data = PimentelEg6.2,
#'        xlab = "Linha (Rosa) + Coluna (Verde) + Variedade",
#'        ylab = "Produção em kg por parcela")
#'
NULL