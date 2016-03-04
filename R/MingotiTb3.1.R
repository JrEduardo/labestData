#' @name MingotiTb3.1
#' @title Dados relativos às empresas
#'
#' @description Dados de 12 empresas sobre ganhos (bruto e líquido) e patrimônio acumulado num determinado período.
#' 
#' @format Um \code{data.frame} com 12 observações e 4 variáveis, em que
#' 
#' \describe{
#'
#' \item{emp}{Identificação da empresa.}
#' 
#' \item{gbt}{Ganho bruto da empresa (em unidades monetárias).}
#' 
#' \item{glq}{Ganho líquido da empresa (em unidades monetárias).}
#' 
#' \item{patr}{Patrimônio acumulado (unidades monetárias).}
#' }
#'
#' @keywords empresas ganhos
#' 
#' @source MINGOTI, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 42).
#' @examples
#'
#' data(MingotiTb3.1) 
#' 
#' library(car)
#' 
#' scatterplotMatrix(~ emp + gbt + glq + patr, data = MingotiTb3.1, 
#'                 main="Dispersão das variáveis")
#' 
#'
NULL