#' @name DiasEg9.4
#' @title Produ\enc{çã}{ca}o de Cultivares de Cacau
#' @description Dados de produção de cacau de 5 cultivares em um
#'     experimento em delineamento quadrado latino 5 \eqn{\times} 5.
#' @format Um \code{data.frame} com 2 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator categórico que representa o controle local
#'     nas linhas do quadrado latino.}
#'
#' \item{\code{colun}}{Fator categórico que representa o controle local
#'     nas colunas do quadrado latino.}
#'
#' \item{\code{cult}}{Fator categórico que são as cultivares de cacau
#'     avaliadas.}
#'
#' \item{\code{nfs}}{Produção de frutos sadios de cacau.}
#'
#' }
#' @keywords DQL
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exemplo 9.4, pág.247)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg9.4)
#' str(DiasEg9.4)
#'
#' xtabs(~linha + colun, data = DiasEg9.4)
#' xtabs(~cult, data = DiasEg9.4)
#'
#' reshape::cast(data = DiasEg9.4,
#'               formula = linha ~ colun, value = "cult")
#'
#' xyplot(prod ~ reorder(cult, prod),
#'        type = c("p", "a"),
#'        data = DiasEg9.4,
#'        xlab = "Cultivares",
#'        ylab = "Produção de frutos de cacau")
#'
NULL
