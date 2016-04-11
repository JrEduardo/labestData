#' @name EpprechtTb7.5
#' @title Qualidade de um processo
#' @description Uma característica de qualidade de um processo será 
#'     controlada por meio de quinze observações.
#' 
#' 
#' @format Um \code{data.frame} com 15 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{obs}}{Identificação das observações.}
#' 
#' \item{\code{x}}{Observações registradas do processo.}
#' 
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 198).
#' 
#' @examples
#'
#' data(EpprechtTb7.5)
#' 
#' library(qcc)
#' 
#' obj <- qcc.groups(EpprechtTb7.5$x, EpprechtTb7.5$obs)
#' qcc(obj, type="xbar.one", nsigmas=3)
#'                   
#'                   
NULL