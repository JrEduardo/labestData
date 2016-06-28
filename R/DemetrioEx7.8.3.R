#' @name DemetrioEx7.8.3
#' @title Alturas de Eucaliptos sob Aduba\enc{çã}{ca}o Pot\enc{á}{a}ssica
#' 
#' @description Dados referentes a um experimento de adubação,
#'     conduzido em casa de vegetação. Foram usadas 4 doses de
#'     Potássio (0, 30, 60, 90 ppm), obtendo-se as alturas das árvores
#'     da espécie \emph{Eucalyptus grandis}, medidas em cm.
#' 
#' @format Um \code{data.frame} de 12 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{dose}}{Dose de potássio, medida em ppm.}
#'     
#'     \item{\code{altura}}{Altura da árvore, medida em centímetro
#'     (cm).}
#'     
#' }
#' 
#' @keywords RP
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
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
