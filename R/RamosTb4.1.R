#' @name RamosTb4.1
#' @title Temperatura de eletrodos de carbono 
#' @description Conjunto de dados referente às temperaturas de eletrodos  
#'     de carbono, com 25 amostras de tamanho 8, em um processo 
#'     de fabricação de alumínio.
#'
#' @format Um \code{data.frame} com 75 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{temperat}}{Temperatura dos eletrodos de carbono (em °C ).}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 56).
#'      
#' @examples
#'
#' data(RamosTb4.1)
#'
#' library(qcc)
#'
#' obj <- qcc.groups(RamosTb4.1$temperat, RamosTb4.1$amostra)
#'
#' qcc(obj, type = "xbar", nsigmas = 3, xlab = "Amostra", ylab = 
#'      "Temperatura média", title = " ")
#'
NULL
