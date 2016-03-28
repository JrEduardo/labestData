#' @name PimentelPg91
#' @title Preparo com do solo na Produção de Milho
#' @description Experimento em blocos casualizados realizado pelo
#'     Engenheiro Agrônomo Duvilio Ometto, com 2 tratamentos (aradura
#'     profunda e aradura superficial) e 6 blocos com 2 repetições cada.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{aradura}}{Fator de 2 níveis qualitativos, que são os
#'     diferentes tipos de aradura.}
#'
#' \item{\code{bloco}}{Fator de 6 níveis qualitativos, usado para
#'     controle local.}
#'     
#' \item{\code{prod}}{Produção de milho, em kg por parcela de
#'     200\eqn{m^{2}}.}
#'
#' }
#' @keywords DBC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ.
#' @examples
#'
#' library(lattice)
#'
#' xyplot(prod ~ aradura,
#'        jitter.x = TRUE,
#'        groups = bloco,
#'        data = PimentelPg91,
#'        xlab = "Aradura",
#'        ylab = "Produção")
#'
NULL
