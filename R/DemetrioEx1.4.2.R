#' @name DemetrioEx1.4.2
#' @title Tempo de Irriga\enc{çã}{ca}o de Solo
#' 
#' @description Neste estudo foram medidos os tempos acumulados de
#'     irrigação e as correspondentes medidas de infiltração acumulada
#'     de água no solo. O objetivo do experimento era estimar as
#'     equações de infiltração acumulada em relação ao tempo acumulado e
#'     de velocidade de infiltração em relação ao tempo acumulado e à
#'     velocidade básica de infiltração.  Essas equações são importantes
#'     para determinar o tempo de irrigação para atingir uma determinada
#'     lâmina de água, pois é anti-econômico irrigar a uma velocidade
#'     maior à de infiltração.
#' 
#' @format Um \code{data.frame} de 15 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{tempo}}{Tempo acumulado de irrigação, medido em 
#'     minutos.}
#'     
#'     \item{\code{infil}}{Infiltração acumulada de água no solo, medida
#'     em centímetros (cm).}
#'     
#' }
#' 
#' @keywords RS
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
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
