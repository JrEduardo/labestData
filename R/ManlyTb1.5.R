#' @name ManlyTb1.5
#' @title Emprego em paises europeus
#'
#' @description Porcentagens da força de trabalho de empregados para nove diferentes grupos de indústrias sediadas em 30 países europeus
#'
#' @format Um \code{data.frame} com 30 registros em 11 variáveis.
#' 
#' \describe{
#'
#' \item {\code{pais}} {Identificação do país.}
#' 
#' \item {\code{grupo}} {Grupo econômico. UE: União Europeia - AELC: Área europeia de livre comércio - Leste - Outro}
#' 
#' \item {\code{agr}} {Agricultura, florestal e pesca.}
#'
#' \item {\code{min}} {Mineração e exploração de pedreiras.}
#' 
#' \item {\code{fab}} {Fabricação.}
#' 
#' \item {\code{fea}} {Fornecimento de energia e água.}
#' 
#' \item {\code{con}} {Construção.}
#'  
#' \item {\code{ser}} {Serviços.}
#'  
#' \item {\code{fin}} {Finanças.}
#'  
#' \item {\code{ssp}} {Serviços sociais e pessoais.}
#' 
#' \item {\code{tc}} {Transportes e comunicações.}
#' 
#' }
#'
#' @keywords Todo
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- uma introdução.
#'      Porto Alegre, RS: Bookman (pg 22)
#' @examples
#'
#' data(ManlyTb1.5)
#' 
#' pairs(~ pais + grupo + agr + min + fab + fea + con + ser + fin + ssp + tc,
#'       data = ManlyTb1.5, 
#'       main="Gráfico de dispersão dos empregos")
NULL

