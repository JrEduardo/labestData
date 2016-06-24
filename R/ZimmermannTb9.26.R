#' @name ZimmermannTb9.26
#' @title Época de Aplicação de NK na Altura de Plantas
#' @description Dados de um estudo em fatorial \eqn{3^3}, sobre adubação
#'     nitrogenada e potássica e suas épocas de aplicação. Os dados são
#'     referentes a altura de plantas no cultivo da soca de arroz
#'     irrigado. Dados referen-se apenas aos valores do primeiro
#'     bloco. Veja \code{\link{ZimmermannTb9.17}}.
#' @format Um \code{data.frame} com 27 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{epoc}}{Fator categórico que representa a época de
#'     aplicação dos nutrientes.}
#'
#' \item{\code{pota}}{Fator categórico que representa a dose de potássio
#'     aplicada.}
#'
#' \item{\code{nitr}}{Fator categórico que representa a dose de
#'     nitrogênio aplicada.}
#'
#' \item{\code{alt}}{Altura das plantas (cm).}
#'
#' }
#' @keywords FAT3
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.26, pág. 190)
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' data(ZimmermannTb9.26)
#' str(ZimmermannTb9.26)
#'
#' ftable(xtabs(~epoc + nitr + pota, data = ZimmermannTb9.26))
#'
#' useOuterStrips(xyplot(alt ~ nitr + pota | epoc, outer = TRUE,
#'                       data = ZimmermannTb9.26,
#'                       type = c("p", "a"),
#'                       xlab = "Níveis de nitrogênio/potássio",
#'                       ylab = "Altura das plantas (cm)"),
#'                strip = strip.custom(
#'                    strip.name = TRUE, var.name = "Época"),
#'                strip.left = strip.custom(
#'                    factor.levels = c("Nitrogênio", "Potássio")))
#'
NULL
