#' @name PaulaEx3.7.8
#' @title Salário de Executivos
#' @description Dados referentes a um experimento desenvolvido para avaliar
#'      a germinação de um determinado tipo de semente. A tabela abaixo 
#'      apresenta o número de sementes que germinaram após cinco dias para 
#'      cada 100 sementes submetidas a cada condição experimental.
#'      
#' @format Um \code{data.frame} com 18 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{temp}}{Temperatura da germinação.}
#' 
#' \item{\code{numid}}{Nível da umidade.}
#' 
#' \item{\code{ntemp}}{Nível da temperatura.}
#' 
#' \item{\code{sgerm}}{Número de sementes que germinaram.}
#' 
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Ex 3.7.8, pág. 270)
#'
#' @examples
#'
#' data(PaulaEx3.7.8)
#' 
#' str(PaulaEx3.7.8)
#' 
#' library(lattice)
#' 
#' PaulaEx3.7.8$ntemp <- as.factor(PaulaEx3.7.8$ntemp)
#' 
#' PaulaEx3.7.8$numid <- as.factor(PaulaEx3.7.8$numid)
#' xyplot(sgerm ~ numid | ntemp,
#'        data = PaulaEx3.7.8,
#'        xlab = "Nível de temperatura",
#'        ylab = "Número de sementes germinadas")
#'
NULL