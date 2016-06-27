#' @name EpprechtTb8.13
#' @title Controle de qualidade para o número de pedidos de compra com erro
#' @description Uma grande companhia faz o controle estatístico de
#'     seus processos administrativos. Para isso, são coletados
#'     semanalmente o número de pedidos de compra e o número de pedidos 
#'     de compra com erros.
#' 
#' @format Um \code{data.frame} com 15 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{pc}}{Número de pedidos de compra.}
#' 
#' \item{\code{pce}}{Número de pedidos de compra com erros.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 229).
#' 
#' @examples
#'
#' data(EpprechtTb8.13) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.13$pce, type="p", sizes=EpprechtTb8.13$pc,
#'     xlab="Semana", ylab="Proporção de pedidos com erros", title=" ")
#' 
#'                   
NULL