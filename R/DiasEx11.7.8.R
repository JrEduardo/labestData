#' @name  DiasEx11.7.8
#' @title Competi\enc{çã}{ca}o de Gen\enc{ó}{o}tipos de Alho
#' @description Resultados de um grupo de experimento de competiação de
#'     genótipos de alho. Os valores disponíveis são as médias dos
#'     genótipos em cada experimento.
#' @format Um \code{data.frame} com 16 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{geno}}{Fator categórico que representa os genótipos de
#'     alho.}
#'
#' \item{\code{exper}}{Fator categórico que representa os experimentos.}
#'
#'  \item{\code{prod}}{Produção de bulbos de alho.}
#'
#' }
#' @keywords DBC
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exercício 8, Cap. 11, pág. 321
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx11.7.8)
#' str(DiasEx11.7.8)
#'
#'
#' xtabs(~geno + exper, data = DiasEx11.7.8)
#'
#' # Totais.
#' with(DiasEx11.7.8,
#'      addmargins(tapply(prod,
#'                        list(geno = geno, exper = exper),
#'                        FUN = sum)))
#'
#' xyplot(prod ~ geno, groups = exper, data = DiasEx11.7.8,
#'        type = c("p", "a"),
#'        xlab = "Genótipos",
#'        ylab = "Produção",
#'        auto.key = list(title = "Experimentos", cex.title = 1.1,
#'                        columns = 4))
#'
NULL
