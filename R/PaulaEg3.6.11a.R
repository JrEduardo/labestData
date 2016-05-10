#' @name PaulaEg3.6.11a
#' @title Exposição de besouros
#' @description Dados de  um estudo que baseia-se no comportamento de 
#'     besouros adultos à exposição de disulfeto de carbono gasoso (CS2)
#'     durante cinco horas. Os resultados obtidos a partir dos 481 besouros
#'     expostos segundo diferentes doses são apresentados na tabela.
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
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.11a pág. 237)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.11a)
#'
#' xyplot(mortos ~ dose,  data = PaulaEg3.6.11a, 
#'        type = c("p","a"),
#'        xlab = "Dose de disulfeto de carbono gasoso", 
#'        ylab = "Besouros mortos", 
#'        main = expression("Exposição de besouros a", CS[2]))
#' 
#' xyplot(exp ~ dose,  data = PaulaEg3.6.11a, 
#'        type = c("p","a"),
#'        xlab = "Dose de disulfeto de carbono gasoso", 
#'        ylab = "Besouros expostos", 
#'        main = expression("Exposição de besouros a", CS[2]))
NULL