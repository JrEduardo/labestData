#' @name CharnetEx5.3
#'
#' @title Precis\enc{ã}{a}o de um Veloc\enc{í}{i}metro
#'
#' @description Medição da precisão de um velocímetro de locomotiva.
#'
#' @format Um \code{data.frame} com 2 colunas e 8 linhas.
#'
#' \describe{
#'
#' \item{\code{vr}}{Velocidade real, em km/h.}
#'
#' \item{\code{va}}{Velocidade anotada no velocímetro, em km/h.}
#'
#' }
#'
#' @keywords RS
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 5, exercício
#'     3, pág. 109)
#'
#' @examples
#'
#' data(CharnetEx5.3)
#'
#' plot(CharnetEx5.3)
#' abline(a = 0, b = 1)
#'
NULL
