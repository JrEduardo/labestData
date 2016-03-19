#' @name RamalhoTb7.1
#' @title Volume de madeira por árvore
#' @description Pesquisa sobre avaliação de progênies de 
#'     \emph{Eucaliptus camaldulensis}, referente ao volume de madeira 
#'     por árvore, cujos dados foram obtidos pela V. \& M. Florestal 
#'     Ltda. Experimento realizado em blocos casualizados.
#' @format Um \code{data.frame} com 180 observações e 4 variáveis, em 
#'     que
#'
#' \describe{
#'
#' \item{\code{prog}}{Progênie de \emph{Eucaliptus camaldulensis}.}
#'
#' \item{\code{rept}}{Número inteiro que indica as repetições de medida 
#'     do volume de cada árvore.}
#'
#' \item{\code{plant}}{Inteiro que representa as árvores no 
#'     experimento.}
#'
#' \item{\code{vol}}{Volume de madeira por árvore, medido em 
#'     \eqn{m^3 x 10^4}}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 102).
#' @examples
#'
#' library(lattice)
#'
#' xyplot(vol ~ plant | rept, data = RamalhoTb7.1,
#'     jitter.x = TRUE, 
#'     xlab = "Árvore", 
#'     ylab = "Volume")
#'
NULL
