#' @name PaulaEx1.13.22
#' @title Vendas de Imóveis
#' @description Dados relativos a uma amostra de 27 imóveis vendidos. Os
#'     resgistros visam identificar as características que influenciam
#'     no preço de vendo de um imóvel.
#' @format Um \code{data.frame} com 27 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{impos}}{Valor cobrado de imposto, em 100 dólares.}
#' 
#' \item{\code{areat}}{Área do terreno, em 1000 pés quadrados.}
#' 
#' \item{\code{areac}}{Área construída, em 1000 pés quadrados.}
#' 
#' \item{\code{idade}}{Idade da residência, em anos.}
#' 
#' \item{\code{preco}}{Preço de venda do imóvel, em 1000 dólares.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.22,
#'     pág. 111)
#' @examples
#' data(PaulaEx1.13.22)
#' 
#' str(PaulaEx1.13.22)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.22,
#'       type = c("p", "g", "smooth"),
#'       col.line = 1)
#'
NULL
