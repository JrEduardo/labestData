#' @name RamalhoEg4.3
#' @title Porcentagem de absorção de água de feijão.
#' @description Experimento conduzido na Universidade Federal de Lavras, 
#'     envolvendo a porcentagem de absorção de água de 10 linhares de 
#'     feijão com 3 repetições. O delineamento é inteiramente ao acaso.
#' @format data.frame com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linh}}{Número inteiro que representa a linhagem do feijão.}
#'
#' \item{\code{rept}}{Número inteiro que indica as repetições do experimento.}
#'
#' \item{\code{abs}}{Porcentagem de absorção de água.}
#'
#' }
#' @keywords DIC
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 56)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg4.3)
#' 
#' aggregate(abs ~ linh,  data = RamalhoEg4.3, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
