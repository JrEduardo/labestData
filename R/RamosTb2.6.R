#' @name RamosTb2.6
#' @title Frequência da resistência à ruptura de garrafas
#' @description Dados referente a frequência da força da
#'     resistência à ruptura e peso da garrafa.
#'
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{num}}{Número da amostra.}
#'
#' \item{\code{forca}}{Força da resistência à ruptura.}
#'
#' \item{\code{peso}}{Peso da garrafa em gramas.}
#'
#' }
#' @keywords TODO
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pg 30).
#'      
#' @examples
#'
#' data(RamosTb2.6)
#'
#' library (lattice)
#'
#' xyplot(forca ~ peso ,pch=20,
#'       RamosTb2.6,type =c( "g","a", "p"))
#'
NULL