#' @name EpprechtTb5.4
#' @title Capacidade de medição de um relógio apalpador 
#' @description Dados utilizados para avaliar a capacidade
#'     de um relógio apalpador na medição do erro de batida radial de 
#'     um eixo retificado. São 20 peças medidas por um mesmo
#'     operador, duas vezes cada. 
#' 
#' @format Um \code{data.frame} com 40 observações e 2 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' 
#' \item{\code{tam}}{Tamanho da peça (décimos de mícrons).}
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
#' data(EpprechtTb5.4)
#' 
#' plot(tam ~ pc,data=EpprechtTb5.4,
#'      ylab = "Tamanho",
#'      xlab = "Peça", xaxt = "n")
#' axis(1, 1:20)
#' abline(mean(EpprechtTb5.4$tam), 0, lty=2)
#' 
#'                   
NULL