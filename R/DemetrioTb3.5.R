#' @name DemetrioTb3.5
#' @title Dados Genéricos para Regressão Múltipla
#' 
#' @description Dados para exercício de análise via modelo de regressão
#'     linear múltipla.
#' 
#' @format Um \code{data.frame} de 6 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x1}}{Variável explicativa, sem interpretação.}
#'     
#'     \item{\code{x2}}{Variável explicativa, sem interpretação.}
#'     
#'     \item{\code{y}}{Variável dependente, sem interpretação.}
#' 
#' }
#' 
#' @keywords RM
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 3.5 pág. 99)
#'
#' @references Hoffman, R., Vieira, S. (1983). Análise de Regressão. Uma
#'     introdução à Econometria (2en ed.). São Paulo, SP: Ed. Hucitec.
#' 
#' @examples 
#' 
#' data(DemetrioTb3.5)
#' 
#' pairs(~ x1 + x2 + y , data = DemetrioTb3.5,
#'      main = "Dispersão duas a duas")
#'
#' cor(DemetrioTb3.5)
#'
NULL
