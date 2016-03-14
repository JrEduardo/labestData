#' @name MingotiTb6.8
#' @title Índices de desenvolvimento de países
#' @description Dados relativos a 21 países com as variáveis que são 
#'     índices de expectativa de vida, educação, renda (PIB) e 
#'     estabilidade política e de segurança. Os índices foram 
#'     construídos por uma metodologia da ONU, e quanto maior 
#'     esses valores, melhor será a qualidade do país.
#'     
#' @format Um \code{data.frame} com 21 observações e 5 variáveis, em que
#' 
#' \describe{
#'
#' \item{\code{pais}}{Nomes dos 21 países.}
#'
#' \item{\code{expecvida}}{Índice da esperança de vida que mede a 
#'     realização relativa de um país na esperança de vida à nascença.}
#'
#' \item{\code{educ}}{Índice da educação que mede a realização relativa 
#'     de um país tanto na alfabetização de adultos como na 
#'     escolarização bruta combinada do primário, secundário e 
#'     superior.}
#'
#' \item{\code{pib}}{Índice do PIB, que é calculado utilizando o PIB
#'     per capita ajustado (dólares) no qual usa-se o logarítimo.}
#'     
#' \item{\code{estabpoli}}{Índice de percepções da probabilidade de 
#'     desestabilização (tensões étnicas, conflito armado, etc).}
#'
#' }
#' 
#' @keywords TODO  
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 184).
#'      
#' @examples
#'
#'data(MingotiTb6.8)
#'
#'pairs(MingotiTb6.8)
#' 
NULL