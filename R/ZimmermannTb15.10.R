#' @name ZimmermannTb15.10
#' @title Produção de grãos de arroz
#' @description Dados de produção de grãos em terras altas, em kg ha\eqn{^{-1}}.
#'     Este é um ensaio contendo apenas uma repetição de um fatorial fracionado
#'     correspondente a 1/5 de um \eqn{5^3}. Os fatores são N, P e K, mas as 
#'     suas quantidades em cada nível (de 1 a 5) não são especificadas. 
#' @format Um \code{data.frame} com 25 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{N}}{Indica a quantidade de Nitrogênio aplicada.}
#'
#' \item{\code{P}}{Indica a quantidade de Fósforo aplicada.}
#' 
#' \item{\code{K}}{Indica a quantidade de Potássio aplicada.}
#'
#' \item{\code{prod}}{Indica a produçao de grãos, kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords regressao
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 314)
#' @examples
#'
#' library(lattice)
#'   
#' data(ZimmermannTb15.10)
#'
#' xyplot(prod ~ N + P + K, data = ZimmermannTb15.10, 
#'        type=c("p","a"),
#'        xlab="Níveis de NPK", ylab="Produção de Grãos", 
#'        main="Dados Simulados")
#' 
#' aggregate(prod ~ N, data = ZimmermannTb15.10, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(prod ~ P, data = ZimmermannTb15.10, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(prod ~ K, data = ZimmermannTb15.10, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL