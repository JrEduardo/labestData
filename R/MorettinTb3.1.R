#' @name MorettinTb3.1
#' @title Consumo de Energia Elétrica no Espírito Santo
#' @description Dados sobre o consumo de energia elétrica no Espírito
#'     Santo, de Janeiro de 1977 a Dezembro de 1978, arredondados.
#' @format Uma série temporal (classe \code{ts}) com 24 observações
#'     mensais, de 1977 a 1978.
#'
#' @keywords TS
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard
#'     Blucher. (Tabela 3.1, pág. 49; tabela 3.2, pág. 51; tabela 3.3,
#'     pág. 54; tabela 3.4 pág. 63)
#' @examples
#'
#' data(MorettinTb3.1)
#' str(MorettinTb3.1)
#'
#' library(lattice)
#'
#' # Série completa
#' MorettinTb3.1
#' summary(MorettinTb3.1)
#' xyplot(MorettinTb3.1, type = c("o", "g"))
#'
#' # Apenas os dados da tabela 3.1 e 3.3
#' (da <- window(MorettinTb3.1, end = c(1978, 12)))
#' summary(da)
#' xyplot(da, type = c("o", "g"))
#'
#' # Apenas os dados da tabela 3.2
#' (da <- window(MorettinTb3.1, start = c(1979, 1)))
#' summary(da)
#' xyplot(da, type = c("o", "g"))
#'
NULL
