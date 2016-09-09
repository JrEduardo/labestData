#' @name AndradeTb1.2
#' @title Experimento de Produção de Milho em Função do Nitrogênio
#' @description Experimento que tem como objetivo verificar o
#'     comportamento da produção de milho sob o efeito de diferentes
#'     doses de nitrogênio. Para cada dose de nitrogênio foram plantados
#'     cinco canteiros de terra de \eqn{10m^{2}} cada. Portanto, são
#'     cinco observações para cada dose de nitrogênio.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de 5 níveis que são as dosagens de
#'     Nitrogênio, em \eqn{kg\ ha^{-1}}.}
#'
#' \item{\code{rept}}{Fator de 5 níveis qualitativos que são as
#'     repetições do experimento.}
#'
#' \item{\code{prod}}{Produção de milho, em \eqn{kg\ ha^{-1}}.}
#'
#' }
#' @keywords DIC
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 1.2, pág. 40)
#' @examples
#'
#' data(AndradeTb1.2)
#' str(AndradeTb1.2)
#'
#' library(lattice)
#' xyplot(prod ~ trat,
#'        data = AndradeTb1.2,
#'        type = c("p", "a"),
#'        xlab = expression(Dosagem~de~Nitrogênio~(em~kg~ha^{-1})),
#'        ylab = expression(Produção~de~Milho~(em~kg~ha^{-1})))
#'
NULL
