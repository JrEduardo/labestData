#' @name ManlyTb6.7
#' @title Consumo de proteína por habitantes de países europeus 
#'
#' @description Estimativas dos consumos médios de proteínas de diferentes 
#' fontes de alimentos para habitantes de 25 países europeus. 
#' Consumos registrados em gramas por pessoa por dia.
#'
#' @format Um \code{data.frame} com 25 países e 9 variáveis.
#' 
#' \describe{
#'
#' \item{\code{pais}}{Identificação do país.}
#' 
#' \item{\code{cv}}{Consumo de carne vermelha.}
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
#' \item{\code{gnso}}{Consumo de grãos, nozes e sementes oleaginosas.}
#'  
#' \item{\code{fv}}{Consumo de frutas e vegetais.}
#'  
#' \item{\code{total}}{Total de consumo do país.}
#' 
#' }
#' @keywords AnaComp
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 103)
#'      
#' @examples
#'
#' data(ManlyTb6.7)
#' 
#' pairs(~ cv + cb + ovo + leite + peixe + cere + carb + gnso + fv,
#'       data = ManlyTb6.7, 
#'       main="Matriz das variáveis de consumo de proteína")
NULL
