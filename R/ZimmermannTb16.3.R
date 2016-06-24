#' @name ZimmermannTb16.3
#' @title Teores de Matéria Orgânica de Solos de Várzea
#' @description Teores de matéria orgânica de solos aluviais e gely
#'     húmicos.
#' @format Um \code{data.frame} com 14 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{solo}}{Tipo de solo, sendo A - aluviais e B - gley
#'     húmicos.}
#'
#' \item{\code{mo}}{Teor de matéria orgânica do solo (\%).}
#'
#' }
#' @keywords TODO
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.3, pág. 337)
#' @examples
#'
#' # Postos.
#' rank(ZimmermannTb16.3$mo)
#'
#' aggregate(mo ~ solo, data = ZimmermannTb16.3, FUN = mean)
#'
NULL
