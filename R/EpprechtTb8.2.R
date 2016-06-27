#' @name EpprechtTb8.2
#' @title Número de Clientes Insatisfeitos com a Comida 
#' @description Dados referentes ao número de clientes insatisfeitos
#'     com a comida de um restaurante. Esses dados foram obtidos após o
#'     diagnóstico e a eliminação de causas especiais. A cada dia 200
#'     clientes foram consultados, durante 30 dias.
#' 
#' @format Um \code{data.frame} com 30 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{cinsat}}{Número de clientes insatisfeitos.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 204).
#' 
#' @examples
#'
#' data(EpprechtTb8.2) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.2, type="p", size=200,
#'     xlab="Amostra", ylab="Proporção de insatisfeitos", title=" ")
#'                   
NULL