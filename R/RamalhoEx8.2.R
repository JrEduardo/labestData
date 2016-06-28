#' @name RamalhoEx8.2
#' @title Produ\enc{çã}{ca}o de Am\enc{ê}{e}ndoas de Clones de Caju
#' @description Experimento em delineamento de blocos casualizados para
#'     estudar a produção de amêndoas obtidos da avaliação de clones de
#'     caju, em 5 colheitas.
#' @format Um \code{data.frame} com 200 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator categórico de 10 níveis que indica os
#'     clones de caju.}
#'
#' \item{\code{colh}}{Fator categórico de 5 níveis que representa as
#'     colheitas em ordem.}
#'
#' \item{\code{bloc}}{Fator categórico de 4 níveis, usado para controle
#'     local.}
#'
#' \item{\code{prod}}{Produção de clones de caju, medido em g/planta.}
#'
#' }
#' @keywords DBC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.2, pág. 133)
#' @examples
#'
#' library(latticeExtra)
#'
#' data(RamalhoEx8.2)
#'
#' str(RamalhoEx8.2)
#'
#' xtabs(~clone + colh, data = RamalhoEx8.2)
#'
#' xyplot(prod ~ colh | clone,
#'        groups = bloc, type = "o", lty = 3,
#'        data = RamalhoEx8.2,
#'        jitter.x = TRUE,
#'        as.table = TRUE, layout = c(NA, 2),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Clone", sep = " "),
#'        xlab = "Colheita",
#'        ylab = expression("Produção"~(g~parcela^{-1})))
#'     layer(panel.xyplot(x = x, groups = NULL,
#'                        type = "a", lwd = 2, lty = 1, ...))
#'
NULL
