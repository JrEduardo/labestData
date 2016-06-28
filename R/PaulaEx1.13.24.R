#' @name PaulaEx1.13.24
#' @title Porcentagens de Retorno de A\enc{çõ}{co}es 
#' @description Dados referentes aos retornos diários das ações das
#'     empresas Microsoft, General Eletric (GE) e Ford no período de
#'     janeiro de 2002 a abril de 2003. No registro dessas ações também
#'     se dispõe da taxa de retorno livre de risco e do retorno do
#'     mercado, para padronizar as comparações.
#' @format Um \code{data.frame} com 311 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{tbill}}{Taxa de retorno livre de risco.}
#' 
#' \item{\code{sp500}}{Porcentagem de retorno do mercado.}
#' 
#' \item{\code{micro}}{Porcentagem de retorno das ações da empresa
#'     Microsoft.}
#' 
#' \item{\code{ge}}{Porcentagem de retorno das ações da empresa General
#'     Eletric (GE).}
#' 
#' \item{\code{ford}}{Porcentagem de retorno das ações da empresa Ford.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercicío 1.13.24,
#'     pág. 112)
#' @examples
#' data(PaulaEx1.13.24)
#' 
#' str(PaulaEx1.13.24)
#' 
#' library(reshape)
#' da <- melt(PaulaEx1.13.24, measure.vars = c("micro", "ge", "ford"),
#'            variable_name = "empresa")
#' 
#' library(lattice)
#' densityplot(~value, groups = empresa, data = da,
#'             auto.key = list(corner = c(0.9, 0.9)))
#' 
#' xyplot((sp500 - tbill) ~ (value - tbill) | empresa,
#'        data = da, type = c("p", "smooth", "g"))
#'
NULL
