#' @name DiasEx9.6.10
#' @title Ensaio de Competi\enc{çã}{ca}o de Cultivares de Caf\enc{é}{e}
#' @description Experimento de competição de cultivares de café
#'     instalado em delineamento quadrado latino.
#' @format Um \code{data.frame} com 25 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator categórico que faz o controle local nas
#'     linhas do quadrado latino.}
#'
#' \item{\code{colun}}{Fator categórico que faz o controle local nas
#'     colunas do quadrado latino.}
#'
#' \item{\code{cult}}{Fator categórico que são as cultivares de café.}
#'
#' \item{\code{prod}}{Produtividade em sacas beneficiadas.}
#' }
#'
#' @keywords DQL
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exercício 10, Cap. 9, pág. 261)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.10)
#' str(DiasEx9.6.10)
#'
#' xtabs(~linha + colun, data = DiasEx9.6.10)
#' xtabs(~cult, data = DiasEx9.6.10)
#'
#' reshape::cast(data = DiasEx9.6.10,
#'               formula = linha ~ colun, value = "cult")
#'
#' xyplot(prod ~ reorder(cult, prod), data = DiasEx9.6.10,
#'        xlab = "Cultivares de café",
#'        ylab = "Produtividade (sacas beneficiadas)")
#'
NULL
