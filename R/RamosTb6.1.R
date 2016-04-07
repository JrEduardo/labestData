#' @name RamosTb6.1
#' @title Densidade aparente de uma processo de eletrodos
#' @description Dados da densidade aparente de um processo de produtivo  
#'     de eletrodos de carbono. 
#'
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{densi}}{Densidade aparente em g/cm^{3} do eletrodo.}
#'  
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 106).
#'      
#' @examples
#'
#' data(RamosTb6.1)
#'
#' library(qcc)
#'
#' qcc(RamosTb6.1$densi, type = "xbar.one", 
#'      std.dev = "SD", nsigmas = 3)
#'
NULL