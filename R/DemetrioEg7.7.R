#' @name DemetrioEg7.7
#' @title Produtividade de Cana-de-açúcar sob Níveis de Pentóxido de Fósforo
#' 
#' @description Dados referentes a produtividade de cana-de-açúcar, em
#'     ton/ha, obtidos de um experimento delineado em blocos
#'     casualizados, com 6 repetições e 5 níveis de \eqn{P_2O_5}
#'     (pentóxido de fósforo). O conjunto de dados apresenta somente a
#'     soma das produtividades nos blocos para cada nível de
#'     \eqn{P_2O_5}.
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
#' @keywords RP
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
