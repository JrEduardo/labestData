#' @name PaulaTb3.20
#' @title Aplicação de inseticidas em insetos
#' @description Dados de um experimento em que três
#'    inseticidas foram aplicados em determinada espécie de inseto, sendo
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
#' \item{inset}{Tipo de inseticida.}
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
#' xyplot(mortos/(sum(mortos)) ~ dose,  data = PaulaTb3.20, auto.key = TRUE,
#'          type = c("p","a"), groups= inset,
#'          xlab = "Dose de inseticida aplicada", 
#'          ylab = "Proporção de insetos mortos", 
#'          main = "Aplicações de inseticidas")
NULL
