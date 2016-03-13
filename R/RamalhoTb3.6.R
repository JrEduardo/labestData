#' @name RamalhoTb3.6
#' @title Largura de ascos \emph{Colletrotrichum lindemuthianum}
#' @description Experimento referente a largura dos ascos de três
#'     isolados do fungo \emph{Colletotrichum lindemuthianum}.
#' @format data.frame com 90 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{amostra}{Número identificador da amostra.}
#'
#' \item{isol}{Isolados do fungo (A, B e C).}
#'
#' \item{larg}{Largura dos ascos dos isolados (TODO unidade de medida).}
#'
#' }
#' @keyword NULL
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pg 48)
#'
#' @examples
#'
#' data(RamalhoTb3.6)
#'
#' aggregate(larg ~ isol,  data = RamalhoTb3.6,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
