#' @name PaulaEx1.13.19
#' @title Estudo Demográfico dos Estados Norte-Americanos
#' @description Dados referentes a um estudo demográfico sobre os 50
#'     estados norte-americanos. Neste estudo foram registradas 8
#'     variáveis que contém informações sobre características da
#'     população e do estado. Dentre elas temos a variável expectativa
#'     de vida cujo há interesse em explicá-la utilizando as demais
#'     informações.
#' @format Um \code{data.frame} com 50 observações e 9 variáveis.
#'     \describe{
#' 
#' \item{\code{estado}}{Nome do estado, pode ser entendida como nome da
#'     linhas.}
#' 
#' \item{\code{pop}}{População estimada em julho de 1975.}
#' 
#' \item{\code{renda}}{Renda per capita em 1974, mensurada em dólares.}
#' 
#' \item{\code{analf}}{Proporção de analfabetos em 1970.}
#' 
#' \item{\code{crime}}{Taxa de criminalidade por cem mil habitantes em
#'     1976.} 
#' 
#' \item{\code{estud}}{Porcentagem de estudantes que concluem o segundo
#'     grau em 1970.}
#' 
#' \item{\code{ndias}}{Número de dias do ano com temperatura abaixo de
#'     0ºC na cidade mais importante do estado.}
#' 
#' \item{\code{area}}{Área do estado em milhas quadradas.}
#' 
#' \item{\code{expvi}}{Expectativa de vida nos anos de 1969-1970.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.19,
#'     pág. 109)
#' @examples
#' data(PaulaEx1.13.19)
#' 
#' str(PaulaEx1.13.19)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.19[, -1],
#'       type = c("p", "g", "smooth"),
#'       col.line = 1)
#' 
#' # Distribuição marginal das variáveis
#' par(mfrow = c(3, 3))
#' vn <- colnames(PaulaEx1.13.19)
#' sapply(1:8, function(x) {
#'     hist(PaulaEx1.13.19[, x+1], prob = TRUE, main = vn[x+1])
#'     lines(density(PaulaEx1.13.19[, x+1]), col = 4)
#'     rug(PaulaEx1.13.19[, x+1])
#'     invisible(x)
#' })
#'
NULL
