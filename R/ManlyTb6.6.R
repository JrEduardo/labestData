#' @name ManlyTb6.6
#' @title Taças de cerâmicas pré-históricas
#'
#' @description Dimensões de 25 taças de cerâmicas escavadas de lugares pré-histórico 
#' na Tailândia.
#'
#' @format Um \code{data.frame} com 25 registros em 5 variáveis.
#' 
#' \describe{
#'
#' A figura apresentada descreve as cinco variáveis, correspondentes às
#' dimensões das taças.
#' 
#' \if{html}{\figure{ManlyTb6.6.jpg}{options: width="250px"}}
#' \if{latex}{\figure{ManlyTb6.6.jpg}{options: width=1.75in}} 
#'}
#' @keywords AnaComp
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- uma introdução.
#'      Porto Alegre, RS: Bookman (pg 101)
#' @examples
#'
#' data(ManlyTb6.6)
#'
#' pairs(~ x1 + x2 + x3 + x4 + x5,
#'       data = ManlyTb6.6, 
#'       main="Matriz de diapersão para as variáveis de medida das taças")
NULL