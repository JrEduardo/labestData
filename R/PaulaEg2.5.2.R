#' @name PaulaEg2.5.2
#' @title Adubação de Nitrogênio e Fosfato em Milhos
#' @description Dados de um experimento inteiramente casualizado em que
#'     a produtividade de milho é estudada segundo combinações de
#'     quantidades de nitrogênio (N) e fostato (P2O5) utilizadas na
#'     adubação.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis.
#'     \describe{
#' 
#' \item{\code{N}}{Inteiro que indica a quantidade de nitrogênio
#'     utilizada, em libras/acre.}
#' 
#' \item{\code{P2O5}}{Inteiro que indica a quantidade de fosfato
#'     utilizada, em libras/acre.}
#' 
#' \item{\code{prod}}{Produtividade de milho, em libras/acre.}
#' 
#' }
#' @keywords positivo-assimétrico
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exemplo 2.5.2 pág. 144)
#'
#' @examples
#' data(PaulaEg2.5.2)
#' 
#' str(PaulaEg2.5.2)
#' 
#' ftable(table(PaulaEg2.5.2[, c("N", "P2O5")]))
#' 
#' library(reshape2)
#' da <- melt(PaulaEg2.5.2, id.vars = 3,
#'            variable.name = "adub",
#'            value.name = "qtde")
#' 
#' library(lattice)
#' xyplot(prod ~ qtde | adub,
#'        data = da,
#'        type = c("p", "g", "smooth"),
#'        strip = strip.custom(
#'            factor.levels = c("Nitrogênio", "Fosfato")))
#'
NULL
