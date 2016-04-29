#' @name PimentelTb7.2.1
#' @title Experimento de Adubação de Milho
#' @description São apresentadas, na tabela, as produções de milho de
#'     parcelas de um experimento fatorial, de \eqn{2^{3}}, em blocos
#'     casualizados.
#' @format Um \code{data.frame} com 32 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{N}}{Fator de 2 níveis qualitativos, que é usado para o
#'     controle do efeito que o Nitrogênio (N) causa no experimento,
#'     sendo que a variável assume 1, quando houver Nitrogênio na
#'     composição e -1 caso contrário.}
#'
#' \item{\code{P}}{Fator de 2 níveis qualitativos, que é usado para o
#'     controle do efeito que o Fósforo (P) causa no experimento,
#'     sendo que a variável assume 1, quando houver Fósforo na
#'     composição e -1 caso contrário.}
#'
#' \item{\code{K}}{Fator de 2 níveis qualitativos, que é usado para o
#'     controle do efeito que o Potássio (K) causa no experimento,
#'     sendo que a variável assume 1, quando houver Potássio na
#'     composição e -1 caso contrário.}
#'     
#' \item{\code{prod}}{Produção de milho, em t.\eqn{ha^{-1}}, de parcelas
#'     do experimento fatorial.}
#'
#' }
#' @keywords FAT3
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 7.2.1)
#' @examples
#'
#' par(mfrow = c(2,3))
#'
#' boxplot(prod ~ N,
#'         data = PimentelTb7.2.1,
#'         xlab = "Nitrogênio (N)",
#'         ylab = "Produção em t/ha")
#'
#' boxplot(prod ~ P,
#'         data = PimentelTb7.2.1,
#'         xlab = "Fósforo (P)",
#'         ylab = "Produção em t/ha")
#'
#' boxplot(prod ~ K,
#'         data = PimentelTb7.2.1,
#'         xlab = "Potássio (K)",
#'         ylab = "Produção em t/ha")
#'
#' boxplot(prod ~ N + P,
#'         data = PimentelTb7.2.1,
#'         xlab = "Nitrogênio (N) + Fósforo (P)",
#'         ylab = "Produção em t/ha")
#'
#' boxplot(prod ~ N + K,
#'         data = PimentelTb7.2.1,
#'         xlab = "Nitrogênio (N) + Potássio (K)",
#'         ylab = "Produção em t/ha")
#'
#' boxplot(prod ~ P + K,
#'         data = PimentelTb7.2.1,
#'         xlab = "Fósforo (P) + Potássio (K)",
#'         ylab = "Produção em t/ha")
#'
#' par(mfrow = c(1,1))
#'
#' boxplot(prod ~ N + P + K,
#'         data = PimentelTb7.2.1,
#'         xlab = "Nitrogênio (N) + Fósforo (P) + Potássio (K)",
#'         ylab = "Produção em t/ha")
#'
NULL