#' @name ManlyTb1.4
#' @title Cães pré-históricos da Tailândia
#'
#' @description Estudo em ancestrais de cães pré-históricos da Tailândia, 
#' através de medições da mandíbula com espécies disponíveis.
#'
#' @format Um \code{data.frame} com 7 grupos caninos e 6 variáveis.
#' 
#' \describe{
#'
#' \item {\code{grupo}} {Grupo canino}
#' 
#' \item {\code{largm}} {Largura da mandíbula (mm)}
#' 
#' \item {\code{altm}} {Altura da mandíbula abaixo do primeiro molar (mm).}
#'
#' \item {\code{comppm}} {Comprimento do primeiro molar (mm).}
#' 
#' \item {\code{largpm}} {Largura do primeiro molar (mm).}
#' 
#' \item {\code{compptm}} {Comprimento do primeiro ao terceiro molar (mm).}
#' 
#'  \item {\code{comppqm}} {Comprimento do primeiro ao quarto molar (mm).}
#' }
#'
#' @keywords Todo
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- uma introdução.
#'      Porto Alegre, RS: Bookman (pg 21)
#' @examples
#'
#' data(ManlyTb1.4)
#' 
#' pairs(~ grupo + largm + altm + comppm + largpm + comppt + comppq,
#'       data = ManlyTb1.4, 
#'       main="Gráfico de dispersão dos cães")
NULL


