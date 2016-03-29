#' @name CharnetEx2.14
#' 
#' @title Produto Interno Bruto Trimestral do Brasil
#' 
#' @description Comparação do Produto Interno Bruto (PIB) trimestral do 
#'     Brasil em 8 anos.
#'
#' @format Um \code{data.frame} com 2 colunas e 32 linhas.
#'
#' \describe{
#'
#' \item{\code{tri}}{Ano e Trimestre de referência.}
#'
#' \item{\code{pib}}{PIB em bilhões de dólares.}
#' 
#' }
#'
#' @keywords TODO
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Capítulo 2, exercício 14,
#'     página 49)
#'
#' @examples
#'
#' data(CharnetEx2.14)
#'
#' periodo <- 1:32
#' rownames(CharnetEx2.14) <- CharnetEx2.14$tri
#' CharnetEx2.14$tri <- periodo
#' plot(CharnetEx2.14)
#'
NULL