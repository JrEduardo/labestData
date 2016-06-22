#' @name PaulaTb2.6
#' @title Projeção de Vendas
#' @description Dados referentes a 20 valores projetados para vendas de
#'     produtos confrontados com os verdadeiros valores de venda
#'     obtidos.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{proj}}{Valor projetado de venda.}
#' 
#' \item{\code{real}}{Valor real de venda.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 2.6, pág. 159)
#'
#' @examples
#' data(PaulaTb2.6)
#' 
#' str(PaulaTb2.6)
#' 
#' library(lattice)
#' xyplot(real ~ proj, data = PaulaTb2.6,
#'        grid = TRUE, pch = 19, cex = 1.2,
#'        panel = function(x, y, ...) {
#'            panel.xyplot(x, y, ...)
#'            panel.abline(0, 1, lty = 2)
#'        })
#'
NULL
