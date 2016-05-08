#' @name PaulaEx1.13.20
#' @title Vendas de Telhados de Madeira
#' @description Dados de um estudo onde registrou-se informações a
#'     respeito das vendas de um tipo de telhado de madeira em 26
#'     filiais de uma rede de lojas de construção. Um dos objetivos do
#'     estudo e tentar prever o número esperado de telhados vendidos
#'     dadas as demais variáveis registradas.
#' @format Um \code{data.frame} com 26 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{gasto}}{Gasto com publicidade do produto, em mil
#'     dólares.}
#' 
#' \item{\code{ncli}}{Número de clientes cadastrados, em milhares.}
#' 
#' \item{\code{nmar}}{Número de marcas concorrentes do produto}
#' 
#' \item{\code{poten}}{Potencial da loja, informação advinda da rede de
#'     lojas de construção, quanto maior o valor maior o potencial de
#'     venda da filial.}
#' 
#' \item{\code{telha}}{Total de telhados vendidos, em mil metros
#'     quadrados.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.20,
#'     pág. 110)
#' @examples
#' data(PaulaEx1.13.20)
#' 
#' str(PaulaEx1.13.20)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.20,
#'       type = c("p", "g", "smooth"),
#'       col.line = 1)
#'
NULL
