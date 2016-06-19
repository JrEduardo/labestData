#' @name PimentelTb14.7.1
#' @title Experimento de Pastejo de Bovinos
#' @description Experimento fatorial que avaliou 2 cargas animais
#'     \eqn{\times} 3 espécies de braquiária, com 2 blocos casualizados
#'     e 8 grupos de novilhos, adaptados do artigo de Pimentel-Gomes et
#'     al. (1988).
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 2 níveis qualitativos, usado para
#'     controle local. Cada bloco tem 24 unidades experimentais.}
#'
#' \item{\code{grupo}}{Fator de 8 níveis qualitativos, que são os grupos
#'     homogêneos de novilhos.}
#'
#' \item{\code{carga}}{Fator de 2 níveis métricos que representa a carga
#'     animal, ou seja, o número médio de animais por hectare.}
#'
#' \item{\code{braquiaria}}{Fator de 3 níveis qualitativos, que são as
#'     espécies de braquiária.}
#'
#' \item{\code{peso}}{Peso dos animais, em kg.}
#'
#' }
#' @keywords DBC FAT2
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 14.7.1, pág. 283)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb14.7.1)
#' str(PimentelTb14.7.1)
#'
#' ftable(xtabs(~braq + bloc + carga, data = PimentelTb14.7.1))
#'
#' xyplot(peso ~ braq, data = PimentelTb14.7.1,
#'        groups = carga, type = c("a", "p"),
#'        auto.key = list(title = "Carga (animal/ha)",
#'                        cex.title = 1, columns = 2),
#'        ylab = "Peso do animais (kg)",
#'        xlab = "Tipo de braquiária")
#'
NULL
