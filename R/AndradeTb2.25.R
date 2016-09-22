#' @name AndradeTb2.25
#' @title Experimento de Germinação de Cultivares de Cebola
#' @description Experimento com o objetivo de avaliar o poder
#'     germinativo de duas cultivares de cebola. Foram utilizadas, para
#'     o teste de germinação, quatro repetições de cem sementes
#'     totalizando quatrocentas sementes para cada cultivar. Nesse
#'     experimento mensurou-se apenas a frequência das sementes que
#'     germinaram, ou não, dentre as repetições de cada cultivar.
#' @format Um \code{data.frame} com 4 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Cultivares de cebola avaliadas (Bola
#'     Precoce-EMPASC 352, \code{Bola 352} e Norte 14, \code{Norte
#'     14}).}
#'
#' \item{\code{germ}}{Identifica se houve, ou não, a germinação da
#'     semente.}
#'
#' \item{\code{freq}}{Número de sementes, no cruzamento de \code{cult} e
#'     \code{germ}.}
#'
#' }
#' @keywords contingência
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.25, pág. 107)
#' @examples
#'
#' data(AndradeTb2.25)
#' str(AndradeTb2.25)
#'
#' xt <- xtabs(freq ~ ., data = AndradeTb2.25)
#' xt
#'
#' mosaicplot(t(xt), col = c("darkturquoise", "lawngreen"),
#'            cex.axis = 0.8, las = 2, main = "")
#'
#' library(lattice)
#' barchart(t(xt),
#'          horizontal = FALSE,
#'          stack = FALSE,
#'          auto.key = list(
#'              corner= c(0.9, 0.9),
#'              title = "Cultivar",
#'              cex.title = 1.1),
#'          xlab = "Adoção da nova variedade",
#'          ylab = "Número de sementes")
#'
NULL
