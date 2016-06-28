#' @name PimentelTb17.4.1
#' @title Grupo de Ensaios de Variedades de Cana-de-a\enc{çú}{cu}car
#' @description Grupo de dois ensaios com variedades de cana-de-açúcar,
#'     realizado na Argentina por G. Kenning Voss. Os dados referem-se a
#'     um ensaio com 7 variedades de cana em 3 blocos, e outro com
#'     8 variedades em 4 blocos.
#' @format Um \code{data.frame} com 53 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de 2 níveis qualitativos que identifica os
#'     experimentos.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis qualitativos que identifica os
#'     blocos em cada experimento.}
#'
#' \item{\code{varied}}{Fator de 11 níveis qualitativos, que são as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{y}}{Variável resposta medida nas parcelas.}
#'
#' }
#' @keywords GE
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 17.4.1, pág. 322)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb17.4.1)
#' str(PimentelTb17.4.1)
#'
#' PimentelTb17.4.1$bloc <- with(PimentelTb17.4.1,
#'                               interaction(bloc, exper, drop = TRUE))
#' ftable(xtabs(~varied + exper + bloc,
#'              data = PimentelTb17.4.1))
#'
#' xyplot(y ~ reorder(varied, y), data = PimentelTb17.4.1,
#'        groups = interaction(exper, bloc, drop = TRUE),
#'        type = c("a", "p"),
#'        auto.key = list(title = "Blocos",
#'                        cex.title = 1.1, columns = 4),
#'        ylab = "Resposta",
#'        xlab = "Variedades de cana-de-açúcar")
#'
NULL
