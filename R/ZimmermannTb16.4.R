#' @name ZimmermannTb16.4
#' @title Hastes Mortas por Elasmopalpus lignosellus L.
#' @description Dados de um experimento em delineamento inteiramente 
#'     casualizado para testar cultivares de arroz, em casa de vegetação,
#'     três das quais (A, B e C) estão presentes na tabela. Os dados são
#'     referentes ao número de hastes mortas por \emph{Elasmopalpus lignosellus}
#'     por parcela. Cada cultivar foi repetida três vezes. 
#'     
#' @format Um \code{data.frame} com 9 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{classe}}{Fator de níveis nominais. Identifica a cultivar da
#'     repetição.}
#'     
#' \item{\code{mortas}}{número de hastes mortas por \emph{Elasmopalpus 
#'     lignosellus} por parcela.}
#'     
#' \item{\code{posto}}{Posto da váriavel mortas.}
#'     
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.4, pág 341)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.4)
#'
#' str(ZimmermannTb16.4)
#'
#' xyplot(mortas ~ classe, data = ZimmermannTb16.4,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Cultivar da Planta",
#'        ylab = "Número de Hastes Mortas",
#'        main = "Hastes Mortas por Elasmopalpus",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(mortas ~ classe, data = ZimmermannTb16.4,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
