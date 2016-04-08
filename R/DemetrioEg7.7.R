#' @name DemetrioEg7.7
#' @title Produtividade de cana-de-açúcar
#' 
#' @description Dados referentes aos totais de produtividade de 
#'     cana-de-açúcar, em ton/ha, obtidos de um experimento em blocos,
#'     com 6 repetições e 5 níveis de \eqn{P_2O_5}.
#' 
#' @format Um \code{data.frame} de 5 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{nivel}}{Nível de \eqn{P_2O_5}, medido em kg/ha.}
#'     
#'     \item{\code{prod}}{Produtividade de cana-de-açúcar, medida em
#'     ton/ha.}
#'     
#' }
#' 
#' @keywords TODO
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exemplo 7.7 pág. 197)
#' 
#' @examples 
#' 
#' data(DemetrioEg7.7)
#' 
#' library(lattice)
#' 
#' xyplot(prod ~ nivel, data = DemetrioEg7.7,
#'     main = "Produtividade por Nível", xlab = "Nível",
#'     ylab = "Produtividade")
#'     
NULL
