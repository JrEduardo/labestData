#' @name EpprechtTb7.5
#' @title Qualidade de um Processo
#' @description Uma característica de qualidade de um processo  
#'     monitorada por meio de quinze observações.
#' 
#' 
#' @format Um \code{data.frame} com 15 observações e 1 variáveis, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{x}}{Observações registradas do processo.}
#' 
#' }
#'
#' @keywords CEQ EWMA
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
#' 
#' qcc(EpprechtTb7.5, type="xbar.one", nsigmas=3,
#'      xblab=" ", ylab="Observações", title=" ")
#' ewma(EpprechtTb7.5, nsigmas = 3,plot = TRUE,
#'      xblab=" ", ylab="Observações", title=" ")
#' 
#'                   
NULL