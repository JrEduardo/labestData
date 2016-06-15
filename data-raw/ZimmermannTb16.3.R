#' @name ZimmermannTb16.3
#' @title Teor de Materia Orgânica em Solos Aluviais
#' @description Dados de um estudo sobre teoress de matéria orgânica em solos
#'     aluviais e gley húmicos. Os tipos de solo são: A = solos aluviais e B =
#'     solos gley húmicos. 
#'     
#' @format Um \code{data.frame} com 14 observações e 2 variáveis
#'
#' \describe{
#' 
#' \item{\code{MO}}{Médias nos ensaios irrigados.}
#' 
#' \item{\code{tipo}}{Fator de niveis nominais. Indica o tipo do solo da 
#'     observaçao. }
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.3, pág 337)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.3)
#'
#' str(ZimmermannTb16.3)
#'
#' xyplot(MO ~ tipo, data = ZimmermannTb16.3,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Tipo de Solo",
#'        ylab = "Matéria Orgânica",
#'        main = "Teor de Materia Orgânica em Solos Aluviais",
#'        scales = list(x = list(rot = 90)))
NULL
