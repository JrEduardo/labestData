#' @name ManlyTb10.4
#' @title Combinação de tabelas 1.5 e 6.7
#'
#' @description Combinação entre a tabela 1.5 e 6.7. Trata-se de 
#' variáveis de consumo de proteína e força de trabalho por país
#'
#' @format Um \code{data.frame} com 22 registros e 18 variáveis.
#' 
#' \describe{
#'
#' \item {\code{pais}}{Identificação do país.}
#' 
#' \item{\code{cv}}{Consumo de carne vermelha medida em gramas por 
#' pessoa por dia.}
#' 
#' \item{\code{cb}}{Consumo de carne branca.}
#'
#' \item{\code{ovo}}{Consumo de ovos.}
#' 
#' \item{\code{leite}}{Consumo de leite.}
#' 
#' \item{\code{peixe}}{Consumo de peixe.}
#' 
#' \item{\code{cere}}{Consumo por cereais.}
#'  
#' \item{\code{carb}}{Consumo de carboidratos.}
#' 
#' \item{\code{gnl}}{Consumo de grãos, nozes e sementes oleaginosas.}
#'  
#' \item{\code{fv}}{Consumo de frutas e vegetais.}
#' 
#' \item{\code{agr}}{Porcentagem da população ativa empregada na 
#' agricultura, florestal e pesca.}
#'
#' \item{\code{min}}{Mineração e exploração de pedreiras.}
#' 
#' \item{\code{fab}}{Fabricação.}
#' 
#' \item{\code{fea}}{Fornecimento de energia e água.}
#' 
#' \item{\code{con}}{Construção.}
#'  
#' \item{\code{ser}}{Serviços.}
#'  
#' \item{\code{fin}}{Finanças.}
#'  
#' \item{\code{ssp}}{Serviços sociais e pessoais.}
#' 
#' \item{\code{tc}}{Transportes e comunicações.}
#' 
#' }
#'
#' @keywords ACC
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- 
#' uma introdução. Porto Alegre, RS: Bookman (pg 175)
#' @examples
#'
#' data(ManlyTb10.4)
#' 
#' pairs(~ cv + cb + ovo + leite + peixe + cere + carb + gnl+ agr + 
#' min + fab + fea + con + ser + fin + ssp + tc,
#'       data = ManlyTb10.4, 
#'       main = "Matriz das variáveis de força de trabalho e consumo de 
#'       proteínas diárias"
#'       )
NULL