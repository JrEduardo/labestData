#' @name EpprechtTb6.10
#' @title Concentração de um processo químico
#' @description Dados referentes à concentração de um processo químico
#'     registrados a cada 3 minutos.
#' 
#' 
#' @format Um \code{data.frame} com 100 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{amostra}}{Identificação da amostra.}
#' 
#' \item{\code{conc}}{Concentração registrada na amostra.}
#'  
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 182).
#' 
#' @examples
#'
#' data(EpprechtTb6.10)
#' 
#' library(qcc)
#' 
#' obj <- qcc.groups(EpprechtTb6.10$conc, EpprechtTb6.10$amostra)
#' qcc(obj, type="xbar.one", nsigmas=3)
#' 
#'                   
NULL