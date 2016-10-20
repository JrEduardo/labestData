#' @name AndradeTb2.24
#' @title Estudo sobre a Adoção de uma Variedade de Arroz
#' @description Estudo realizado por um economista agrícola que tem
#'     interesse em identificar o comportamento da adoção de uma nova
#'     variedade de arroz altamente produtiva segundo a situação de
#'     posse de terra.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{posse}}{Identifica o tipo de posse de terra
#'     (proprietário, único arrendatário e vários arrendatários).}
#'
#' \item{\code{adocao}}{Identifica o se houve, ou não, a adoção da nova
#'     variedade de arroz.}
#'
#' \item{\code{freq}}{Frequência de terras com as características de
#'     \code{posse} e \code{adocao}.}
#'
#' }
#' @keywords contingência
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.24, pág. 106)
#' @examples
#'
#' data(AndradeTb2.24)
#' str(AndradeTb2.24)
#'
#' xt <- xtabs(freq ~ ., data = AndradeTb2.24)
#'
#' xt
#' prop.table(xt)
#' prop.table(xt, margin = 1)
#' prop.table(xt, margin = 2)
#'
#' mosaicplot(t(xt), col = c("darkturquoise", "lawngreen", "blue"),
#'            cex.axis = 0.8, las = 2, main = "")
#'
#' library(lattice)
#' barchart(t(xt),
#'          horizontal = FALSE,
#'          stack = TRUE,
#'          auto.key = list(
#'              corner= c(0.9, 0.9),
#'              title = "Posse",
#'              cex.title = 1.1),
#'          xlab = "Adoção da nova variedade",
#'          ylab = "Frequência de terras")
#'
NULL
