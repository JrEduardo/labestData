#' @name ZimmermannTb9.26
#' @title Altura de Plantas em Fatorial 3x3x3
#' @description Dados de um estudo em fatorial 3x3x3, sobre adubação 
#'     nitrogenada e potássica e suas épocas de aplicação. Os dados são
#'     referentes a altura de plantas no cultivo da soca de arroz irrigado. 
#'     Foi realizada apenas uma repetição. 
#'     
#' @format Um \code{data.frame} com 27 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{epoca}}{Fator de níveis numéricos. Identifica a epoca da
#'     repetição.}
#'     
#' \item{\code{pota}}{Fator de níveis numéricos. Identifica o nível de potássio 
#'     aplicado.}
#'     
#' \item{\code{nitr}}{Fator de níveis numéricos. Identifica o nível de
#'     nitrogênio aplicado.}
#'
#' \item{\code{altura}}{Alturas observadas das plantas.}
#'
#' }
#' @keywords FAT fatorial
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.26, pág 190)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.26)
#'
#' str(ZimmermannTb9.26)
#'
#' xyplot(altura ~ epoca, data = ZimmermannTb9.26,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Época",
#'        ylab = "Altura das Plantas",
#'        main = "Experimento Fatorial 3x3x3",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(altura ~ pota, data = ZimmermannTb9.26,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(altura ~ nitr, data = ZimmermannTb9.26,
#'         FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
