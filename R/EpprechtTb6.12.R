#' @name EpprechtTb6.12
#' @title Peso de um Produto
#' @description Trinta observações registradas referente ao peso de um 
#'     produto.
#' 
#' 
#' @format Um \code{data.frame} com 30 observações e 1 variáveis, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{peso}}{Peso do produto.}
#'     
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 184).
#' 
#' @examples
#'
#' data(EpprechtTb6.12)
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb6.12$peso, type="xbar.one", nsigmas=3,
#'     xlab=" ", ylab="Peso", title=" ")
#' 
#'                   
NULL

