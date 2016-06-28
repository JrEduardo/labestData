#' @name CharnetEx4.1
#'
#' @title Valores de uma Vari\enc{á}{a}vel Aleat\enc{ó}{o}ria Cont\enc{í}{i}nua
#'
#' @description Valores de uma variável aleatória X contínua.
#'
#' @format Um vetor numérico com 20 elementos.
#'
#' @keywords amostra
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 4, exercício 1,
#'     pág. 82)
#'
#' @examples
#'
#' data(CharnetEx4.1)
#'
#' hist(CharnetEx4.1, prob = TRUE)
#' lines(density(CharnetEx4.1), col = 4)
#' rug(CharnetEx4.1)
#'
#' # Considerando o exercício proposto em Charnet, 2008
#' plot(CharnetEx4.1^3 ~ CharnetEx4.1,
#'      ylab = expression(Y==X^3),
#'      xlab = "X")
#'
NULL
