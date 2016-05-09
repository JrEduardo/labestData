#' @name CharnetEx2.10
#' 
#' @title Estudo do Efeito do Carbono na Resistência Elétrica
#' 
#' @description Estudo sobre o efeito do carbono contido, em fios de aço
#'     em resistência elétrica, na temperatura de 20ºC.
#'
#' @format Um \code{data.frame} com 2 colunas e 15 linhas.
#'
#' \describe{
#'
#' \item{\code{carb}}{Porcentagem de carbono nos fios de aço.}
#'
#' \item{\code{res}}{Resistência elétrica, mensurada em \eqn{\mu} ohms
#'     cm a 20ºC.}
#'
#' }
#'
#' @keywords RS
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Cap. 2, exer. 10, p. 47,
#'     cap. 3, exer. 7, p. 66, cap. 4, exer. 6, p. 84, cap. 6, exer. 8, 
#'     p. 146.)
#'
#' @examples
#'
#' data(CharnetEx2.10)
#'
#' plot(CharnetEx2.10)
#' abline(lm(res ~ carb, data = CharnetEx2.10))
#'
NULL
