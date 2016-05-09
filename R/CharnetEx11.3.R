#' @name CharnetEx11.3
#' 
#' @title Relação do Preço de Venda de Imóvel
#' 
#' @description Relação entre o valor de venda de imóveis de um mesmo
#'     bairro, observado a presença de piscina, tempo de construção, 
#'     metros quadrados e o número de quartos.
#'
#' @format Um \code{data.frame} com 5 colunas e 20 linhas.
#'
#' \describe{
#'
#' \item{\code{y}}{Preço de venda do imóvel, em reais.}
#' \item{\code{x1}}{Área, em m².}
#' \item{\code{x2}}{Tempo de construção, em anos.}
#' \item{\code{x3}}{Número de quartos.}
#' \item{\code{x4}}{Possuí piscina, fator (S ou N).}
#'
#' }
#'
#' @keywords TODO
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Cap. 11, exer. 3, p. 274)
#'
#' @examples
#'
#' data(CharnetEx11.3)
#'
#' plot(CharnetEx11.3)
#'
NULL