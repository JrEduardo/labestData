#' @name RamalhoEx13.2
#' @title Peso de Espigas de Cultivares Milho
#' @description Experimento que avaliou a produção de espigas de
#'     cultivares de milho, em delineamento de blocos casualizados. O
#'     número de plantas por parcela foi medido é uma covariável para o
#'     peso final de espigas por parcela.
#' @format Um \code{data.frame} com 24 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico de 8 níveis que indica a cultivar
#'     de milho.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis que são os blocos do
#'     experimento, utilizado para fazer controle local.}
#'
#' \item{\code{plant}}{Número de plantas por parcela.}
#'
#' \item{\code{peso}}{Peso de espigas despalhadas.}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 13.2, pág. 256)
#' @examples
#'
#' data(RamalhoEx13.2)
#'
#' str(RamalhoEx13.2)
#'
#' library(lattice)
#'
#' cex <- with(RamalhoEx13.2, {
#'     x <- plant - min(plant)
#'     x <- x/max(x)
#'     0.5 + 1.3 * x
#' })
#'
#' xyplot(peso ~ cult, groups = bloc, data = RamalhoEx13.2,
#'        type = "o", cex = cex,
#'        ylab = "Peso de espigas despalhadas",
#'        xlab = "Cultivares de milho")
#'
#' xyplot(peso ~ plant, groups = bloc, data = RamalhoEx13.2,
#'        auto.key = list(columns = 3, title = "Cultivar",
#'                        cex.title = 1.1),
#'        xlab = "Peso de espigas",
#'        ylab = "Plantas por parcela")
#'
NULL
