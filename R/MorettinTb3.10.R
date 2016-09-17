#' @name MorettinTb3.10
#' @title Temperaturas em São Paulo
#' @description Dados de uma série de temperaturas em São Paulo,
#'     mensuradas como média de 23 leituras diárias durante um
#'     mês. Dados registrados no período de 1952 a 1956.
#' @format Uma série temporal (classe \code{ts}) com 60 observações
#'     mensais, de janeiro de 1952  a dezembro de 1956.
#'
#' @keywords TS
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard
#'     Blucher. (Tabela 3.10 pág. 75)
#' @examples
#'
#' data(MorettinTb3.10)
#' str(MorettinTb3.10)
#'
#' MorettinTb3.10
#' summary(MorettinTb3.10)
#' tapply(MorettinTb3.10, cycle(MorettinTb3.10), summary)
#'
#' library(lattice)
#' xyplot(MorettinTb3.10, type = c("o", "g"), pch = 19)
#'
NULL
