#' @name DemetrioEx7.8.3
#' @title Adubação em eucalipto
#' 
#' @description Dados referentes a um experimento de adubação,
#'     conduzido em casa de vegetação. Foram usadas 4 doses de
#'     K (0, 30, 60, 90 ppm), obtendo-se as alturas, medidas em cm.
#' 
#' @format Um \code{data.frame} de 12 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{dose}}{Dose de K, medida em ppm.}
#'     
#'     \item{\code{altura}}{Altura do eucalipto, medida em 
#'     centímetro (cm).}
#'     
#' }
#' 
#' @keywords RS
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 7.8.3 pág. 198)
#' 
#' @examples 
#' 
#' data(DemetrioEx7.8.3)
#' 
#' library(lattice)
#' 
#' xyplot(altura ~ dose, data = DemetrioEx7.8.3,
#'     main = "Altura vs Dose", xlab = "Dose", ylab = "Altura")
#'      
NULL
