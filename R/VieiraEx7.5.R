#' @name VieiraEx7.5
#' @title Exercício 7.5
#' @description Dados de um experimento inteiramente ao acoso com
#'     número diferente de repetições.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#' 
#' \item{\code{bloco}}{Bloco ao qual a variável pertence.}
#' 
#' \item{\code{tratamento}}{Tratamento ao qual a variável foi submetida.}
#'
#' \item{\code{valor}}{Valor da variável.}
#'
#' }
#' @keywords TODO
#' @source Vieira, S.(1999). Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (Exercício 7.5 pág. 85).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraEx7.5)
#'
#' xyplot(valor ~ tratamento, group = bloco, data = VieiraEx7.5,
#'        ylab = "Valor",
#'        xlab = "Tratamento")
#'
NULL
