#' @name EpprechtTb2.2
#' @title Dados referentes à quantidade de leite
#' @description Dados referentes à variável X que representa o volume de
#'     leite presente em um pacote, sendo ideal que em cada pacote 
#'     houvesse exatamente 1000 ml de leite. Os dados foram extraídos 
#'     após uma alteração da pressão de operação, sendo assim, são dados 
#'     que sofrem causas especiais.
#' 
#' @format Um \code{data.frame} com 100 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{id}}{Identificação do pacote.}
#' 
#' \item{\code{X}}{Volume de leite presente no pacote (ml).}
#' 
#' 
#' }
#'
#' @keywords variabilidade
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 26).
#' 
#' @examples
#'
#' data(EpprechtTb2.2) 
#' 
#' hist(EpprechtTb2.2$x)
#'                   
NULL