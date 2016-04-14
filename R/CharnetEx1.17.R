#' @name CharnetEx1.17
#' 
#' @title Dados Genéricos para Regressão Linear Simples
#' 
#' @description Dois conjuntos de valores X e Y utilizados para
#'     para exemplificação de regressão linear simples.
#'
#' @format Um \code{data.frame} com 3 colunas e 45 linhas.
#'
#' \describe{
#'
#'     \item{\code{conj}}{Fator que indica a qual conjunto a observação
#'     pertence.}
#'
#'     \item{\code{x}}{Variável independente, sem interpretação.}
#'
#'     \item{\code{y}}{Variável dependente, sem interpretação.}
#'
#' }
#'
#' @details Este conjunto de dados agrupa dados onde pressupõe-se que
#'     sejam de populações distintas. Portanto ao utilizá-lo separe-o
#'     com base na variável \code{conj}.
#'
#' @keywords RS
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Capítulo 1, exercício 17,
#'     página 25)
#'
#' @examples
#'
#' data(CharnetEx1.17)
#'
#' library(ggplot2)
#'
#' ggplot(CharnetEx1.17, aes(x = x, y = y)) +
#'     geom_point() +
#'     facet_grid(~conj, scales = "free_x") +
#'     stat_smooth(method = "lm")
#' 
NULL
