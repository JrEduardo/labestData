#' @name RamalhoEx4.1
#' @title Comprimento de conídios do \emph{Colletotrichum lindemuthianum}
#' @description Experimento para medir o comprimento de conídios do
#'     fungo \emph{Colletotrichum lindemuthianum}. Experimento 
#'     inteiramente casualizado incompleto.
#' @format data.frame com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{med}{Medições do cumprimento feitas em uma mesma lâmina 
#'     (repetições).}
#'
#' \item{isol}{Isolados do fungo.}
#'
#' \item{comp}{Comprimento de conídios medidos em \eqn{\mu m.}}
#'
#' }
#' @keywords DIC comprimento
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 66)
#' @examples
#'
#' library(lattice)
#' 
#' data(RamalhoEx4.1)
#' 
#' xyplot(comp ~ med|as.factor(isol), data = RamalhoEx4.1, 
#'        xlab = "Repetições", 
#'        ylab = "Comprimento")
#' 
NULL
