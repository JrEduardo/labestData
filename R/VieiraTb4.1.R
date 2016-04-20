#' @name VieiraTb4.1
#' @title Produção de milho segundo a variedade
#' @description Experimento da produção de milho em kg/100 m\eqn{^{-2}}) 
#'     segundo 4 tipos de variedades de milho em um experimento
#'     inteiramente casualizado.
#'
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de 4 níveis de variedade de milho.}
#'
#' \item{\code{prod}}{Produção de milho, medidos kg/100 m\eqn{^{2}}) 
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S.(1999). 
#'     Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (pg 44).
#'      
#' @examples
#'
#' data(VieiraTb4.1)
#' 
#' library(lattice)
#' xyplot(prod ~ varied, data = VieiraTb4.1,
#'       xlab = "Variedades",
#'       ylab = "Produção de milho")
#'
NULL