#' @name MorettinTb11.4
#' @title Vazões Históricas do Rio Paranaíba
#' @description Dados sobre as vazões históricas mensais do 
#'     rio Paranaíba, na Estação Gamela (Companhia Furnas).
#'     A tabela é referente ao período de Janeiro de 1955 a Dezembro
#'     de 1975. 
#'     
#' @format Uma série temporal (classe \code{ts}), com 252 observações
#'     mensais, de janeiro de 1955 a dezembro de 1975.
#' @keywords TS
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard
#'     Blucher. (Tabela 11.4, Página 300)
#' @examples
#'
#' data(MorettinTb11.4)
#' str(MorettinTb11.4)
#' MorettinTb11.4
#'
#' # Médias anuais
#' aggregate(MorettinTb11.4, FUN = mean)
#'
#' # Médias mensais
#' tapply(MorettinTb11.4, cycle(MorettinTb11.4), mean)
#'
#' # Visualização da série
#' library(lattice)
#' xyplot(MorettinTb11.4, type = c("o", "g"), pch = 19, col = "pink")
#'
#' # Gráfico da decomposição sazonal
#' library(latticeExtra)
#' xyplot(stl(MorettinTb11.4, s.window = 12), col = "skyblue1")
#'
NULL