#' @name DemetrioTb3.6
#' @title Dados Genéricos para Regressão Múltipla
#' 
#' @description Dados para exercício de análise via modelo de regressão
#'     linear múltipla com três variáveis explicativas.
#'
#' @format Um \code{data.frame} de 14 linhas e 4 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x1}}{Variável explicativa, sem interpretação.}
#'     
#'     \item{\code{x2}}{Variável explicativa, sem interpretação.}
#'     
#'     \item{\code{x3}}{Variável explicativa, sem interpretação.}
#'     
#'     \item{\code{y}}{Variável dependente, sem interpretação.}
#' 
#' }
#' 
#' @keywords RM
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 3.6 pág. 99)
#'
#' @references Hoffman, R., Vieira, S. (1983). Análise de Regressão. Uma
#'     introdução à Econometria (2en ed.). São Paulo, SP: Ed. Hucitec.
#'
#' @examples 
#' 
#' data(DemetrioTb3.6)
#' 
#' pairs(~ x1 + x2 + x3 + y , data = DemetrioTb3.6,
#'      main = "Dispersão duas a duas")
#'
#' cor(DemetrioTb3.6)
#'
NULL
