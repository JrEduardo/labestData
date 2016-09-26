#' @name AndradeTb2.38
#' @title Estudo de Salinidade e Temperatura na Região III da Lagoa da
#'     Conceição
#' @description Estudo com o objetivo de verificar se existe correlação
#'     entre a salinidade e a temperatura na região III da Lagoa da
#'     Conceição, Florianópolis, SC.
#' @format Um \code{data.frame} com 8 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura da lagoa, em ºC.}
#'
#' \item{\code{salin}}{Salinidade da lagoa, em g/l.}
#'
#' }
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.38, pág. 142)
#' @examples
#'
#' data(AndradeTb2.38)
#' str(AndradeTb2.38)
#'
#' library(lattice)
#' xyplot(temp ~ salin,
#'        data = AndradeTb2.38,
#'        type = c("p", "r"),
#'        xlab = "Salinidade (g/l)",
#'        ylab = "Temperatura (ºC)")
#'
NULL