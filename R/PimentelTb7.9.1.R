#' @name PimentelTb7.9.1
#' @title Experimento de Aduba\enc{çã}{ca}o NPK no Cafeeiro
#' @description Experimento fatorial 2 \eqn{\times} 2 \eqn{\times} 2 de
#'     adubação NPK no cafeeiro feito por Malavolta et al. (1958). Foram
#'     contados os galhos secos de 4 pés de café por parcela. Dos
#'     números obtidos extraiu-se a raiz quadrada, portanto, para ter a
#'     variável original de contagem tem-se que elevar aos valores ao
#'     quadrado.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 6 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{N}}{Fator de 2 níveis codificados que representa a dose
#'     de nitrogênio aplicada, sendo que a variável assume 1, quando
#'     houver nitrogênio na composição do adubo e -1 caso contrário.}
#'
#' \item{\code{P}}{Fator de 2 níveis codificados que representa a dose
#'     de fósforo aplicada, sendo que a variável assume 1, quando houver
#'     fósforo na composição do adubo e -1 caso contrário.}
#'
#' \item{\code{K}}{Fator de 2 níveis codificados que representa a dose
#'     de potássio aplicada, sendo que a variável assume 1, quando
#'     houver potássio na composição do adubo e -1 caso contrário.}
#'
#' \item{\code{quad}}{Raiz quadrada do número de galhos secos de 4 pés
#'     de café por parcela.}
#'
#' }
#' @keywords FAT3 contagem
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 7.9.1,
#'     pág 137)
#'
#' Malavolta, E.; Pimentel-Gomes, F.; Coury, T. Estudos sobre a
#'     alimentação mineral do cafeeiro (\emph{Coffea arabica} L.,
#'     Variedade Bourbon Vermelho). Piracicaba, 1958.
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb7.9.1)
#' str(PimentelTb7.9.1)
#'
#' ftable(xtabs(~N + P + K, data = PimentelTb7.9.1))
#'
#' xyplot(quad ~ N | factor(P), groups = K, data = PimentelTb7.9.1,
#'        type = c("p", "a"),
#'        xlab = "Nível codificado de nitrogênio",
#'        ylab = "Raízes quadradas do número de galhos secos",
#'        auto.key = list(title = "Potássio", cex.title = 1.1,
#'                        columns = 2),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Fósforo"))
#'
NULL
