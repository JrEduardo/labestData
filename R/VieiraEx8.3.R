#' @name VieiraEx8.3
#' @title Exercício 8.3
#' @description Dados advindos de um experimento ao acado com repetições.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator com 4 níveis, referentes aos tratamentos.}
#'
#' \item{\code{bloco}}{Fator com 2 níveis, referentes aos blocos.}
#' 
#' \item{\code{valor}}{Valor de cada observação.}
#'
#' }
#' @keywords TODO
#' @source Vieira, S.(1999). Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (Exercício 8.3 pág. 102).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraEx8.3)
#'
#' xyplot(valor ~ trat, group = bloco, data = VieiraEx8.3,
#'        type = "b",
#'        ylab = "Valor",
#'        xlab = "Tratamento")
#'
NULL