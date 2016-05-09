#' @name CharnetEx7.7
#' 
#' @title Consumo de Combustível e Potência do Motor
#' 
#' @description Relação entre o consumo de combustível (km/l) e a 
#'     potência do motor (HP) de duas marcas de carro (A e B).
#'
#' @format Um \code{data.frame} com 4 colunas e 20 linhas.
#'
#' \describe{
#'
#' \item{\code{marca}}{Marca do carro, "A" ou "B".}
#' 
#' \item{\code{cons}}{Consumo de combustível, em km/l.}
#'
#' \item{\code{pot}}{Potência do motor, em HP.}
#'
#' }
#'
#' @keywords TODO
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Cap. 7, exer. 7, p. 167,
#'     Cap 10, exerc. 6, p. 256.)
#'
#' @examples
#'
#' data(CharnetEx7.7)
#'
#' plot(CharnetEx7.7$cons, CharnetEx7.7$pot, col = CharnetEx7.7$marca)
#'
NULL