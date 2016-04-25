#' @name VieiraEx7.3
#' @title Exercício 7.3
#' @description Dados de um experimento inteiramente ao acoso com
#'     número diferente de repetições.
#' @format Um \code{data.frame} com 24 observações e 2 variáveis, em que
#'
#' \describe{
#' 
#' \item{\code{tratamento}}{Tratamento ao qual a variável foi submetida.}
#'
#' \item{\code{valor}}{Valor da variável.}
#'
#' }
#' @keywords TODO
#' @source Vieira, S.(1999). Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (Exercício 7.3 pág. 85).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraEx7.3)
#'
#' xyplot(valor ~ tratamento, data = VieiraEx7.3,
#'        ylab = "Valor",
#'        xlab = "Tratamento")
#'
NULL
