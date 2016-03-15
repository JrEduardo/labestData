#' @name PimentelEg4.2
#' @title Alimentação de porcos
#' @description Experimento (fictício) de alimentação de porcos em que
#'     se usaram quatro rações (A, B, C, D), cada uma fornecida a cinco
#'     animais escolhidos ao acaso. A tabela apresenta os aumentos de
#'     peso observados.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{racoes}}{Fator de 4 níveis qualitativos, usado para
#'     identificar o tipo de ração.}
#'
#' \item{\code{ganhopeso}}{Aumento do peso dos porcos, observado em
#'     quilogramas.}
#'
#' }
#' @keywords DIC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ.
#' @examples
#'
#' plot(PimentelEg4.2,
#'      xlab = "Rações",
#'      ylab = "Ganho de Peso")
#'
NULL
