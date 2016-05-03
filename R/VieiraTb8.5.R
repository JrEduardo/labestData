#' @name VieiraTb8.5
#' @title Tipos de máquinas
#' @description Os dados advém de um experimento no qual foram comparados
#'     cinco tipos de máquinas, operadas por três diferentes operadores.
#'     O objetivo era verificar a suspeita de que o tipo de máquina usada
#'     na fabricação de determinado item tem efeito sobre a quantidade 
#'     de itens produzidos por dia em uma fábrica.
#'     
#'     Os operadores foram tomados como blocos, pois já se sabia que 
#'     existia diferença entre eles. Cada um deles trabalhou quatro dias 
#'     em cada máquina (sorteadas aleatóriamente) e ao final de cada dia 
#'     obteve-se a quantidade de itens produzidos por operador.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator com 5 níveis, referentes ao tipos de
#'     máquinas.}
#'
#' \item{\code{bloco}}{Fator com 3 níveis, referentes aos operadores.}
#' 
#' \item{\code{qtd}}{Quantidade de itens produzidos.}
#'
#' }
#' @keywords TODO
#' @source Vieira, S.(1999). Estatística experimental (2th ed.). 
#'     São Paulo, SP: Atlas. (Tabela 8.5 pág. 98).
#' @examples
#'
#' library(lattice)
#'
#' data(VieiraTb8.5)
#'
#' xyplot(qtd ~ trat, group = bloco, data = VieiraTb8.5,
#'        type = "b",
#'        ylab = "Quantidade de Itens",
#'        xlab = "Máquina")
#'
NULL