#' @name MingotiTb3.7
#' @title Dados de amostras de solo
#' @description Dados de 25 amostras de determinado tipo de solo. 
#'     Para cada amostra foram registradas as porcentagens de areia, sedimentos, 
#'     argila e a quantidade de material orgânico. 
#' @format Um \code{data.frame} com 25 observações e 5 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{amst}}{Identificação da amostra.}
#' 
#' \item{\code{areia}}{Porcentagem de areia.}
#' 
#' \item{\code{sed}}{Porcentagem de sedimentos.}
#' 
#' \item{\code{arg}}{Porcentagem de argila.}
#' 
#' \item{\code{morg}}{Quantidade de material orgânico.}
#' 
#' }
#'
#' @keywords AnaComp
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 73).
#' 
#' @examples
#'
#' data(MingotiTb3.7) 
#' 
#' library(car)
#' 
#' scatterplotMatrix(~ amst + areia + sed + arg + morg, 
#'     data = MingotiTb3.7, main = "Matriz de gráficos de dispersão")
#'                   
NULL