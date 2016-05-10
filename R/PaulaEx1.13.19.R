#' @name PaulaEx1.13.19
#' @title Expectativa de Vida de Estados Norte-americanos
#' @description Dados referentes a 50 estados norte-americanos descritos
#'     com as seguintes variáveis: população estimada em julho de 1975, 
#'     renda percapita em 1974, proporção de analfabetos em 1970, expectativa
#'     de vida em 1969-1970, taxa de criminalidade em 1976, porcentagem de 
#'     estudantes que concluem o segundo grau em 1970, número de dias do 
#'     ano com temperatura abaixo de zero graus Celsus na cidade mais 
#'     importante do estado, e área do estado.
#'      
#' @format Um \code{data.frame} com 50 observações e 9 variáveis.
#' \describe{
#' 
#' \item{\code{est}}{Estado.}
#' 
#' \item{\code{pop}}{População estimada em julho de 1975.}
#' 
#' \item{\code{rendapc}}{Renda percapita em 1974 (em USD).}
#' 
#' \item{\code{analf}}{Proporção de analfabetos em 1970.}
#' 
#' \item{\code{expvida}}{Expectativa de vida em 1969-1970.}
#' 
#' \item{\code{crime}}{Taxa de criminalidade em 1976 (por 100000 
#'     habitantes).}
#' 
#' \item{\code{estud}}{Porcentagem de estudantes que concluem o segundo 
#'     grau em 1970.}
#' 
#' \item{\code{ndias}}{Número de dias do ano com temperatura abaixo de
#'     zero graus Celsus na cidade mais importante do estado.}
#' 
#' \item{\code{area}}{Área do estado (em milhas quadradas).}
#' 
#' }
#' @keywords aplicações
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.13.19, pág. 109)
#'
#' @examples
#'
#' data(PaulaEx1.13.19)
#' 
#' str(PaulaEx1.13.19)
#' 
#' library(car)
#' 
#' PaulaEx1.13.19$dens <- PaulaEx1.13.19$pop/PaulaEx1.13.19$area
#' scatterplotMatrix( ~ expvida + analf + crime + estud + ndias + dens,
#'                    data = PaulaEx1.13.19)
#' 
#'
NULL

