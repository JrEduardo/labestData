#' @name ManlyTb1.4
#' @title C\enc{ã}{a}es pr\enc{é}{e}-hist\enc{ó}{o}ricos da Tail\enc{â}{a}ndia
#'
#' @description Estudo em ancestrais de cães da Tailândia, 
#' através de medições das mandíbulas.
#'
#' @format Um \code{data.frame} com 7 grupos caninos e 6 variáveis. 
#' 
#' \describe{
#'
#' \item{\code{grup}}{Grupo canino}
#' 
#' \item{\code{largm}}{Largura da mandíbula (mm)}
#' 
#' \item{\code{altm}}{Altura da mandíbula abaixo do primeiro molar (mm).}
#'
#' \item{\code{comppm}}{Comprimento do primeiro molar (mm).}
#' 
#' \item{\code{largpm}}{Largura do primeiro molar (mm).}
#' 
#' \item{\code{comppt}}{Comprimento do primeiro ao terceiro molar (mm).}
#' 
#'  \item{\code{comppq}}{Comprimento do primeiro ao quarto molar (mm).}
#' }
#'
#' @keywords AnaClust
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- uma introdução.
#'      Porto Alegre, RS: Bookman (pg 21)
#' @examples
#'
#'
#' data(ManlyTb1.4)
#' 
#' pairs(~largm + altm + comppm + largpm + comppt + comppq,
#'       data = ManlyTb1.4, 
#'       main="Gráfico de dispersão para as medições da mandíbula")
NULL
