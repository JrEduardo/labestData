#' @name CharnetEx1.5
#'
#' @title Tempo de Duração do Intervalo para o Cafezinho
#'
#' @description Tempo de duração do intervalo para o cafezinho para uma
#'     amostra de 20 empregados de uma grande empresa.
#'
#' @format Um \code{vetor} numérico com 20 observações.
#'
#' @keywords amostra
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 1, exercício
#'     5, pág. 23)
#'
#' @examples
#'
#' data(CharnetEx1.5)
#'
#' (m <- mean(CharnetEx1.5))
#' (s <- sd(CharnetEx1.5))
#' fivenum(CharnetEx1.5)
#'
#' curve(dnorm(x, m, s),
#'       xlim = extendrange(CharnetEx1.5, f = 0.2),
#'       col = 4, lwd = 2)
#' hist(CharnetEx1.5, prob = TRUE, add = TRUE)
#' rug(CharnetEx1.5)
NULL
