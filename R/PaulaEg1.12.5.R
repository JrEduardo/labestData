#' @name PaulaEg1.12.5
#' @title Consumo de Combust\enc{í}{i}vel
#' @description Dados referentes ao consumo de combustível em 48 estados 
#'     norte-americanos. O interesse nesse estudo é tentar explicar o 
#'     consumo de combustível com base em variáveis econômicas.
#'      
#' @format Um \code{data.frame} com 48 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{est}}{Estado.}
#' 
#' \item{\code{taxa}}{Taxa do combustível no estado (em USD).}
#' 
#' \item{\code{licen}}{Proporção de motoristas licenciados.}
#' 
#' \item{\code{renda}}{Renda percapita (em USD).}
#' 
#' \item{\code{estr}}{Ajuda federal para as estradas (em 1000 USD).}
#' 
#' \item{\code{cons}}{Consumo de combustível por habitante.}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.5, p?g. 94)
#'
#' @examples
#'
#' data(PaulaEg1.12.5)
#' 
#' str(PaulaEg1.12.5)
#' 
#' library(lattice)
#' 
#' library(car)
#' 
#' scatterplotMatrix( ~ cons + taxa + licen + renda + estr,
#'                   data = PaulaEg1.12.5)
#' 
#' xyplot(cons ~ est,
#'        ylab = "Consumo",
#'        xlab = "Estados",
#'        data = PaulaEg1.12.5,
#'        type = 'h',
#'        main = "Consumo por Habitante em cada Estado",
#'        grid = TRUE)
#'
NULL
