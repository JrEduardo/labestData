#' @name RamosTb2.7
#' @title Processo de fundição de magnésio
#' @description Dados referente a um processo de fundição
#'     de magnésio, compreendendo a recuperação do metal 
#'     e os valores do fluxo de regeneração adicionada.
#' @format Um \code{data.frame} com 7 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fluxo}}{Fluxo de recuperação do metal no processo
#'     de fundição.}
#'
#' \item{\code{recupe}}{Recuperação do metal.}
#'
#' }
#' @keywords CEQ
#' @source Ramos, E. M. L. S., et al.(2013). 
#'     Controle Estatístico da Qualidade (1th ed.). 
#'     Porto Alegre, RS: Bookman. (pág. 30).
#' @examples
#'
#' data(RamosTb2.7)
#'
#' library(lattice)
#'
#' xyplot(recupe ~ fluxo, pch = 20,
#'        data = RamosTb2.7, type = c( "g", "p"))
#'
NULL
