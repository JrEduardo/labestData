#' @name MingotiTb6.1
#' @title Renda mensal de seis indivíduos de uma localidade
#' @description Dados referente a renda mensal (em quantidade de 
#'      salários mínimos) e a idade de seis indivíduos de uma
#'      localidade.
#' @format data.frame com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{id}{Identificação do indivíduo representada 
#'      por 6 letras (A a F).}
#'
#' \item{renda}{Renda mensal em quantidade de salários mínimos.}
#'
#' \item{idade}{Idade do indivíduo.}
#'
#' }
#' 
#' @keywords Renda idade
#' @source MINGOTI, S.A. (2005). Análise de dados através de métodos de 
#'      estatística multivariada - uma abordagem aplicada. 
#'      Belo Horizonte, MG: Editora UFMG. (pg 159).
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
