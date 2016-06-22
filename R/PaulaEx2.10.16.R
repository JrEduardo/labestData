#' @name PaulaEx2.10.16
#' @title Relação entre Publicidade e Faturamento em Restaurantes
#' @description Dados referentes a faturamentos anuais e gastos com
#'     publicidade de uma amostra de 30 restaurantes. O objetivo
#'     principal é relacionar o faturamento médio com os gastos com
#'     publicidade.
#' @format Um \code{data.frame} com 30 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{fatura}}{Faturamento anual do restaurante, em mil
#'     dólares.}
#' 
#' \item{\code{gastos}}{Gastos do restaurante com publicidade, em mil
#'     dólares.}
#' 
#' }
#' @keywords positivo-assimétrico RS
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 2.10.16,
#'     pág. 179)
#'
#' @references Montgomery, D. C., Peck, E. A., Vining,
#'     G. G. (2001). Introduction to Linear Regression Analysis (3rd
#'     Ed.). John Wiley, New York.
#'
#' @examples
#' data(PaulaEx2.10.16)
#' 
#' str(PaulaEx2.10.16)
#' 
#' library(lattice)
#' xyplot(fatura ~ gastos,
#'        data = PaulaEx2.10.16,
#'        type = c("p", "g", "smooth"))
#'
NULL
