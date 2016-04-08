#' @name EpprechtTb5.5
#' @title Medidas de dureza de peças de uma linha de produção
#' @description Dados referentes a medidas de dureza de peças, para avaliar a 
#'     capacidade de medição de um durômetro. São 10 peças medidas três vezes
#'     cada por um mesmo operador.
#' 
#' 
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' \item{\code{dur}}{Dureza da peça.}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 155).
#' 
#' @examples
#'
#' data(EpprechtTb5.5)
#' 
#' plot(tam~pc, data=EpprechtTb5.5,
#'      ylab="Tamanho",
#'      xlab="Peça", xaxt="n")
#' axis(1, 1:10)
#' abline(mean(EpprechtTb5.5$tam), 0, lty=2)
#'  
#'                   
NULL