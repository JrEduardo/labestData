#' @name DemetrioEx2.12.16
#' @title Calagem para a Sucessão batata-triticale-milho
#' 
#' @description Neste experimento foram obtidos os valores para o teor
#'     de cálcio no solo e a porcentagem de tubérculos maduros com o
#'     objetivo de verificar a relação existente entre estas variáveis.
#' 
#' @format Um \code{data.frame} de 9 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{calcio}}{Teor de cálcio no solo, medido em
#'     \eqn{meq/100cm^{3}} (miliequivalente por 100 centímetros
#'     cúbicos).}
#'     
#'     \item{\code{tm}}{Porcentagem de tubérculos maduros.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 2.12.16 pág. 63)
#' 
#' @examples 
#' 
#' data(DemetrioEx2.12.16)
#' 
#' library(lattice)
#' 
#' xyplot(tm ~ calcio, data = DemetrioEx2.12.16,
#'      main = "Cálcio VS TM",
#'      xlab = "Cálcio",
#'      ylab = "Tubérculos Maduros")
#'      
NULL
