#' @name DemetrioTb5.1
#' @title Resposta da cultura de milho ao fosfato
#' 
#' @description Dados referentes a um estudo sobre a resposta da 
#'     cultura do milho em função da quantidade de fosfato, porcentagem
#'     de saturação de bases e sílica em solos ácidos.
#'     
#'     Neste estudo a variável resposta, que está em porcentagem,
#'     foi medida como a diferença entre as produções que receberam
#'     fosfato e as que não receberam, dividida pelas produções
#'     das parcelas que receberam fosfato, e multiplicado por 100. 
#'     Considerando-se esses dados, foi obtida a variável produtividade
#'     das parcelas que receberam fosfato, dada por 
#'     \eqn{Y_1 = X_1(1 + \frac{Y}{100})}.
#' 
#' @format Um \code{data.frame} de 14 linhas e 4 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{resp}}{Resposta da cultura do milho ao fosfato,
#'     medida em porcentagem.}
#' 
#'     \item{\code{prod}}{Produtividade na testemunha, 
#'     medida em libra por acre (lb/acre).}
#'     
#'     \item{\code{sat}}{Porcentagem de saturação de bases.}
#'     
#'     \item{\code{silica}}{Sílica (pH do solo).}
#'     
#' }
#' 
#' @keywords RM
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 5.1 pág. 157; Exercício
#'     5.4.7 pág. 161; Exercício 5.4.7 pág. 167)
#' 
#' @examples
#' 
#' data(DemetrioTb5.1)
#' 
#' pairs(~ resp + prod + sat + silica , data = DemetrioTb5.1,
#'      main = "Dispersão duas a duas")
#'
NULL
