#' @name CharnetEx7.7
#'
#' @title Relação entre Consumo de Combustível e Potência do Motor
#'
#' @description Relação entre o consumo de combustível (km/l) e a
#'     potência do motor (HP) de duas marcas de carro (A e B).
#'
#' @format Um \code{data.frame} com 4 colunas e 20 linhas.
#'
#' \describe{
#'
#' \item{\code{marca}}{Marca do carro, fator com dois níveis \code{A} ou
#'     \code{B}.}
#'
#' \item{\code{cons}}{Consumo de combustível, em km/l.}
#'
#' \item{\code{pot}}{Potência do motor, em HP.}
#'
#' }
#'
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 7, exercício
#'     7, pág. 167, Capítulo 10, exercício 6, pág. 256.)
#'
#' @examples
#'
#' data(CharnetEx7.7)
#'
#' with(CharnetEx7.7, plot(cons, pot, col = marca))
#'
NULL
