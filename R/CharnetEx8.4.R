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
#' \item{\code{nitens}}{Itens produzidos com defeito num dia, em peças.}
#'
#' \item{\code{prod}}{Produção média por hora, em peças.}
#'
#' \item{\code{tempo}}{Tempo, em semanas, decorrido do último reparo da
#'     máquina.}
#'
#' }
#'
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 8, exercício
#'     4, pág. 196, Capítulo 9, exercício 7, pág. 230)
#'
#' @examples
#'
#' data(CharnetEx8.4)
#'
#' plot(CharnetEx8.4)
#'
NULL
