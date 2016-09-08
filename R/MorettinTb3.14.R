#' @name MorettinTb3.14
#' @title Consumo de gasolina na Califórnia
#' @description Dados de uma série de consumo de gasolina na Califórnia, 
#'     com uma peridiocidade trimestral. A tabela refere-se aos anos de 1960 a
#'     1973.
#' @format Uma série temporal (classe \code{ts}) mensal de 1960 a 1973, 
#'     com 14 observações, em que
#'
#' \describe{
#'
#' \item{\code{prim}}{Número inteiro que indica as observações referentes ao
#'     primeiro semestre de cada ano.}
#' 
#' \item{\code{seg}}{Número inteiro que indica as observações referentes ao
#'     segundo semestre de cada ano.}
#' 
#' \item{\code{terc}}{Número inteiro que indica as observações referentes ao
#'     terceiro semestre de cada ano.}
#'     
#' \item{\code{quar}}{Número inteiro que indica as observações referentes ao
#'     quarto semestre de cada ano.}
#'      
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.14
#'     pág. 82)
#' @examples
#'
#' data(MorettinTb3.14)
#' 
#' library(lattice)
#' str(MorettinTb3.14)
#' 
#' fivenum(MorettinTb3.14)
#' 
#' colnames(MorettinTb3.14) <- c("Primeiro", "Segundo", "Terceiro", "Quarto")
#' xyplot(MorettinTb3.14, type = c("l", "g"), 
#'        layout = c(2, 2), xlab = "Trimestre", ylab = "Milhões de Galões", 
#'        main = "Consumo de gasolina na Califórnia", strip = strip.custom(bg = "white"), 
#'        lwd = 2, col = c("violetred", "blue", "yellow", "palegreen2"), 
#'        scales = list(y = list(rot = 0)))
NULL