#' @name MingotiTb3.5
#' @title Dados relativos as marcas de coxinha de galinha
#'
#' @description Dados de 8 marcas de coxinha de galinha, avaliados em 4 
#'          atributos (sabor, aroma, qualidade da massa e qualidade do recheio) 
#'          avaliados por 5 julgadores numa escala de 1 a 5, quanto maior a nota melhor a classificação do atributo.
#'          Os dados de entrada da tabela referem-se à média das notas dos 5 julgadores, para cada marca e cada atributo.
#' 
#' @format Um \code{data.frame} com 8 observações e 5 variáveis, em que
#' 
#' \describe{
#'
#' \item{marca}{Identificação da marca.}
#' 
#' \item{sabor}{Média das notas dos juízes para o sabor da coxinha de galinha.}
#' 
#' \item{aroma}{Média das notas dos juízes para o aroma da coxinha de galinha.}
#' 
#' \item{massa}{Média das notas dos juízes para a qualidade da massa.}
#' 
#' \item{recheio}{Média das notas dos juízes para a qualidade do recheio.}
#' }
#'
#' @keywords coxinha qualidade
#' 
#' @source MINGOTI, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 42).
#' @examples
#'
#' data(MingotiTb3.5) 
#' 
#' library(car)
#' 
#' scatterplotMatrix(~ marca + sabor + aroma + massa + recheio, data = MingotiTb3.5, 
#'                     main="Dispersão das variáveis")
#'
NULL