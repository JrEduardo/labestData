#' @name AndradeTb2.26
#' @title Estudo de Associação entre Local de Coleta e Peso de Mexilhões
#' @description Distribuição conjunta das variáveis local de coleta e
#'     peso de mexilhões.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{local}}{Fator de 2 níveis qualitativos que são os locais
#'     de coleta dos mexilhões.}
#'
#' \item{\code{peso}}{Fator de 3 níveis que indica os pesos dos
#'     mexilhões, em gramas.}
#'
#' \item{\code{freq}}{Frequência conjunta de local de coleta e peso de
#'     mexilhões.}
#'
#' }
#' @keywords contingência
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.26, pág. 107)
#' @examples
#'
#' data(AndradeTb2.26)
#' str(AndradeTb2.26)
#'
#' xt <- xtabs(freq ~ ., data = AndradeTb2.26)
#' xt
#'
#' mosaicplot(t(xt), col = c("darkturquoise", "lawngreen"),
#'            cex.axis = 0.8, las = 2, main = "")
#'
#' library(lattice)
#' barchart(t(xt),
#'          horizontal = FALSE,
#'          stack = TRUE,
#'          auto.key = list(
#'              columns = 2,
#'              title = "Local de coleta",
#'              cex.title = 1.1),
#'          xlab = "Peso do mexilhão",
#'          ylab = "Número de mexilhões")
#'
NULL
