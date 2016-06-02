#' @name StorckTb8
#' @title Experimento no Delimeamento Inteiramente Casualizado Com Um
#'     Fator
#' @description Dados referentes a um experimento conduzido no
#'     delineamento inteiramente casualizado. Não há expicação prática
#'     para as variáveis do experimento.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator com seis níveis que representam os
#'     tratamentos aplicados.}
#'
#' \item{\code{rept}}{Inteiro que representa as repetições de cada
#'     tratamento.}
#'
#' \item{\code{res}}{Representa a variável resposta observada.}
#'
#' }
#' @keywords DIC
#' @source Storck, L., Garcia, B. C., Lopes, S. J., Estefanel,
#'     V. (2011). Experimentação Vegetal (3th ed.). Santa Maria, RS:
#'     UFSM. (Tabela 8, pág. 33)
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb8)
#' str(StorckTb8)
#'
#' xyplot(res ~ trat, data = StorckTb8, jitter.x = TRUE,
#'        xlab = "Tratamentos", ylab = "Resposta")
#'
NULL
