#' @name PaulaTb3.20
#' @title Aplicação de inseticidas em insetos
#' @description Dados de um experimento em que três
#'    inseticidas são aplicados num determinado tipo de inseto e é
#'    verificado o número de sobreviventes para cada dose aplicada. 
#'    
#' @format Um \code{data.frame} com 18 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{mortos}{Número de insetos mortos.}
#'     
#' \item{exp}{Número de insetos expostos aos inseticidas.}
#'
#' \item{dose}{Dose aplicada dos inseticidas.}
#'
#' \item{ddt}{Presença ou ausência deste tipo de inseticida.}
#'
#' \item{gamaddt}{Presença ou ausência deste tipo de inseticida.}
#'
#' \item{ddt.gamaddt}{Presença ou ausência deste tipo de inseticida.}
#' 
#' \item{comb}{Combinação dos níveis dos tipos de inseticida.}
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
#' str(PaulaTb3.20)
#' 
#' barchart(mortos/(sum(mortos)) ~ dose,  data = PaulaTb3.20, 
#'          type = c("p","a"), groups= comb, col=c(45:47),
#'          xlab = "Dose aplicada de cada inseticida", 
#'          ylab = "Quantidade de insetos mortos", 
#'          main = "Aplicações de inseticidas")
NULL