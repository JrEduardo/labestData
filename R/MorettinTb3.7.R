#' @name MorettinTb3.7
#' @title Previsões de IPI
#' @description Previsões para os meses de Janeiro a Maio de 1977 de IPI,
#'     com os coeficientes substituídos por suas estimativas. 
#' @format Uma série temporal (classe \code{ts})} com 5 observações e 3 
#'     variáveis, em que
#'
#' \describe{
#'
#' \item{\code{Mes}}{Fator que indica o mês da observação.}
#'
#' \item{\code{h}}{Número inteiro que indica o índice da observação.}
#'
#' \item{\code{Z}}{Nímero decimal que indica o Z estimado para cada
#'     observação.}
#'    
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.7
#'     pág. 69)
#' @examples
#'
#' library(lattice)
#' data(MorettinTb3.7)
#' 
#' str(MorettinTb3.7)
#' fivenum(MorettinTb3.7$[,3])
#' 
#' xyplot(MorettinTb3.7[,3], col = 30, ylab = "Previsões de Z",
#'        xlab = "Meses",  lwd = 2, type = c("l", "g"), 
#'        scales = list(y = list(rot = 0)))
NULL