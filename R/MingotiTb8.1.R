#' @name MingotiTb8.1
#' @title Renda e o número de filhos
#' @description Dados relativos a 257 indivíduos classificados de acordo
#'     com a renda e número de filhos.
#' @format Um \code{data.frame} com 3 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{renda}}{Renda, medida em 3 categorias (menos de 2000,
#'      2000 a 5000 e 5000 ou mais), em unidades monetárias.}
#'
#' \item{\code{i0f}}{Indivíduos que não tem filhos (igual a zero
#'     filhos).}
#'
#' \item{\code{i1f}}{Indivíduos que tem 1 filho (igual a um filho).}
#'
#' \item{\code{i2f}}{Indivíduos que tem 2 filhos (igual a dois filhos).}
#'
#' \item{\code{m2f}}{Indivíduos que tem mais de 2 filhos (mais que dois
#'     filhos).}
#'
#' }
#' @keywords TODO
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 258).
#' @examples
#'
#' data(MingotiTb8.1)
#'
#' library(lattice)
#'
#' xyplot(i0f + i1f + i2f + m2f ~ renda,
#'        data = MingotiTb8.1,
#'        ylab = "Número de indivíduos",
#'        auto.key = TRUE)
#'
NULL
