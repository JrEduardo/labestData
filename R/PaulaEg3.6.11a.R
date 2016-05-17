#' @name PaulaEg3.6.11a
#' @title Exposição de besouros
#' @description Dados de  um estudo sobre o efeito da exposição de  
#'     besouros adultos a diferentes doses de disulfeto de carbono gasoso 
#'     \emph{(CS2)}, durante cinco horas. Foram registrados os números 
#'     de besouros mortos. Não há informações sobre a unidade de medida
#'     das doses do tratamento. 
#' 
#' @format Um \code{data.frame} com 8 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{mortos}{Quantidade de besouros mortos observada.}
#'     
#' \item{exp}{Quantidade de besouros expostos a cada dose.}
#'
#' \item{dose}{Dose de disulfeto de carbono gasoso à qual os besouros
#'    foram expostos.}
#'     
#' }
#' @keywords GLM binarios
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.11a pág. 237)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.11a)
#' 
#' str(PaulaEg3.6.11a)
#'
#' barchart(mortos/(sum(mortos)) ~ dose,  data = PaulaEg3.6.11a, 
#'          col="lightblue",
#'          xlab = "Dose de disulfeto de carbono gasoso", 
#'          ylab = "Besouros mortos", 
#'          main = expression("Exposição de besouros a"~CS[2]))
#' 
#' barchart(exp/sum(exp) ~ dose,  data = PaulaEg3.6.11a, 
#'          col="lightblue",
#'          xlab = "Dose de disulfeto de carbono gasoso", 
#'          ylab = "Besouros expostos", 
#'         main = expression("Exposição de besouros a"~CS[2]))
NULL