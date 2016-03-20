#' @name PimentelEx5.8.4
#' @title Dados de produção de cana-planta
#' @description Experimento em blocos casualizados realizado pela
#'     Cooperativa dos Usineiros do Oeste do Estado de São Paulo,
#'     referentes à produção de cana-planta de um ensaio de variedades
#'     de cana.
#' @format Um \code{data.frame} com 28 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{variedade}}{Fator de 7 níveis qualitativos, que são os
#'     diferentes tipos de cana.}
#'     
#' \item{\code{prod}}{Dados de produção de cana-planta.}
#'
#' }
#' @keywords DBC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ.
#' @examples
#'
#' library(lattice)
#'
#' xyplot(prod ~ variedade,
#'        groups = bloco,
#'        data = PimentelEx5.8.4,
#'        xlab = "Variedade",
#'        ylab = "Produção")
#'
NULL