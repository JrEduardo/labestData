#' @name BorgesTb1.6
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
#' @source Borges, C. G., Demétrio, & Zocchi, S. S. (2011). 
#' Modelo de Regressão. Piracicaba, SP: USP.
#' 
#' @examples 
#' 
#' ## Carregando o banco de dados --------------------------------------
#' 
#' data(BorgesTb1.6)
#' 
#' ## Plotando o gráfico -----------------------------------------------
#' 
#' pairs(~ milho + prod + satu + ph, data = BorgesTb1.6,
#'  main = "Dispersão duas a duas")
#' 
NULL