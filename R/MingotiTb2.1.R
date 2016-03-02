#' @name MingotiTb2.1
#' @title Rochas de uma determinada região
#' @description Dados relativos a uma amostra de 12 rochas de uma certa
#'          região no qual tem as porcentagens de quartzo, feldspato e 
#'          um índice que mede cor para cada uma das rochas.
#' @format data.frame com 12 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{rocha}{Número da rocha amostrada.}
#'
#' \item{qrtz}{Porcentagem de quartzo.}
#'
#' \item{fdsp}{Porcentagem de feldspato.}
#'
#' \item{cor}{Índice que mede a cor.}
#' }
#' @keywords Porcentagem rocha
#' @source MINGOTI, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 42).
#' @examples
#' 
#' data(MingotiTb2.1)
#' 
#' pairs(~ qrtz + cor + fdsp,data=MingotiTb2.1, 
#'       main="Dispersão das três variáveis")
#'
NULL
