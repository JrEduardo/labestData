#' @name RamalhoEx7.10
#' @title Produção de Arroz em 18 Populações na F2
#' @description Experimento referente à produção de arroz obtida na
#'     avaliação de 18 populações \eqn{F_{2}} e duas linhagens
#'     utilizadas como testemunhas. O Experimento foi realizado em
#'     blocos casualizados.
#' @format Um \code{data.frame} com 540 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{pop}}{População \eqn{F_{2}} de arroz.}
#'
#' \item{\code{rept}}{Fator que indica se a produção veio da primeira ou
#'     segunda linhagem.}
#'
#' \item{\code{plant}}{Inteiro que representa o arroz no experimento.}
#'
#' \item{\code{prod}}{Produção de arroz, em g/planta.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 112).
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEx7.10)
#'
#' str(RamalhoEx7.10)
#'
#' xtabs(~pop + rept, data = RamalhoEx7.10)
#'
#' ps <- list(box.rectangle = list(col = 1, fill = c("gray90")),
#'            box.umbrella = list(col = 1, lty = 1),
#'            plot.symbol = list(col = 1, cex = 0.7))
#'
#' bwplot(prod ~ pop, data = RamalhoEx7.10,
#'        horizontal = FALSE, pch = "|",
#'        xlab = "População", ylab = "Produção de grãos",
#'        par.settings = ps)
#'
NULL
