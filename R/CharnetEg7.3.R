#' @name CharnetEg7.3
#'
#' @title Rela\enc{çã}{ca}o entre Sal\enc{á}{a}rio, Tempo de Experi\enc{ê}{e}ncia e Sexo
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
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 7, exemplo 3,
#'     pág. 152)
#'
#' @examples
#'
#' data(CharnetEg7.3)
#'
#' with(CharnetEg7.3, plot(salario, exp, col = sexo))
#'
NULL
