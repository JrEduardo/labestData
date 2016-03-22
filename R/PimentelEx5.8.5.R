#' @name PimentelEx5.8.5
#' @title Competição de Variedades de Mandioca
#' @description Experimento em blocos ao acaso, realizado pelo Instituto
#'     de Pesquisas Agronômicas do Leste (atual Centro Nacional de
#'     Pesquisa de Mandioca e Fruticultura da Embrapa), em Cruz das
#'     Almas, BA, referente a produção em uma competição de variedades
#'     de mandioca.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{variedade}}{Fator de 6 níveis qualitativos, que são os
#'     diferentes tipos de mandioca.}
#'     
#' \item{\code{prod}}{Produção de mandioca, em t ha\eqn{^{-1}}.}
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
#'        data = PimentelEx5.8.5,
#'        xlab = "Variedade",
#'        ylab = "Produção")
#'
NULL
