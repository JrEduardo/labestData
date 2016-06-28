#' @name MingotiTb2.2
#' @title Notas de estudantes em tr\enc{ê}{e}s provas
#' @description Notas obtidas em uma turma de estudantes em três provas
#'     de uma determinada disciplina.
#' @format Um \code{data.frame} com 19 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{est}}{Identificação do estudante.}
#'
#' \item{\code{p1}}{Nota obtida na primeira prova variando de 0 a 25.}
#'
#' \item{\code{p2}}{Nota obtida na segunda prova variando de 0 a 25.}
#'
#' \item{\code{p3}}{Nota obtida na terceira prova variando de 0 a 25.}
#'
#' }
#' @keywords TODO
#' @source Mingoti, S. A. (2005). Análise de dados através de métodos de
#'     estatística multivariada: uma abordagem aplicada.  Belo
#'     Horizonte, MG: Editora UFMG. (pg 52).
#' @examples
#'
#' data(MingotiTb2.2)
#'
#' pairs(~ p1 + p2 + p3,
#'       data = MingotiTb2.2,
#'       main = "Matriz de dispersão das 4 notas")
#'
NULL
