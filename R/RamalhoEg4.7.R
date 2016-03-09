#' @name RamalhoEg4.7
#' @title Produção de grãos de arroz.
#' @description Experimento da produção de grãos na avaliação de 
#'     cultivares de arroz, conduzido em Lavras/MG. Delineamento em 
#'     blocos casualizados.
#' @format data.frame com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{cult}{Fator de 10 níveis de cultivares de arroz.}
#'
#' \item{bloco}{Fator de 3 níveis do experimento.}
#'
#' \item{prod}{Produção de grãos de arroz, medidos kg/ha nas unidades 
#'     experimentais.}
#'
#' }
#' @keywords arroz produção
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 62)
#' @examples
#'
#' library(lattice)
#' 
#' data(RamalhoEg4.7)
#' 
#' xyplot(prod ~ cult|as.factor(bloco), data = RamalhoEg4.7, 
#'        xlab = "Cultivares", 
#'        ylab = "Produção de grãos")
#'        
NULL
