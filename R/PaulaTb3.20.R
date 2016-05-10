#' @name PaulaTb3.20
#' @title Aplicação de inseticidas em um tipo de inseto
#' @description A tabela resume os resultados de um experimento em que três
#'    inseticidas são aplicados num determinado tipo de inseto e é
#'    verificado o número de sobreviventes para cada dose aplicada. Para cada
#'    inseticida, a resposta é 1 para presença e 0 para ausência. 
#' @format Um \code{data.frame} com 18 observações e 6 variáveis, em que
#'
#' \describe{
#'
#' \item{mortos}{Número de insetos mortos.}
#'     
#' \item{exp}{Número de insetos mortos expostos aos inseticidas.}
#'
#' \item{dose}{Dose aplicada dos inseticidas.}
#'
#' \item{ddt}{Presença ou ausência deste tipo de inseticida.}
#'
#' \item{gamaddt}{Presença ou ausência deste tipo de inseticida.}
#'
#' \item{ddt.gamaddt}{Presença ou ausência deste tipo de inseticida.}
#'
#' }
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Tb 3.20 pág. 246)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaTb3.20)
#'
#' xyplot(mortos ~ dose | ddt,  data = PaulaTb3.20, 
#'        type = c("p","a"),
#'        xlab = "Dose aplicada (DDT)", 
#'        ylab = "Quantidade de insetos mortos", 
#'        main = "Aplicações de inseticidas")
#' 
#' xyplot(mortos ~ dose | gamaddt,  data = PaulaTb3.20, 
#'        type = c("p","a"),
#'        xlab = "Dose aplicada (gammaDDT)", 
#'        ylab = "Quantidade de insetos mortos", 
#'        main = "Aplicações de inseticidas")
NULL