#' @name EpprechtTb5.6
#' @title Avaliação das leituras de um micrômetro
#' @description Dados referentes às leituras de um micrômetro usado para 
#'     medir peças com dimensão nominal de 20 mm, utilizando um bloco padrão de 
#'     dimensão 20 mm como referência. O bloco foi
#'     medido dez vezes por um mesmo operador.
#' 
#' 
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{med}}{Identificador de medição da peça.}
#' 
#' \item{\code{leit}}{Leitura do micrômetro (mm).}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 156).
#' 
#' @examples
#'
#' data(EpprechtTb5.6)
#' 
#' grid(nx=NA, ny=NULL)
#' par(new=TRUE)
#' boxplot(EpprechtTb5.6$leit, 
#'         col="#F0FFFF",
#'         ylab="Leitura",
#'         main="Leitura de micrômetro")
#' 
#'                   
NULL