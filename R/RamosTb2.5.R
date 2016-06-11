#' @name RamosTb2.5
#' @title Resistência à ruptura de garrafas
#' @description Distribuição de frequências para as 
#'     resistências à  ruptura de 100 garrafas de 
#'     refrigerante de um litro.
#'
#' @format Um \code{data.frame} com 9 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{forca}}{Resistência das garrafas.}
#'
#' \item{\code{freq}}{Frequências observadas para as resistências.}
#'
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 29).
#'      
#' @examples
#'
#' data(RamosTb2.5)
#'
#' barplot(RamosTb2.5$freq, names=RamosTb2.5$forca, 
#'       xlab = 'Resistência', ylab = 'Frequência')
#'
#'
NULL