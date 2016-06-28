#' @name RamalhoTb13.15
#' @title Produ\enc{çã}{ca}o de Ramas de Clones de Mandioca
#' @description Experimento envolvendo a produção de ramas (parte aérea)
#'     de 20 genótipos parentais (clones) de mandioca e de seus
#'     respectivos decendentes.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator categórico de 20 níveis que indica o clone
#'     de mandioca.}
#'
#' \item{\code{mae}}{Produção de ramas da planta "mãe".}
#'
#' \item{\code{filha}}{Produção de ramas da planta "filha".}
#'
#' }
#' @keywords COV RS
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.15, pág. 252)
#' @examples
#'
#' data(RamalhoTb13.15)
#'
#' str(RamalhoTb13.15)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' xyplot(filha ~ mae, data = RamalhoTb13.15,
#'        type = c("p", "smooth"), grid = TRUE, aspect = "iso",
#'        xlab = "Produção de ramas na planta mãe",
#'        ylab = "Produção de ramas na planta filha")
#'     layer(panel.abline(a = 0, b = 1, lty = 2))
#'
NULL
