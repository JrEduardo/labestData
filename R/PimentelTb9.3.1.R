#' @name PimentelTb9.3.1
#' @title Experimento de Adubaçao de Variedades de Cana-de-açúcar
#' @description Experimento com 5 variedades de cana em quadrado latino
#'     de 5 x 5, sendo cada parcela repartida em duas subparcelas, uma
#'     sem adubo e outra com adubação mineral completa.
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
#' \item{\code{varied}}{Fator de 5 níveis qualitativos, que são as
#'     diferentes variedades de cana-de-açúcar.}
#'
#' \item{\code{adub}}{Fator de 2 níveis qualitativos, do tipo binário,
#'     que indica a presença (1) ou ausência (0) de adubação mineral
#'     completa.}
#'
#' \item{\code{prod}}{Produção de de cana-de-açúcar em kg por
#'     subparcela.}
#'
#' }
#' @keywords PSS
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 9.3.1)
#' @examples
#'
#' library(lattice)
#'
#' xyplot(prod ~ varied,
#'        groups = adub,
#'        data = PimentelTb9.3.1,
#'        xlab = "Variedades x Presença de Adubação
#'        (Rosa: Presente, Azul: Ausente)",
#'        ylab = "Produção em kg por Subparcela")
#'
NULL