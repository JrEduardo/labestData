#' @name RamosTb5.8
#' @title Taxa de defeitos na fabricação de copos de cristal
#' @description Número de não conformidades em um processo de fabricação
#'     de copos de cristal, com amostras de tamanhos diferentes.
#'
#' @format Um \code{data.frame} com 26 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{amostra}}{Número da amostra.}
#'
#' \item{\code{tamamostra}}{Número de unidades amostradas.}
#'
#' \item{\code{naoconf}}{Número de não conformidades na amostra.}
#'     
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 96).
#'      
#' @examples
#'
#' data(RamosTb5.8)
#'
#' library(qcc)
#'
#' qcc(RamosTb5.8$naoconf, sizes = RamosTb5.8$tamamostra, type = "u", 
#'      xlab = "Amostra", ylab = "Taxa de não conformidades", title = "")
#'
NULL