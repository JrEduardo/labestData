#' @name RamosTb5.2
#' @title Itens não conformes no processo produtivo de ovos de galinha
#' @description Número de itens não conformes de um processo  
#'     produtivo de ovos de galinha, com 15 amostras e subamostras de 
#'     tamanhos diferentes. 
#'
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{subamostra}}{Número de subamostras conforme a amostra.}
#'
#' \item{\code{naoconf}}{Número de unidades não conformes na amostra.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 79).
#'      
#' @examples
#' 
#' data(RamosTb5.2)
#' 
#' library(qcc)
#'
#' obj <- qcc.groups(RamosTb5.2$naoconf, RamosTb5.2$amostra)
#' 
#' qcc(obj, type = "c", nsigmas = 3)
#'
NULL