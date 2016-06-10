#' @name PimentelTb16.2.1
#' @title Ensaio de Controle de Pragas do Feijoeiro
#' @description Ensaio de controle de pragas do feijoeiro, realizado
#'     pelo engenheiro agrônomo João Ferreira do Amaral. Nesse
#'     experimento, em 8 blocos casualizados, foram utilizados 5
#'     tratamentos, e além da produção determinou-se o número de plantas
#'     de cada parcela.
#' @format Um \code{data.frame} com 40 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 8 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{inset}}{Fator de 5 níveis qualitativos, que são os
#'     diferentes tipos de insetos.}
#'
#' \item{\code{stand}}{Variável quantitativa, que refere-se ao número de
#'     plantas de cada parcela.}
#'
#' \item{\code{prod}}{Produção de feijão, em g/parcela.}
#'
#' }
#' @keywords DBC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 16.2.1, pág. 300)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb16.2.1)
#' str(PimentelTb16.2.1)
#'
#' graf1 <- xyplot(prod ~ inset,
#'                 groups = bloc,
#'                 type = c("a", "p"),
#'                 auto.key = list(title = "Bloco",
#'                                 cex.title = 1,
#'                                 columns = 4),
#'                 data = PimentelTb16.2.1,
#'                 ylab = "Produção",
#'                 xlab = "Tipo de Inseto")
#'
#' graf2 <- xyplot(jitter(stand) ~ inset,
#'                 groups = bloc,
#'                 type = c("a", "p"),
#'                 auto.key = list(title = "Bloco",
#'                                 cex.title = 1,
#'                                 columns = 4),
#'                 data = PimentelTb16.2.1,
#'                 ylab = "Número de Plantas por Parcela",
#'                 xlab = "Tipo de Inseto")
#'
#' print(graf1, position = c(0, 0, 0.5, 1), more = TRUE)
#'
#' print(graf2, position = c(0.5, 0, 1, 1))
#'
NULL
