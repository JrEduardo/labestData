#' @name VieiraEx7.3
#' @title Experimento de um Fator em DIC com N\enc{ú}{u}mero Diferente de
#'     Repeti\enc{çõ}{co}es
#' @description Dados de um experimento inteiramente ao acaso com número
#'     diferente de repetições.
#' @format Um \code{data.frame} com 18 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{tratamento}}{Tratamento aplicado na unidade
#'     experimental.}
#'
#' \item{\code{valor}}{Valor da resposta medida nas unidades
#'     experimentais.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.).
#'     São Paulo, SP: Atlas. (Exercício 7.3, pág. 85).
#' @examples
#'
#' data(VieiraEx7.3)
#' str(VieiraEx7.3)
#'
#' xtabs(~tratamento, data = VieiraEx7.3)
#'
#' library(lattice)
#'
#' xyplot(valor ~ tratamento, data = VieiraEx7.3,
#'        jitter.x = TRUE, type = c("p", "a"))
#'
NULL
