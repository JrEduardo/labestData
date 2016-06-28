#' @name RamalhoEg11.10
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Sorgo
#' @description Experimento da avaliação da produção de 40 cultivares de sorgo
#'     conduzido no delineamento alfa-látice.
#' @format Um \code{data.frame} com 120 observações e 3 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 8 níveis, usado para controle local. Os
#'     blocos são incompletos, ou seja, o tamanho do bloco é menor que o
#'     número de níveis de cultivares.}
#'
#' \item{\code{cult}}{Fator de 40 níveis que são as cultivares de
#'     sorgo.}
#'
#' \item{\code{prod}}{Produção de grãos de sorgo, medidos em
#'     kg/parcela.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 181)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg11.10)
#'
#' str(RamalhoEg11.10)
#'
#' addmargins(xtabs(~cult + bloc, data = RamalhoEg11.10))
#'
#' xyplot(prod ~ cult, data = RamalhoEg11.10,
#'        xlab = "Cultivares",
#'        ylab = expression("Produção de grãos"~(kg~parcela^{-1})))
#'
#' k <- nlevels(RamalhoEg11.10$cult)
#' a <- seq(0, 2 * pi, length.out = k + 1)[-(k + 1)]
#' par(mfrow = c(2, 4))
#' col <- 1
#' for (b in levels(RamalhoEg11.10$bloc)) {
#'     plot(sin(a), cos(a), asp = 1,
#'          xlim = c(-1.1, 1.1),
#'          ylim = c(-1.1, 1.1),
#'          axes = FALSE, xlab = NA, ylab = NA)
#'     mtext(paste("Bloco", b))
#'     i <- unique(as.integer(subset(RamalhoEg11.10, bloc == b)$cult))
#'     cb <- combn(x = i, m = 2)
#'     segments(x0 = sin(a[cb[1, ]]), y0 = cos(a[cb[1, ]]),
#'              x1 = sin(a[cb[2, ]]), y1 = cos(a[cb[2, ]]),
#'              col = col)
#'     text(x = 1.08 * sin(a[i]), y = 1.08 * cos(a[i]),
#'          labels = levels(RamalhoEg11.10$cult)[i])
#'     col <- col + 1
#' }
#'
NULL
