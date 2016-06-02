#' @name PimentelPg142
#' @title Grupo de Experimentos Fatoriais de Adubação de Algodão
#' @description Grupo de experimentos de adubação de algodão, todos em
#'     delineamento inteiramente casualiado com 4 repetições cada. As
#'     combinações de NPK formam em ensaio fatorial com um tratamento
#'     adicional.
#' @format Um \code{data.frame} com 100 observações e 6 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de 5 níveis qualitativos que identifica da
#'     um dos experimentos.}
#'
#' \item{\code{rept}}{Inteiro de 4 níveis que indica as repetições dos
#'     tratamentos em cada experimento.}
#'
#' \item{\code{N}}{Fator de 3 níveis códificados que refere-se as doses
#'     de nitrogênio na composição do adubo, sendo que a variável assume
#'     0 quando não houver nitrogênio, 1 quando houver uma dose e 2
#'     quando houverem duas doses.}
#'
#' \item{\code{P}}{Fator de 2 níveis códificados que refere-se as doses
#'     de fósforo na composição do adubo, sendo que a variável assume
#'     0 quando não houver fósforo, 1 quando houver uma dose.}
#'
#' \item{\code{K}}{Fator de 3 níveis códificados que refere-se as doses
#'     de potássio na composição do adubo, sendo que a variável assume
#'     0 quando não houver potássio, 1 quando houver uma dose e 2
#'     quando houverem duas doses.}
#'
#' \item{\code{y}}{Variável resposta do experimento.}
#'
#' }
#' @details Esse experimento é um ensaio fatorial com um tratamento
#'     adicional, a testemunha, que é a combinção das doses zero de NPK,
#'     e a porção fatorial é a combinação das doses 1 e 2 de NK tendo o
#'     P fixo em 1.
#' @keywords GE DIC FATADI
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Página 142)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelPg142)
#' str(PimentelPg142)
#'
#' # Fatorial incompleto ou fatorial completo 2 x 2 + 1 testemunha.
#' ftable(xtabs(~P + N + K, data = PimentelPg142))
#'
#' xyplot(y ~ interaction(N, P, K, drop = TRUE, sep = ""),
#'        groups = exper, data = PimentelPg142,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        auto.key = list(title = "Ensaio", cex.title = 1.1,
#'                        columns = 3),
#'        xlab = "Combinação de adubações NPK (níveis codificados)",
#'        ylab = "Resposta")
#'
NULL
