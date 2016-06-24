#' @name ZimmermannTb16.4
#' @title Hastes Mortas de Arroz por \emph{Elasmopalpus lignosellus} L.
#' @description Dados de um experimento em delineamento inteiramente
#'     casualizado que estudou cultivares de arroz, em casa de
#'     vegetação. Os dados são referentes ao número de hastes mortas por
#'     \emph{Elasmopalpus lignosellus} por parcela. Cada cultivar foi
#'     repetida três vezes.
#' @format Um \code{data.frame} com 9 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que identifica as cultivares de
#'     arroz.}
#'
#' \item{\code{nmort}}{Número de hastes mortas por \emph{Elasmopalpus
#'     lignosellus} por parcela.}
#'
#' \item{\code{posto}}{Posto da váriavel \code{nmort}.}
#'
#' }
#' @keywords DIC contagem
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.4, pág. 341)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.4)
#' str(ZimmermannTb16.4)
#'
#' xyplot(nmort ~ cult, data = ZimmermannTb16.4,
#'        xlab = "Cultivar",
#'        ylab = "Número de hastes mortas")
#'
#' rank(ZimmermannTb16.4$nmort)
#'
NULL
