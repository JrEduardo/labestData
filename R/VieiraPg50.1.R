#' @name VieiraPg50.1
#' @title Experimento em Delineamento Inteiramente Casualizado
#' @description Experimento em delineamento inteiramente casualizado que
#'     estudou o efeito de um fator de 5 níveis categóricos em uma
#'     resposta na escala dos números inteiros.
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator categórico de 5 níveis.}
#'
#' \item{\code{resp}}{Variável resposta em números inteiros.}
#'
#' }
#' @keywords DIC
#' @source Vieira, S. (1999). Estatística experimental (2th ed.). São
#'     Paulo, SP: Atlas. (pág 50, exercício 2).
#' @examples
#'
#' data(VieiraPg50.1)
#'
#' str(VieiraPg50.1)
#'
#' library(lattice)
#'
#' xyplot(resp ~ trat, data = VieiraPg50.1,
#'        jitter.x = TRUE,
#'        xlab = "Tratamento",
#'        ylab = "Resposta")
#'
NULL
