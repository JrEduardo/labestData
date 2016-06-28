#' @name EpprechtTb8.16
#' @title Controle de qualidade na produ\enc{çã}{ca}o de cabos el\enc{é}{e}tricos
#' @description Dados referentes ao monitoramento do processo de produção
#'     de cabos elétricos. Foi registrada a quantidade de defeitos
#'     encontrados em amostras de determinada quantidade de metros de cabo.
#' 
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{met}}{Quantidade de cabo avaliado em cada amostra (em metros).}
#' 
#' \item{\code{def}}{Número de defeitos encontrados.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 233).
#' 
#' @examples
#'
#' data(EpprechtTb8.16) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.16$def, type="u", sizes=EpprechtTb8.16$met,
#'     xlab="Amostra", ylab="Quantidade de defeitos", title=" ")  
#'                    
NULL
