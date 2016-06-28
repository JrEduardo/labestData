#' @name PimentelTb9.3.1
#' @title Experimento de Aduba\enc{çã}{ca}o de Variedades de Cana-de-a\enc{çú}{cu}car
#' @description Experimento com 5 variedades de cana-de-açúcar, em
#'     delineamento quadrado latino de 5 x 5, sendo cada parcela
#'     dividida em duas subparcelas, uma sem adubo e outra com adubação
#'     mineral completa.
#' @format Um \code{data.frame} com 50 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as linhas do quadrado latino de 5 x 5.}
#'
#' \item{\code{coluna}}{Fator de 5 níveis qualitativos, usado para
#'     identificar as colunas do quadrado latino de 5 x 5.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos que são as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{adub}}{Fator de 2 níveis codificados do tipo binário, que
#'     indica a presença (1) ou ausência (0) de adubação mineral
#'     completa.}
#'
#' \item{\code{prod}}{Produção de de cana-de-açúcar em kg por
#'     subparcela.}
#'
#' }
#' @keywords PS DQL
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 9.3.1)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb9.3.1)
#' str(PimentelTb9.3.1)
#'
#' xyplot(prod ~ varied,
#'        groups = adub, type = c("p", "a"),
#'        data = PimentelTb9.3.1,
#'        xlab = "Variedades",
#'        ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Adubação", cex.title = 1.1,
#'                        columns = 2))
#'
NULL
