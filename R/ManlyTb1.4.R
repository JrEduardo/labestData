#' @name ManlyTb1.4
#' @title Cães pré-históricos da Tailândia
#'
#' @description Estudo em ancestrais de cães pré-históricos da Tailândia, 
#' através de medições da mandíbula com espécies disponíveis.
#'
#' @format Um \code{data.frame} com 7 grupos caninos e 6 variáveis de mensuração.
#' 
#' \describe{
#'
#' \item {\code{grupo}} {Grupos caninos}
#' 
#' \item {\code{largm}} {largura da mandíbula (mm)}
#' 
#' \item {\code{altm}} {altura da mandíbula abaixo do primeiro molar (mm).}
#'
#' \item {\code{comppm}} {Comprimento do primeiro molar (mm).}
#' 
#' \item {\code{largpm}} {largura do primeiro molar (mm).}
#' 
#' \item {\code{compptm}} {comprimento do primeiro ao terceiro molar (mm).}
#' 
#'  \item {\code{comppqm}} {comprimento do primeiro ao quarto molar (mm).}
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


