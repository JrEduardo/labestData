#' @name AndradeTb2.38
#' @title Salinidade e Temperatura na Região III da Lagoa da Conceição
#' @description Estudo com o objetivo de verificar se existe correlação
#'     entre a salinidade e a temperatura na região III da Lagoa da
#'     Conceição, Florianópolis, SC.
#' @format Um \code{data.frame} com 8 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura da lagoa, em graus Celsius (ºC).}
#'
#' \item{\code{salin}}{Salinidade da lagoa, em gramas por litro (g/l).}
#'
#' }
#' @seealso \code{\link{AndradeTb2.46}}
#' @keywords RS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.38, pág. 142)
#' @examples
#'
#' data(AndradeTb2.38)
#' str(AndradeTb2.38)
#'
#' cor.test(~temp + salin, data = AndradeTb2.38)
#'
#' library(lattice)
#' xyplot(temp ~ salin,
#'        data = AndradeTb2.38,
#'        type = c("p", "r"),
#'        xlab = "Salinidade (g/l)",
#'        ylab = "Temperatura (ºC)")
#'
#' # Agrupando os dados de condutividade, provinientes no dataset
#' # AndradeTb2.46 [VERIFICAR SE É VÁLIDO]
#' (da <- merge(AndradeTb2.38, AndradeTb2.46))
#' splom(da, type = c("g", "p", "r"))
#'
NULL
