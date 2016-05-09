#' @name CharnetEx8.4
#' 
#' @title Peças Defeituosas por Produção Média e Tempo de Reparo
#' 
#' @description Relação da quantidade de peças defeituosas por produção
#'     média e tempo decorrido desde o último reparo da máquina.
#'
#' @format Um \code{data.frame} com 3 colunas e 15 linhas.
#'
#' \describe{
#'
#' \item{\code{y}}{Itens produzidos com defeito num dia, em peças.}
#' 
#' \item{\code{x1}}{Produção média por hora, em peças.}
#'
#' \item{\code{x2}}{Tempo, em semanas, decorrido do último reparo da 
#'     máquina.}
#'
#' }
#'
#' @keywords TODO
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Cap. 8, exer. 4, p. 196,
#'     cap. 9, exer. 7, p. 230.)
#'
#' @examples
#'
#' data(CharnetEx8.4)
#'
#' plot(CharnetEx8.4)
#'
NULL