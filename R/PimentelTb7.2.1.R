#' @name PimentelTb7.2.1
#' @title Experimento Fatorial Sobre Aduba\enc{çã}{ca}o NPK na Produ\enc{çã}{ca}o de Milho
#' @description Resultados da produção de milho em um experimento
#'     com fatorial \eqn{2^{3}} dos fatores presentes na adubação
#'     minenal (NPK) em delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 32 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{N}}{Fator de 2 níveis codificados que representa a
#'     aplicação de nitrogênio.}
#'
#' \item{\code{P}}{Fator de 2 níveis codificados que representa a
#'     aplicação de fósforo.}
#'
#' \item{\code{K}}{Fator de 2 níveis codificados que representa a
#'     aplicação de potássio.}
#'
#' \item{\code{prod}}{Produção de milho, em ton ha\eqn{^{-1}}.}
#'
#' }
#' @keywords FAT3
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 7.2.1, página 115)
#' @examples
#'
#' data(PimentelTb7.2.1)
#' str(PimentelTb7.2.1)
#'
#' unique(PimentelTb7.2.1[, 2:4])
#'
#' library(lattice)
#'
#' xyplot(prod ~ N | factor(P), groups = K, data = PimentelTb7.2.1,
#'        type = c("p", "a"),
#'        xlab = "Níveis codificados de nitrogênio",
#'        ylab = expression("Produção de milho"~(ton~ha^{-1})),
#'        strip = strip.custom(strip.names = TRUE, var.name = "P"),
#'        auto.key = list(title = "K", cex.title = 1.1, columns = 2))
#'
NULL
