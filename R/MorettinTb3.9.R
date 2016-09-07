#' @name MorettinTb3.9
#' @title Série de IPI livre de componente sazonal
#' @description Dados de uma série de IPI livre de componente sazonal, de
#'     Janeiro de 1973 a Dezembro de 1976. 
#' @format Uma série temporal (classe \code{ts}) com 12 observações
#'     mensais, de 1973 e 1976, em que
#'
#' \describe{
#'
#' \item{\code{Mes}}{Fator que indica o mês da observação.}
#'
#' \item{\code{1973}}{Número decimal que indica as observações ocorridas
#'     em 1973.}
#'     
#' \item{\code{1974}}{Número decimal que indica as observações ocorridas
#'     em 1974.}
#'     
#' \item{\code{1975}}{Número decimal que indica as observações ocorridas
#'     em 1975.}
#'     
#' \item{\code{1976}}{Número decimal que indica as observações ocorridas
#'     em 1976.}
#'     
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.9
#'     pág. 72)
#' @examples
#'
#' data(MorettinTb3.9)
#' 
#' library(lattice)
#' library(latticeExtra)
#' 
#' str(MorettinTb3.9)
#' 
#' xyplot(MorettinTb3.9[ , -1], type = c("l", "g"), 
#'        layout = c(2, 2), xlab = "Meses", ylab = "Valores", 
#'        main = "Série de IPI", strip = strip.custom(bg = "white"), 
#'        lwd = 2, col = c("wheat3", "violetred", "blue", "palegreen2"),
#'                scales = list(y = list(rot = 0)))
NULL