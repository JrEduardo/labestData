#' @name EpprechtTb8.15
#' 
#' @title Controle de Qualidade para o N\enc{ú}{u}mero de Defeitos em um Processo 
#' de Produ\enc{çã}{ca}o de Tecidos
#' 
#' @description Para monitorar um processo de produção de tecidos
#'     estampados foram examinados os 10 primeiros rolos, com 200m de 
#'     tecido cada. Foi registrado o número de defeitos encontrados em 
#'     cada rolo. 
#' 
#' @format Um \code{data.frame} com 10 observações e 1 variável, 
#'     em que
#' 
#' \describe{
#' 
#' \item{\code{def}}{Defeitos encontrados no rolo.}
#' 
#' }
#'
#' @keywords CEQ
#' 
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 231).
#' 
#' @examples
#'
#' data(EpprechtTb8.15) 
#' 
#' library(qcc)
#' 
#' qcc(EpprechtTb8.15, type="c", 
#'     xlab="Amostra", ylab="Número de defeitos", title=" ")
#'                   
NULL
