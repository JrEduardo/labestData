#' @name PimentelEg5.2
#' @title Competição de variedades de batatinha
#' @description Experimento de competição de variedades de batatinha
#'     feito pelo Engenheiro Agrônomo Oscar A. Garay em Balcare,
#'     Argentina. O experimento foi realizado em blocos casualizados.
#' @format data.frame com 32 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{bloco}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{variedade}{Fator de 8 níveis qualitativos que são as variedades
#'     de batatinha.}
#'
#' \item{producao}{Produção de batatinha, em ton ha\eqn{^{-1}}, nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatístitica
#'     Experimental (15th ed.). Piracicaba: FEALQ.
#' @examples
#'
#' library(lattice)
#'
#' xyplot(producao ~ variedade, groups = bloco, data = PimentelEg5.2,
#'        type = "b",
#'        ylab=expression(Produção~(t~ha^{-1})),
#'        xlab="Variedades de batatinha")
#'
NULL
