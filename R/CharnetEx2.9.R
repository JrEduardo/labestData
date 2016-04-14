#' @name CharnetEx2.9
#' 
#' @title Notas de Candidatos ao Vestibular
#' 
#' @description Notas de 9 candidatos ao vestibular nas provas de
#'     Matemática e Física.
#'
#' @format Um \code{data.frame} com 2 colunas e 9 linhas.
#'
#' \describe{
#'
#' \item{\code{prova}}{Área da prova no vestibular.}
#'
#' \item{\code{nota}}{Nota obtida no teste, em escala de 0 a 100.}
#'
#' }
#'
#' @keywords RS
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Capítulo 2, exercício 9,
#'     página 47)
#'
#' @examples
#'
#' data(CharnetEx2.9)
#'
#' plot(CharnetEx2.9)
#'
#' # Dados no formato largo (wide) para visualização dos pares
#' data.wide <- unstack(CharnetEx2.9, form = nota ~ prova)
#'
#' plot(data.wide)
#' abline(a = 0, b = 1)
#'
NULL
