#' @name PaulaEx3.7.21
#' @title Espécies de lagarto
#' @description Dados referentes à distribuição de duas espécies de
#'     lagarto (grahani e opalinus) segundo quatro fatores: 
#'     periodo do dia, comprimento da madeira, largura da madeira,
#'     local de ocupação.
#' @format Um \code{data.frame} com 23 observações e 6 variáveis.
#' \describe{
#' 
#' \item{\code{grahani}}{ Quantidade de lagartos da espécie grahani. }
#' 
#' \item{\code{opalinus}}{ Quantidade de lagartos da espécie opalinus. }
#' 
#' \item{\code{periodo}}{ Fator com 3 níveis referentes ao período do 
#'     dia (manhã, meio-dia, tarde). }
#' 
#' \item{\code{comp}}{ Fator com 2 níveis referentes ao comprimento da
#'      madeira (curta, comprida).}
#' 
#' \item{\code{larg}}{ Fator com 2 níveis referentes a largura da 
#'     madeira (estreita, larga). }
#' 
#' \item{\code{local}}{ Fator com 2 níveis referentes ao local de
#'     ocupação (claro, escuro). }
#' 
#' }
#' @keywords
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#' computacional. São Paulo, SP: IME-USP. (Exercício 21, pág. 277)
#' @examples
#' 
#' library(lattice)
#' data(PaulaEx3.7.21)
#' 
#' histogram(PaulaEx3.7.21$grahani, xlab = "Quantidade", 
#'     ylab = "Percentual do Total")
#'     
#' histogram(PaulaEx3.7.21$opalinus, xlab = "Quantidade", 
#'     ylab = "Percentual do Total")
#' 
NULL