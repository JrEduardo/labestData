#' @name ManlyTb1.5
#' @title Emprego em paises europeus
#'
#' @description Porcentagens da força de trabalho de empregados para nove diferentes campos de trabalho sediadas em 30 países europeus
#'
#' @format Um \code{data.frame} com 30 registros em 11 variáveis.
#' 
#' \describe{
#'
#' \item {\code{pais}} {Identificação do país.}
#' 
#' \item {\code{grup}} {Grupo econômico que pertencente o país: União Europeia (UE); Área europeia de livre comércio (AELC); Leste; Outro}
#' 
#' \item {\code{afp}} {Porcentagem da população ativa empregada na agricultura, florestal e pesca.}
#'
#' \item {\code{mep}} {Mineração e exploração de pedreiras.}
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
#' pairs(~afp + mep + fab + fea + con + ser + fin + ssp + tc,
#'       data = ManlyTb1.5, 
#'       main="Matriz das variáveis de força de trabalho"
#'       )
NULL