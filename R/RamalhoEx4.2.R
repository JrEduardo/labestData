#' @name RamalhoEx4.2
#' @title Número de perfilhos de arroz
#' @description Experimento do número de perfilhos (dados médios por 
#'     plantsas) de 8 linhagens de arroz, avaliadas no delineamento de 
#'     blocos casualizados.
#' @format data.frame com 32 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linh}}{Fator de níveis nominais, indicando a linhagem de 
#'     arroz.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis, usado para controle local.
#' 
#' \item{\code{perf}}{Número de perfilhos de arroz obervado.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 66)
#' @examples
#'
#' library(lattice)
#' 
#' data(RamalhoEx4.2)
#' 
#' aggregate(perf ~ linh,  data = RamalhoEx4.2, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(perf ~ linh, data = RamalhoEx4.2, 
#'        groups = bloc, 
#'        jitter.x = TRUE,
#'        xlab = "Linhagem",
#'        ylab = "Número de perfilho")
#' 
NULL
