#' @name PaulaEx1.13.21
#' @title Número de Octanas na Produção de Gasolina
#' @description Dados referentes à produção de gasolina numa determinada
#'     refinaria segundo três variáveis observadas durante o processo e
#'     uma quarta variável que é uma combinação das três primeiras. A
#'     variável de interesse é o número de octanas da gasolina
#'     produzida.
#' @format Um \code{data.frame} com 82 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{x1}}{Variável não nomeada. Imagina-se que se tenha
#'     relação com o número de octanas da gasolina.}
#' 
#' \item{\code{x2}}{Variável não nomeada. Imagina-se que se tenha
#'     relação com o número de octanas da gasolina.}
#'
#' \item{\code{x3}}{Variável não nomeada. Imagina-se que se tenha
#'     relação com o número de octanas da gasolina.}
#' 
#' \item{\code{x4}}{Valores de uma combinação (não informada) das
#'     variável \code{x1}, \code{x2} e \code{x3}.}
#' 
#' \item{\code{nocta}}{Número de octanas da gasolina produzida.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.21,
#'     pág. 110)
#' @examples
#' data(PaulaEx1.13.21)
#' 
#' str(PaulaEx1.13.21)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.21,
#'       type = c("p", "g", "smooth"),
#'       col.line = 1)
#'
NULL
