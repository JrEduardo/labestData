#' @name EpprechtTb6.10
#' @title Concentra\enc{çã}{ca}o de um Processo Qu\enc{í}{i}mico
#' @description Dados referentes à concentração de um processo químico
#'     registrada a cada 3 minutos.
#' 
#' 
#' @format Um \code{data.frame} com 100 observações e 1 variável, 
#'     em que
#' 
#' \describe{
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
#' qcc(EpprechtTb6.10$conc, type="xbar.one", nsigmas=3,
#'     xlab=" ", ylab="Concentração", title=" ")
#' 
#'                   
NULL
