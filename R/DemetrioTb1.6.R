#' @name DemetrioTb1.6
#' @title Cultura do Milho
#' 
#' @description Foram obtidos dados sobre a cultura do milho com o 
#' interesse principal de estudar a correlação entre as variáveis
#' do estudo.
#' 
#' @format Um \code{data.frame} de 14 linhas e 4 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{milho}}{Dados de resposta da cultura do milho.}
#'     
#'     \item{\code{prod}}{Produtividade.}
#'     
#'     \item{\code{satu}}{Porcentagem de saturação de bases.}
#'     
#'     \item{\code{ph}}{pH do solo.}
#' 
#' }
#' 
#' @keywords milho solo
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 1.6 pág. 13)
#' 
#' @examples 
#' 
#' data(DemetrioTb1.6)
#' 
#' pairs(~ milho + prod + satu + ph, data = DemetrioTb1.6,
#'      main = "Dispersão duas a duas")
#' 
NULL