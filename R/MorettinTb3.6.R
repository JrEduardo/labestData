#' @name MorettinTb3.6
#' @title Índice Produto Industrial do Brasil
#' @description Dados sobre a variação mensal do índice de produto
#'     industrial (IPI) do Brasil no período de 1969 a 1980.
#' @format Uma série temporal (classe \code{ts}) com 139 observações
#'     mensais, de 1969 a 1980.
#'
#' @keywords TS
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard
#'     Blucher. (Tabela 3.6, pág. 68)
#' @examples
#'
#' data(MorettinTb3.6)
#' str(MorettinTb3.6)
#'
#' MorettinTb3.6
#' summary(MorettinTb3.6)
#'
#' library(lattice)
#' xyplot(MorettinTb3.6, type = c("o", "g"))
#'
NULL
