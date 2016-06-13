#' @name ZimmermannTb9.13
#' @title Matéria Seca de Feijão em Fatorial 3x3
#' @description Dados de um estudo em ensaio fatorial 3x3, considerando 
#'     três doses de densidade de solo e uma dose intermediária de 
#'     microelementos de 1 grama por vaso de FTE-BR-12. Cada vaso continha três
#'     plantas de arroz e, adicionalmente aos microelementos , foi feita 
#'     adubação com 4g por vaso de formulado 5-30-15. Os dados são de matéria
#'     seca de feijão, sem unidade de medida. 
#'     
#' @format Um \code{data.frame} com 27 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator de níveis numéricos. Identifica a repetição da 
#'     observação.}
#'     
#' \item{\code{micro}}{Fator de níveis numericos. Identifica os microelementos
#'     presentes.}
#'     
#' \item{\code{dens}}{Fator de níveis numericos. Identifica a densidade do solo.}
#'
#' \item{\code{imseca}}{Matéria seca de feijão.}
#'
#' }
#' @keywords FAT fatorial
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.13, pág 179)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.13)
#'
#' str(ZimmermannTb9.13)
#'
#' xyplot(imseca ~ rept, data = ZimmermannTb9.13,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Repetições",
#'        ylab = expression("Matéria Seca de Feijão"),
#'        main = "Ensaio Fatorial 3x3",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(imseca ~ dens, data = ZimmermannTb9.13,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(imseca ~ micro, data = ZimmermannTb9.13,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
