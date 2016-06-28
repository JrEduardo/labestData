#' @name DiasEx9.6.4
#' @title Produ\enc{çã}{ca}o de Frutos de Variedades de Manga
#' @description Experimento instalado em delineamento inteiramente
#'     casualizado, onde foram estudadas 5 variedades de manga com cada
#'     parcela constituída de 3 arvores. Cada variedade teve 6
#'     repetições. Foi avaliada a produção de frutos por parcela.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator categórico que representa as variedades de
#'     manga.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições.}
#'
#' \item{\code{frut}}{Total de frutos por parcela, sendo que uma parcela
#'     tem 3 plantas.}
#'
#' }
#' @keywords DIC contagem
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'      Experimental. Viçosa, MG: UFV. (Exercício 4, Cap. 9, pág. 260)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEx9.6.4)
#' str(DiasEx9.6.4)
#'
#' xtabs(~varied, data = DiasEx9.6.4)
#' unstack(DiasEx9.6.4, frut ~ varied)
#'
#' xyplot(frut ~ reorder(varied, frut), data = DiasEx9.6.4,
#'        xlab = "Variedades de manga",
#'        ylab = "Número de frutos por parcela")
#'
NULL
