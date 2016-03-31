#' @name ZimmermannTb13.1
#' @title IAF e idade de plantas
#' @description Em um plantio de feijão com a cultivar Jalo Precoce foram
#'     coletadas plantas em dias sequenciais (Idades), e o índice de área
#'     foliar (IAF) foi medido, sem unidade de medida.  
#' @format Um \code{data.frame} com 8 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{idade}}{Fator de níveis numericos. Indica a idade das
#'     plantas.}
#'
#' \item{\code{IAF}}{Indice de área foliar.}
#'
#' \item{\code{x2}}{É a IAF elevada ao quadrado.}
#'
#' \item{\code{y2}}{É a Idade elevada ao quadrado.}
#'
#' \item{\code{xy}}{É a multiplicação dos valores da idade pelos da IAF.}
#'
#' }
#' @keywords regressao
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 272)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb13.1)
#'
#' xyplot(IAF ~ idade, data = ZimmermannTb13.1, 
#'        type=c("p","smooth"), xlab="Idade", ylab="IAF")
#' 
#' xyplot(IAF ~ x2, data = ZimmermannTb13.1, 
#'        type=c("p","smooth"), xlab="Idade", ylab="IAF")
#' 
#' xyplot(y2 ~ x2, data = ZimmermannTb13.1, 
#'        type=c("p","smooth"), xlab="Idade", ylab="IAF")
#' 
NULL