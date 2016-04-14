#' @name DemetrioTb4.5
#' @title Dados Simulados para Regressão Linear Simples e Polinomial
#' 
#' @description Dados simulados para exercício de ajuste de modelos de
#'     regressão linear simples e polinomial. São simulados, para uma
#'     mesma covariável (x), quatro diferentes variáveis de interesse
#'     (y).
#' 
#' @format Um \code{data.frame} de 9 linhas e 5 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{x}}{Variável explicativa, sem interpretação.}
#' 
#'     \item{\code{y1}}{Variável dependente, sem interpretação.}
#'     
#'     \item{\code{y2}}{Variável dependente, sem interpretação.}
#'     
#'     \item{\code{y3}}{Variável dependente, sem interpretação.}
#'     
#'     \item{\code{y4}}{Variável dependente, sem interpretação.} 
#' 
#' }
#' 
#' @keywords RS RP
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 4.5 pág. 137)
#' 
#' @examples
#' 
#' data(DemetrioTb4.5)
#'
#' # Relação da covariável com cada uma das variáveis resposta
#' par(mfrow = c(1, ncol(DemetrioTb4.5) - 1))
#' for (i in 2:ncol(DemetrioTb4.5)) {
#'     plot(DemetrioTb4.5[, c(1, i)])
#'     lines(lowess(DemetrioTb4.5[, c(1, i)]), col = 2)
#' }
#'
#' # Gráfico de dispersão por pares, apresenta também a relação entre as
#' # variáveis resposta
#' pairs(~ x + y1 + y2 + y3 + y4 , data = DemetrioTb4.5,
#'      main = "Dispersão duas a duas")
#'
NULL

