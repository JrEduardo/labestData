#' @name VieiraPg57.1
#' @title Experimento em blocos casualizados
#' @description Experimento em um delineamento em 
#'      blocos casualizados que estudou o efeito de
#'      um fator de 3 níveis categóricos, com 5 blocos 
#'      em uma resposta com números inteiro.
#'
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator categórico 3 níveis..}
#'
#' \item{\code{bloc}}{Fator de 5 níveis, usado para controle local.}
#'
#' \item{\code{resp}}{Variável resposta em números inteiros.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S.(1999). 
#'     Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (pg 57 - Ex 3).
#'      
#' @examples
#'
#' data(VieiraPg57.1)
#' 
#' library(lattice)
#' 
#' xyplot(resp ~ trat, groups = bloc, 
#'       data = VieiraPg57.1,
#'       xlab = "Variedade",
#'       ylab = "Produção")   
#'       
#'
NULL