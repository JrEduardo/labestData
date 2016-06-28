#' @name RamalhoEg11.4
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Milho
#' @description Experimento conduzido na EMBRAPA Milho e Sorgo em 1997,
#'     envolvendo a avaliação de produção de grãos de 36 cultivares de
#'     milho, conduzido no delineamento de látice quadrado parcialmente
#'     balanceado.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 6 níveis, usado para controle local.}
#'
#' \item{\code{cult}}{Fator de 36 níveis. Tratamento aplicado
#'     para verificar a produção de grãos de milho.}
#'
#' \item{\code{prod}}{Produção de grãos de milho, medidos em kg/parcela
#'     nas parcelas.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 171)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg11.4)
#'
#' str(RamalhoEg11.4)
#'
#' addmargins(xtabs(~cult + bloc, data = RamalhoEg11.4))
#'
#' xyplot(prod ~ cult, data = RamalhoEg11.4,
#'        xlab = "Cultivares",
#'        ylab = expression("Produção de grãos"~(kg~parcela^{-1})))
#'
#' k <- nlevels(RamalhoEg11.4$cult)
#' a <- seq(0, 2 * pi, length.out = k + 1)[-(k + 1)]
#' par(mfrow = c(2, 4))
#' col <- 1
#' for (b in levels(RamalhoEg11.4$bloc)) {
#'     plot(sin(a), cos(a), asp = 1,
#'          xlim = c(-1.1, 1.1),
#'          ylim = c(-1.1, 1.1),
#'          axes = FALSE, xlab = NA, ylab = NA)
#'     mtext(paste("Bloco", b))
#'     i <- unique(as.integer(subset(RamalhoEg11.4, bloc == b)$cult))
#'     cb <- combn(x = i, m = 2)
#'     segments(x0 = sin(a[cb[1, ]]), y0 = cos(a[cb[1, ]]),
#'              x1 = sin(a[cb[2, ]]), y1 = cos(a[cb[2, ]]),
#'              col = col)
#'     text(x = 1.08 * sin(a[i]), y = 1.08 * cos(a[i]),
#'          labels = levels(RamalhoEg11.4$cult)[i])
#'     col <- col + 1
#' }
#'
NULL
