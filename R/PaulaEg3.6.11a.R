#' @name PaulaEg3.6.11a
#' @title Exposi\enc{çã}{ca}o de besouros
#' @description Dados de  um estudo sobre o efeito da exposição de  
#'     besouros adultos a diferentes doses de disulfeto de carbono gasoso 
#'     \emph{(CS2)}, durante cinco horas. Foram registrados os números 
#'     de besouros mortos.  
#' 
#' @format Um \code{data.frame} com 8 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{mortos}{Quantidade observada de besouros mortos.}
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
#' xyplot(mortos/(sum(mortos)) ~ dose,  data = PaulaEg3.6.11a, 
#'          type = "o",
#'          xlab = "Dose de disulfeto de carbono gasoso", 
#'          ylab = "Proporção de besouros mortos", 
#'          main = expression("Exposição de besouros a"~CS[2]))
#' 
NULL
