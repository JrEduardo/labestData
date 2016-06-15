#' @name PimentelTb20.2.1
#' @title Ensaio Fatorial de Adubação de Cana-de-açúcar
#' @description Ensaio fatorial, de \eqn{3^{2}}, de adubação de
#'     cana-de-açúcar com P e K, em 6 blocos casualizados.
#' @format Um \code{data.frame} com 9 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{P}}{Variável que indica os níveis de Fósforo (P) em cada
#'     parcela.}
#'
#' \item{\code{K}}{Variável que indica os níveis de Potássio (K) em cada
#'     parcela.}
#'
#' \item{\code{totais}}{Totais dos tratamentos em \eqn{t.ha^{-1}}.}
#'
#' }
#' @keywords FAT2
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 20.2.1, pág. 369)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb20.2.1)
#' str(PimentelTb20.2.1)
#' 
#' xyplot(totais ~ P,
#'        groups = K,
#'        type = "o",
#'        auto.key = list(title = "Níveis de Potássio (K)",
#'                        cext.tile = 1,
#'                        columns = 3),
#'        data = PimentelTb20.2.1,
#'        ylab = "Totais de Tratamentos (em t/ha)",
#'        xlab = "Níveis de Fósforo (P)")
#'
NULL