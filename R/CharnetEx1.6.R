#' @name CharnetEx1.6
#'
#' @title Pressão Sanguínea Sistólica
#'
#' @description Pressão sanguínea sistólica de um grupo de 16 pacientes
#'     de uma clínica.
#'
#' @format Um \code{vetor} numérico com 16 observações.
#'
#' @keywords amostra
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 1, exercício
#'     6, pág. 23)
#'
#' @examples
#'
#' data(CharnetEx1.6)
#'
#' (m <- mean(CharnetEx1.6))
#' (s <- sd(CharnetEx1.6))
#' fivenum(CharnetEx1.6)
#'
#' curve(dnorm(x, m, s),
#'       xlim = extendrange(CharnetEx1.6, f = 0.2),
#'       col = 4, lwd = 2)
#' hist(CharnetEx1.6, prob = TRUE, add = TRUE)
#' rug(CharnetEx1.6)
#'
NULL
