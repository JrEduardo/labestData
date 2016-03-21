#' @name MingotiTb6.1
#' @title Renda mensal de seis indivíduos de certa localidade
#' @description Dados referente às rendas mensais (em quantidade de 
#'     salários mínimos) e às idades de seis indivíduos de uma
#'     localidade.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{id}}{Identificação do indivíduo  
#'     (A-F).}
#'
#' \item{\code{renda}}{Renda mensal (em quantidade de salários mínimos).}
#'
#' \item{\code{idade}}{Idade do indivíduo.}
#'
#' }
#' @keywords AnaClus
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 159).
#'      
#' @examples
#'
#'data(MingotiTb6.1)
#'
#' library(lattice)
#'
#' xyplot(renda ~ idade,
#'       data = MingotiTb6.1,
#'       ylab="Renda mensal")
#'
NULL