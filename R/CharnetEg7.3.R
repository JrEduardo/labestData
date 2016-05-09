#' @name CharnetEg7.3
#' 
#' @title Relação entre Salário, Tempo de Experiência e Sexo
#' 
#' @description Dados de salário, tempo de experiência e sexo dos 
#'     gerentes de agências bancárias de um grande banco.
#'
#' @format Um \code{data.frame} com 2 colunas e 15 linhas.
#'
#' \describe{
#'
#' \item{\code{salario}}{Salário, em mil reais.}
#' 
#' \item{\code{exp}}{Tempo de experiência, em anos completos.}
#'
#' \item{\code{sexo}}{Sexo do gerente de agência bancária.}
#'
#' }
#'
#' @keywords TODO
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Cap. 7, exem. 3, p. 152)
#'
#' @examples
#'
#' data(CharnetEg7.3)
#'
#' plot(CharnetEg7.3$salario, CharnetEg7.3$exp, col=CharnetEg7.3$sexo)
#'
NULL