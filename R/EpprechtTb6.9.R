#' @name EpprechtTb6.9
#' @title Volume de refrigerante em garrafas plásticas
#' @description As 20 amostras são realizadas de uma em uma hora.
#'     Em cada amostra são registrados 3 volumes de refrigerante 
#'     (x1, x2 e x3).
#' 
#' 
#' @format Um \code{data.frame} com 20 observações e 4 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{amostra}}{Identificação da amostra.}
#' 
#' ' \item{\code{ord}}{Fator que indica a ordem dos registros de uma amostra
#'     (1 = primeiro volume registrado, 2 = segundo volume, 3 = terceiro
#'     volume.}
#'  
#' \item{\code{vol}}{Volumes registrados.}
#' 
#' }
#'
#' @keywords CEQ 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 180).
#' 
#' @examples
#'
#' data(EpprechtTb6.9)
#' 
#' library(qcc)
#' 
#' obj <- qcc.groups(EpprechtTb6.9$vol, EpprechtTb6.9$amostra)
#' qcc(obj, type="xbar", nsigmas=3)
#' 
#'                   
NULL