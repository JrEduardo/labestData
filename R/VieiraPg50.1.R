#' @name VieiraPg50.1
#' @title Experimento inteiramente casualizado
#' @description Experimento inteiramente casualizado com 
#'      5 tratamentos e resposta em inteiro.
#'
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de 5 níveis de tratamento.}
#'
#' \item{\code{resp}}{Resposta em números inteiros.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S.(1999). 
#'     Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (pg 50 - Ex 2).
#'      
#' @examples
#'
#' data(VieiraPg50.1)
#' 
#' library(lattice)
#' 
#' xyplot(resp ~ trat, data = VieiraPg50.1,
#'        xlab = "Tratamento",
#'        ylab = "Resposta")
#'
NULL