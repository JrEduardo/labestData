#' @name PimentelTb10.6.1
#' @title Experimento do Tipo III com recuperação da informação
#'     interblocos
#' @description Experimento em blocos imcompletos equilibrados do Tipo
#'     III com recuperação da informação interblocos, no qual
#'     temos b = v = 13, k = r = 4, \eqn{\lambda = 1} e os valores de z
#'     obtidos através de
#'     z = \eqn{\arcsin \left (\sqrt \frac{p}{100}\right)}, onde p é a
#'     porcentagem de plantas sadias.
#' @format Um \code{data.frame} com 52 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 13 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{trat}}{Fator de 13 níveis qualitativos que são os
#'     diferentes tratamentos do experimento.}
#'
#' \item{z}{Variável correspondente à porcentagem p de plantas sadias,
#'     obtida através de
#'     \eqn{z = \arcsin \left( \sqrt \frac{p}{100}\right)}.}
#'
#' }
#' @keywords DBI
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 10.6.1,
#'     pág. 198)
#' @examples
#'
#' data(PimentelTb10.6.1)
#' str(PimentelTb10.6.1)
#' 
#' library(lattice)
#'
#' xyplot(z ~ trat,
#'        groups = bloco,
#'        auto.key = list(title = "Blocos", cex.title = 1, columns = 5),
#'        data = PimentelTb10.6.1,
#'        xlab = "Tratamentos",
#'        ylab = "Z")
#'
NULL