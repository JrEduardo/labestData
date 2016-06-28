#' @name PaulaEx1.13.25
#' @title Venda de Im\enc{ó}{o}veis em Eugene, Estatdos Unidos
#' @description Dados de um estudo cujo objetivo foi tentar prever o
#'     preço de venda de um imóvel dada sua área total. Foram 50 imóveis
#'     da região de Eugene, Estados Unidos com valores de área e preço
#'     de venda registrados.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis.
#'     \describe{
#' 
#' \item{\code{area}}{Área total do imóvel, em pés quadrados.}
#' 
#' \item{\code{preco}}{Preço de venda do imóvel, em mil dólares.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.25,
#'     pág. 112)
#' @examples
#' data(PaulaEx1.13.25)
#' 
#' str(PaulaEx1.13.25)
#' 
#' library(lattice)
#' xyplot(preco ~ area, data = PaulaEx1.13.25,
#'        type = c("p", "smooth", "g"))
#'
NULL
