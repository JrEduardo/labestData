#' @name AndradeEg2.17
#' @title Comprimento e Peso de Camarões-Rosa (\emph{Penaeus Paulensis})
#' @description Comprimento do corpo (\eqn{X_c}) e peso (\eqn{X_p}) de
#'     Camarões-Rosa fêmeas da espécie \emph{Penaeus Paulensis}, obtidos
#'     nas despescas dos viveiros do Centro de Ciências Agrárias (CCA)
#'     da Universidade Federal de Santa Catarina (UFSC).
#' @format Um \code{data.frame} com 18 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{xc}}{Comprimento do corpo em milímetros.}
#'
#' \item{\code{xp}}{Peso em gramas.}
#'
#' }
#' @keywords RS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Exemplo 2.17, pág.
#'     128)
#' @examples
#'
#' data(AndradeEg2.17)
#' str(AndradeEg2.17)
#'
#' library(lattice)
#' xyplot(jitter(xp) ~ xc,
#'        data = AndradeEg2.17,
#'        type = c("p", "r"),
#'        xlab = "Comprimento do Corpo (em mm)",
#'        ylab = "Peso (em gramas)")
#'
NULL
