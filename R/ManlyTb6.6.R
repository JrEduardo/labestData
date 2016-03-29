#' @name ManlyTb6.6
#' @title Taças de cerâmicas pré-históricas
#'
#' @description 25 taças de cerâmicas escavadas de lugares pré-histórico na Tailândia.
#'
#' @format Um \code{data.frame} com 25 registros em 5 variáveis.
#' 
#' \describe{
#'
#' Na figura abaixo é exposto as descrições da variáveis perantes as medidas da taça.
#' 
#' \if{html}{\figure{ManlyTb6.6.jpg}{options: width="250px"}}
#' \if{latex}{\figure{ManlyTb6.6.jpg}{options: width=1.75in}} 
#'}
#' @keywords CP
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- uma introdução.
#'      Porto Alegre, RS: Bookman (pg 101)
#' @examples
#'
#' data(ManlyTb6.6)
#'
#' pairs(~ x1 + x2 + x3 + x4 + x5,
#'       data = ManlyTb6.6, 
#'       main="Matriz das variáveis de medida das taças")

NULL