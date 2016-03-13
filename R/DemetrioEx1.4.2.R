#' @name DemetrioEx1.4.2
#' @title Irrigação
#' 
#' @description Foram medidos os tempos acumulados e as correspondentes
#'  medidas de infiltração acumulada de água no solo.
#' 
#'  O objetivo do experimento era estimar as equações de infiltração 
#'  acumulada em relação ao tempo acululado, de velocidade de infiltração
#'  em relação ao tempo acumulado e de velocidade básica de infiltração.
#'  Essas equações são importantes para determinar o tempo de irrigação
#'  para atingir uma determinada lâmina de água, pois é anti-econômico
#'  irrigar a uma velocidade maior à de infiltração.
#' 
#' @format Um \code{data.frame} de 15 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{tempo}}{Tempo acumulado de observação, medido em 
#'     minutos.}
#'     
#'     \item{\code{infil}}{Infiltração acumulada de água no solo, medida
#'     em centímetros (cm).}
#'     
#' }
#' 
#' @keywords solo infiltração irrigação
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 1.4.2 pág. 16)
#' 
#' @examples 
#' 
#' data(DemetrioEx1.4.2)
#' 
#' library(lattice)
#' 
#' xyplot(infil ~ tempo, data = DemetrioEx1.4.2,
#'      main = "Tempo VS Infiltração",
#'      xlab = "Tempo",
#'      ylab = "Infiltração",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL