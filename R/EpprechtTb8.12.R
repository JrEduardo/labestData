#' @name EpprechtTb8.12
#' @title Controle de qualidade para a fração de não conformes. 
#' @description Dados das 20 primeiras amostras que representam o número 
#'     de peças não-conformes em amostras de tamanho 100.
#' 
#' @format Um \code{data.frame} com 20 observações e 1 variável, 
#'     em que
#' 
#' \describe{ 
#' 
#' \item{\code{nconf}}{Número de peças não conformes nas amostras.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 227).
#' 
#' @examples
#'
#' data(EpprechtTb8.12) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.12, type="p", size=100,
#'     xblab="Amostras", ylab="Número de itens não conformes", title=" ")
#'                   
NULL