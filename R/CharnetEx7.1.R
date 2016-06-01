#' @name CharnetEx7.1
#' 
#' @title Efeito da Radiação ao Ozônio em Sementes de Soja
#' 
#' @description Efeito da radiação solar em dois níveis de ozônio e
#'     impacto nos pesos de sementes de soja.
#'
#' @format Um \code{data.frame} com 3 colunas e 12 linhas.
#'
#' \describe{
#'
#' \item{\code{n}}{Nível de ozônio, fator com níveis \code{a} ou
#'     \code{b}.}
#'
#' \item{\code{rad}}{Quantidade de radiação solar aplicada, unidade de
#'     medida não informada.}
#' 
#' \item{\code{peso}}{Peso das sementes de soja, unidade de medida não
#'     informada.}
#'
#' }
#'
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Cap. 7, exer. 1, p. 163,
#'     Cap. 10, exer. 1, p. 253)
#'
#' @examples
#'
#' data(CharnetEx7.1)
#'
#' with(CharnetEx7.1, plot(peso, rad, col = n))
#'
NULL
