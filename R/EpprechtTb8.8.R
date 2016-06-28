#' @name EpprechtTb8.8
#' @title Controle de qualidade para o n\enc{ú}{u}mero de n\enc{ã}{a}o-conformidades em geladeiras
#' @description Dados referentes aos números de não-conformidades  
#'     em 40 amostras de cinco geladeiras. Foi suposto que o processo
#'     operava sob controle nesse período. 
#' 
#' @format Um \code{data.frame} com 40 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{nconf}}{Número de não-conformidades.} 
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 222).
#' 
#' @examples
#'
#' data(EpprechtTb8.8) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.8, type="c", size=5,
#'     xlab="Amostra", ylab="Número de não-conformidades", title=" ")
#'                   
NULL
