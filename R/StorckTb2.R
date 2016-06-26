#' @name StorckTb2
#' @title Tabela referente ao peso das mudas 
#' @description Experimento referente ao peso das plantas aos 30 dias
#' após a semeadura. Houve repetição de tratamentos.
#' 
#' 
#' @format data.frame com 20 observações e 3 variáveis, em que
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais. Tratamento aplicado para
#'     controle do peso das plantas.}
#'
#' \item{rep}{Número inteiro que identifica as repetições de cada
#'     tratamento.}
#'
#' \item{peso}{Peso das plantas 30 dias após a semeadura.}
#'
#' }
#' 
#' @keywords DIC
#' 
#' @source Storck, L., Garcia, B. C., Lopes, S. J., Estefanel, 
#' V. (2011). Experimentação Vegetal (3th ed.). Santa Maria, RS: ufsm.
#' (pg 21)
#' 
#' @examples
#'
#' library(lattice)
#' 
#' data(StorckTb2)
#' 
#' xyplot(peso~rep|trat, data=StorckTb2, ylab='Peso das plantas',
#' xlab='Repetições', main='Dispersão dos pesos das plantas por 
#' tratamento')
NULL
