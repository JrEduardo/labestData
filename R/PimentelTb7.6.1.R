#' @name PimentelTb7.6.1
#' @title Experimento Fatorial de Adubação de Cana-de-açúcar
#' @description Experimento fatorial, de 3\eqn{^{3}}, de adubação de
#'     cana com N, P, K, feito por Strauss (1951), com confundimento de
#'     dois graus de liberdade da interação tripla N x P x K. Foi usado
#'     o confundimento correspondente aos blocos, e foram feitas duas
#'     repetições para os 27 tratamentos.
#' @format Um \code{data.frame} com 54 observações e 6 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 3 níveis qualitativos, usado para 
#'     controle do confundimento de dois graus de liberdade.}
#'
#' \item{\code{rept}}{Fator de 2 níveis qualitativos, que são as duas
#'     repetições realizadas em cada um dos 27 tratamentos.}
#'
#' \item{\code{N}}{Fator de 3 níveis qualitativos, que é usado
#'     para o controle do efeito que o Nitrogênio causa no experimento,
#'     sendo que o Nitrogênio pode assumir 3 diferentes níveis de
#'     quantidade dispostas na variável como 0 para o primeiro nível, 1
#'     para o segundo, e 2 para o terceiro.}
#'
#' \item{\code{P}}{Fator de 3 níveis qualitativos, que é usado
#'     para o controle do efeito que o Fósforo causa no experimento,
#'     sendo que o Fósforo pode assumir 3 diferentes níveis de
#'     quantidade dispostas na variável como 0 para o primeiro nível, 1
#'     para o segundo, e 2 para o terceiro.}
#'
#' \item{\code{K}}{Fator de 3 níveis qualitativos, que é usado
#'     para o controle do efeito que o Potássio causa no experimento,
#'     sendo que o Potássio pode assumir 3 diferentes níveis de
#'     quantidade dispostas na variável como 0 para o primeiro nível, 1
#'     para o segundo, e 2 para o terceiro.}
#'
#' \item{\code{prod}}{Produção de cana-de-açúcar, em t.ha\eqn{^{-1}}.}
#'
#' }
#' @keywords FAT3
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 7.6.1)
#' @examples
#'
#' library(lattice)
#'
#' grafico1 <- xyplot(prod ~ N,
#'                    groups = rept,
#'                    data = PimentelTb7.6.1,
#'                    xlab = "Nível de Nitrogênio",
#'                    ylab = "Produção de Cana-de açúcar em t/ha")
#'
#' grafico2 <- xyplot(prod ~ P,
#'                    groups = rept,
#'                    data = PimentelTb7.6.1,
#'                    xlab = "Nível de Fósforo",
#'                    ylab = "Produção de Cana-de açúcar em t/ha")
#'
#' grafico3 <- xyplot(prod ~ K,
#'                    groups = rept,
#'                    data = PimentelTb7.6.1,
#'                    xlab = "Nível de Potássio",
#'                    ylab = "Produção de Cana-de açúcar em t/ha")
#'
#' print(grafico1, position = c(0, 0, 0.33, 1), more = TRUE)
#'
#' print(grafico2, position = c(0.33, 0, 0.66, 1 ), more = TRUE)
#'
#' print(grafico3, position = c(0.66, 0, 1, 1))
#'
NULL