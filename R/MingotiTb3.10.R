#' @name MingotiTb3.10
#' @title Dados relativos aos pesos de unidades empacotadas 
#' @description Dados de 10 unidades (produtos embalados) selecionadas 
#'     aleatoriamente de cada uma de duas máquinas de empacotamento
#'     de determinada empresa, durante o período de produção. 
#'     Foram registrados os pesos das 20 unidades. 
#'      
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{maq}}{Identificação da máquina (A ou B).}
#'  
#' \item{\code{peso}}{Peso das 20 unidades coletadas das duas máquinas 
#'     de empacotamento (gramas).}
#' 
#' }
#'
#' @keywords AnaComp
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 75).
#' 
#' @examples
#'
#' data(MingotiTb3.10) 
#' 
#' library(lattice)
#'
#' bwplot(peso~maq, data = MingotiTb3.10, xlab = "Máquina")
#'
NULL