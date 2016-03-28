#' @name RamosTb2.5
#' @title Frequência da resistência à ruptura de garrafas
#' @description Dados referente a frequência da força da
#'     resistência à  ruptura de 100 garrafas de 
#'     refrigerante de um litro.
#'
#' @format Um \code{data.frame} com 9 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{forca}}{Força da resistência.}
#'
#' \item{\code{freq}}{Frequência observada da resistência.}
#'
#' }
#' @keywords TODO
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 29).
#'      
#' @examples
#'
#' data(RamosTb2.5)
#'
#' plot(RamosTb2.5$forca, pch=20)
#'
NULL