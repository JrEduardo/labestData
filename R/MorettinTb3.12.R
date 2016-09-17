#' @name MorettinTb3.12
#' @title Importações feitas pelo Brasil
#' @description Dados sobre o valor monetário de importações feitas pelo
#'     Brasil, de acordo com o Banco Central do Brasil. Os dados
#'     referem-se a valores mensais no período de 1968 a 1974,
#'     mensurados em milhões de dólares.
#' @format Uma série temporal (classe \code{ts}) com 84 observações
#'     mensais, de janeiro de 1968 a dezembro de 1974.
#'
#' @keywords TS
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard
#'     Blucher. (Tabela 3.12 pág. 78)
#' @examples
#'
#' data(MorettinTb3.12)
#' str(MorettinTb3.12)
#'
#' MorettinTb3.12
#' summary(MorettinTb3.12)
#'
#' # Médias anuais
#' aggregate(MorettinTb3.12, FUN = mean)
#'
#' # Médias mensais
#' tapply(MorettinTb3.12, cycle(MorettinTb3.12), mean)
#'
#' library(lattice)
#' xyplot(MorettinTb3.12, type = c("o", "g"), pch = 19)
#'
#' # Decomposição sazonal da série
#' plot(stl(MorettinTb3.12, s.window = 12))
NULL
