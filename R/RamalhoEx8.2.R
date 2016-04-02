#' @name RamalhoEx8.2
#' @title Produção de Amêndoas
#' @description Experimento da produção de amêndoas obtidos da avaliação 
#'     de clones de caju, em 5 colheitas. Delineamento em blocos 
#'     casualizados.
#' @format Um \code{data.frame} com 200 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator de 10 níveis que indica os clones de caju.}
#'
#' \item{\code{colh}}{Fator de 5 níveis que representa os clones de caju 
#'     em cada colheita.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis do experimento, usado para 
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de clones de caju, medido em g/planta nas 
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.2, pg 133)
#' @examples
#'
#' data(RamalhoEx8.2)
#' 
#' str(RamalhoEx8.2)
#' 
#' library(lattice)
#' 
#' xyplot(prod ~ clone | bloc, data = RamalhoEx8.2,
#'        jitter.x = TRUE,
#'        xlab = "Clone",
#'        ylab = "Produção")
#'
NULL