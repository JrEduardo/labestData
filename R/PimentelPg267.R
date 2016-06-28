#' @name PimentelPg267
#' @title Percentual de Sorgo na Ra\enc{çã}{ca}o para Desenvolvimento de Pintos
#' @description Ensaio de Torres e Pimentel-Gomes (1959) em que foram
#'     estudadas 4 rações para pintos dos dois sexos (machos e fêmeas),
#'     instalado um delineamento inteiramente casualizado com duas
#'     repetições. Cada parcela tinha inicialmente 13 aves, mas algumas
#'     morreram, de modo que, na pesagem final, com 4 semanas de idade,
#'     algumas parcelas contavam com 12 animais apenas.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{sexo}}{Fator de 2 níveis qualitativos, que refere-se ao
#'     sexo do animal: masculino (M) e eeminino (F).}
#'
#' \item{\code{sorgo}}{Fator de 4 níveis que representa o percentual de
#'     sorgo na ração: 0, 10, 20 e 30\% de sorgo na ração.}
#'
#' \item{\code{animais}}{Número de aves na parcela.}
#'
#' \item{\code{peso}}{Peso total das aves da parcela, em decagramas.}
#'
#' }
#' @keywords DIC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Página 267)
#'
#' Torres, A. P., Pimentel-Gomes, F. Substituição de subprodutos de
#'     trigo pelo sorgo moído na alimentação de pintos. Escola Superior
#'     de Agricultura "Luiz de Queiroz". Anais E.S.A. "Luiz de Queiroz"
#'     16:251-76, 1959.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg267)
#' str(PimentelPg267)
#'
#' xyplot(peso ~ sorgo, data = PimentelPg267,
#'        groups = sexo, type = c("a", "p"),
#'        auto.key = list(title = "Sexo", cex.title = 1,
#'                        columns = 2),
#'        ylab = "Peso Total (em decagramas)",
#'        xlab = "Percentual de sorgo na ração (%)")
#'
NULL
