#' @name EpprechtTb8.14
#' @title Controle de Qualidade para o Número de Defeitos em uma Montagem 
#' de Placa de Circuito
#' 
#' @description Para monitorar um processo de montagem de placas de 
#'     circuitos foram registrados os números de componentes montados 
#'     erradamente a cada 5 placas (cada amostra consiste em 5 placas). 
#' 
#' @format Um \code{data.frame} com 20 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{nconf}}{Número de não-conformidades encontradas na amostra.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 230).
#' 
#' @examples
#'
#' data(EpprechtTb8.14) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.14, type="c", size=5,
#'     xblab="Amostras", ylab="Número de itens não conformes", title=" ")
#'                   
NULL