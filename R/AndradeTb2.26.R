#' @name AndradeTb2.26
#' @title Estudo de Associação entre Local de Coleta e Peso de Mexilhões
#' @description Estudo observacional cujo interesse é verificar se
#'     existe associação entre o local de coleta de mexilhões e o peso
#'     deles.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{local}}{Local de coleta dos mexilhões (Mangue e
#'     Sambaqui).}
#'
#' \item{\code{peso}}{Pesos dos mexilhões, em gramas. A variável foi
#'     categorizada em três níveis (7-20, 21-33 e 34-46 gramas).}
#'
#' \item{\code{freq}}{Número de mexilhões no cruzamento de \code{local}
#'     com \code{peso}.}
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
