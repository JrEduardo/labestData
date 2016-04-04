#' @name RamosTb3.1
#' @title Teor de flúor de um processo químico
#' @description Conjunto de dados do teor de flúor com 15 
#'     amostras de tamanho 5 em um processo químico.
#'
#' @format Um \code{data.frame} com 75 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{subamostra}}{Número da subamostra conforme a amostra.}
#'
#' \item{\code{fluor}}{Teor de flúor.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 38).
#'      
#' @examples
#'
#' data(RamosTb3.1)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosTb3.1$fluor, RamosTb3.1$amostra)
#'
#' qcc(obj, type = "xbar", nsigmas = 3)
#'
NULL