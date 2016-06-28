#' @name CharnetEx2.10
#'
#' @title Estudo do Efeito do Carbono na Resist\enc{ê}{e}ncia El\enc{é}{e}trica
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
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 2, exercício
#'     10, pág. 47, Capítulo 3, exercício 7, pág. 66, Capítulo 4,
#'     exercício 6, pág. 84, Capítulo 6, exercício 8, pág. 146)
#'
#' @examples
#'
#' data(CharnetEx2.10)
#'
#' plot(CharnetEx2.10)
#' abline(lm(res ~ carb, data = CharnetEx2.10))
#'
NULL
