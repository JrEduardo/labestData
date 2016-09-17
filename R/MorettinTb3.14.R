#' @name MorettinTb3.14
#' @title Consumo de Gasolina na Califórnia
#' @description Dados de uma série de consumos de gasolina no estado da
#'     Califórnia, com peridiocidade trimestral no período de 1960 a
#'     1973.
#' @format Uma série temporal (classe \code{ts}) com 56 observações
#'     trimestrais, do primeiro trimestre de 1960 ao quarto trimestre de
#'     1973.
#' @keywords TS
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard
#'     Blucher. (Tabela 3.14 pág. 82)
#' @examples
#'
#' data(MorettinTb3.14)
#' str(MorettinTb3.14)
#' MorettinTb3.14
#'
#' # Comportamento da série
#' plot(MorettinTb3.14, type = "o", pch = 19)
#'
#' # Decomposição sazonal
#' plot(stl(MorettinTb3.14, 4))
#'
#' # Autocorrelação
#' acf(MorettinTb3.14)
#'
NULL
