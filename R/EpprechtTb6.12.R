#' @name EpprechtTb6.12
#' @title Peso de um produto
#' @description Trinta observações registradas referente ao peso de um 
#'     determinado produto.
#' 
#' 
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{cam}}{Identificação da camada de produto utilizada para 
#'     a medição do peso.}
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
#' obj <- qcc.groups(EpprechtTb6.12$peso, EpprechtTb6.12$cam)
#' qcc(obj, type="xbar.one", nsigmas=3)
#' 
#'                   
NULL