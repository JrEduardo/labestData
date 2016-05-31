#' @name VieiraPg50.2
#' @title Calibração de Voltrímetros
#' @description Num laboratório são usados quatro voltímetros
#'     diferentes. Para verificar se estes estão igualmente calibrados,
#'     mediu-se a mesma força constante de 100 volts 5 vezes com cada
#'     voltímetro.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{voltim}}{Fator categórico de 4 níveis que representa o
#'     voltímetro usado.}
#'
#' \item{\code{voltagem}}{Voltagem obtida com os voltímetros na força
#'       constante de 100 volts.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S.(1999).  Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (pág. 50, Exercício 4).
#' @examples
#'
#' data(VieiraPg50.2)
#'
#' str(VieiraPg50.2)
#'
#' library(lattice)
#'
#' xyplot(voltagem ~ voltim, data = VieiraPg50.2,
#'        xlab = "Voltímetro",
#'        ylab = "Voltagem")
#'
NULL
