#' @name DemetrioTb7.1
#' @title Produção de milho por Adubo
#' 
#' @description Os dados referem-se a produções de milho, em kg/parcela,
#'     de um experimento casualizado em blocos de adubação com 
#'     diferentes doses de \eqn{P_2O_5}.
#' 
#' @format Um \code{data.frame} de 20 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{dose}}{Dose \eqn{P_2O_5}.}
#' 
#'     \item{\code{bloco}}{Bloco ao qual a observação pertence.}
#'     
#'     \item{\code{sat}}{Valor da produção de milho, medido em
#'     kg/parcela.}
#'     
#' }
#' 
#' @keywords RS
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 7.1 pág. 195)
#' 
#' @examples
#' 
#' data(DemetrioTb7.1)
#' 
#' library(lattice)
#' xyplot(producao ~ dose | bloco, data = DemetrioTb7.1,
#'     xlab = "Dose", ylab = "Produção")
#' 
NULL
