#' @name RamalhoEx4.1
#' @title Comprimento de con\enc{í}{i}dios de \emph{Colletotrichum
#'     lindemuthianum}
#' @description Experimento para avaliar o comprimento de conídios de
#'     diferentes isolados do fungo \emph{Colletotrichum
#'     lindemuthianum}. Experimento inteiramente casualizado com número
#'     desigual de observações.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{coni}}{Identifica o conídio medido na lâmina de cada
#'     isolado (repetições).}
#'
#' \item{\code{isol}}{Fator que identifica os isolados do fungo
#'     \emph{Colletotrichum lindemuthianum}}
#'
#' \item{\code{comp}}{Comprimento de conídios medidos em \eqn{\mu m.}}
#'
#' }
#' @keywords DIC desbalanceado
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Exercício 4.1, pág 66)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx4.1)
#'
#' xyplot(comp ~ med | isol, data = RamalhoEx4.1,
#'        xlab = "Repetições",
#'        ylab = "Comprimento")
#'
NULL
