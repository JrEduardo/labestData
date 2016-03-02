#' @name BanzattoQd3.4.1
#' @title Produtividades de cultivares de mandioca
#' @description Produção de mandioca em experimento de competição de
#'     cultivares de mandioca. O experimento foi instalado em
#'     delineamento inteiramente casualizado devido a área ser homogênea
#'     quanto às condições experimentais.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Cultivares de mandioca
#'     em competição no experimento.}
#'
#' \item{\code{rept}}{Inteiro que identifica a unidade experimental em
#'     cada cultivar.}
#'
#' \item{\code{prod}}{Produção observada em cada unidade experimental,
#'     em ton ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC
#' @source Banzatto, D. A., & Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (pg 50)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd3.4.1)
#'
#' aggregate(prod ~ cult,  data = BanzattoQd3.4.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(prod ~ cult, data = BanzattoQd3.4.1,
#'        xlab = "Cultivares de madioca",
#'        ylab = expression(Produtividade~de~mandioca~(t~ha^{-1})))
#'
NULL
