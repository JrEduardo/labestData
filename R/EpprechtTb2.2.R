#' @name EpprechtTb2.2
#' @title Volumes em embalagens de leite
#' @description Dados referentes aos volumes verificados de 
#'     leite em 100 embalagens de 1000 ml. Os dados foram extraídos 
#'     após uma alteração da pressão de operação, configurando uma causa 
#'     especial de variação.
#' 
#' @format Um \code{data.frame} com 100 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{id}}{Identificação da embalagem.}
#' 
#' \item{\code{X}}{Volume de leite presente na embalagem (ml).}
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
#' hist(EpprechtTb2.2$x, xlab="Volume (ml)", ylab="Frequência", main="")
#'                   
NULL
