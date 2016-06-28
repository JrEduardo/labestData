#' @name MingotiTb3.1
#' @title Receitas e patrim\enc{ô}{o}nio de empresas
#' @description Dados de 12 empresas sobre ganhos (bruto e líquido) e
#'     patrimônio acumulado num determinado período.
#' @format Um \code{data.frame} com 12 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{emp}}{Identificação da empresa.}
#'
#' \item{\code{gbt}}{Ganho bruto da empresa (em unidades monetárias).}
#'
#' \item{\code{glq}}{Ganho líquido da empresa (em unidades monetárias).}
#'
#' \item{\code{patr}}{Patrimônio acumulado (unidades monetárias).}
#'
#' }
#' @keywords TODO
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 42).
#' @examples
#'
#' library(car)
#'
#' data(MingotiTb3.1)
#'
#' scatterplotMatrix(~gbt + glq + patr,
#'                   data = MingotiTb3.1,
#'                   main = "Dispersão das variáveis")
#'
#'
NULL
