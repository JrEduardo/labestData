#' @name DemetrioEx1.4.1.3
#' @title Absorção de CO2 por Folhas de Trigo (Bloco)
#' 
#' @description Foi aplicado \eqn{CO_2} sobre folhas de trigo a uma
#'     temperatura de 35°C. Mediu-se a quantia de \eqn{CO_2} absorvido
#'     pelas folhas.
#' 
#' @format Um \code{data.frame} de 36 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{co2}}{Concentração de \eqn{CO_2} aplicada sobre as
#'     folhas de trigo.}
#'     
#'     \item{\code{absorv}}{Quantia de \eqn{CO2} absorvida pelas folhas
#'     de trigo, medida em \eqn{cm^3/dm^2/hora.}}
#'     
#'     \item{\code{bloco}}{Bloco ao qual a observação pertence.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 2.10 pág. 65)
#' 
#' @examples 
#' 
#' data(DemetrioTb2.10)
#' 
#' library(lattice)
#' 
#' b1co2 <- DemetrioTb2.10[DemetrioTb2.10[,3]==1,]$co2
#' b1absorv <- DemetrioTb2.10[DemetrioTb2.10[,3]==1,]$absorv
#' 
#' xyplot(b1absorv ~ b1co2, data = DemetrioTb2.10,
#'      main = "CO2 Aplicado VS Absorvido",
#'      xlab = "Aplicado",
#'      ylab = "Absorvido",
#'      type = c("p", "r"), col.line = 3)
#'
NULL
