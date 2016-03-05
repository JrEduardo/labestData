#' @name MingotiTb8.1
#' @title Renda e o número de filhos 
#' 
#' @description Dados relativos a 257 indivíduos classificados de 
#'     acordo pela renda e número de filhos.
#'       
#' @format data.frame com 3 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{renda}{Renda, medida em 3 categorias (menos de 2000, 2000 a 
#'      5000 e 5000 ou mais), em unidades monetárias.}
#'
#' \item{f0}{Indivíduos que não tem filhos.}
#'
#' \item{f1}{Indivíduos que tem 1 filho.}
#'
#' \item{f2}{Indivíduos que tem 2 filhos.}
#' 
#' \item{fmaior}{Indivíduos que tem mais de 2 filhos.}
#' }
#' @keywords Renda e número de filhos
#' 
#' @source MINGOTI, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 258).
#'     
#' @examples
#' 
#'data(MingotiTb8.1)
#' 
#'library(lattice)
#'
#' xyplot(f0 + f1 + f2 + fmaior ~ renda, 
#'        data = MingotiTb8.1,
#'        ylab="Número de indivíduos",
#'        auto.key = TRUE)    
#'
NULL
