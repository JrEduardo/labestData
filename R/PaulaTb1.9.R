#' @name PaulaTb1.9
#' @title Bactérias Sobreviventes em Amostras
#' @description Número de bactérias sobreviventes em amostras de um 
#'     produto alimentício segundo o tempo de exposição do produto a uma
#'     temperatura de 300ºF.
#'      
#' @format Um \code{data.frame} com 12 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{num}}{Número de bactérias sobreviventes.}
#' 
#' \item{\code{temp}}{Tempo de exposição (em minutos).}
#' 
#' }
#' @keywords aplicações
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tabela 1.9, pág. 88)
#'
#' @examples
#'
#' data(PaulaTb1.9)
#' 
#' str(PaulaTb1.9)
#' 
#' library(lattice)
#' 
#' xyplot(num ~ temp,
#'        ylab = "Número de bactérias",
#'        xlab = "Tempo de exposição",
#'        data = PaulaTb1.9,
#'        type = c("p", "smooth"),
#'        main = "Número de Bactérias Sobreviventes por Tempo de Exposição")

#'
NULL