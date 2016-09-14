#' @name AndradeTb2.32
#' @title Pesos de Bezerros Recém-Nascidos
#' @description Pesos, em kg, ao nascer de 10 bezerros da raça de gado
#'     Crioula, e 10 da raça Nelore.
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{Raca}}{Fator de 2 níveis qualitativos que são as raças
#'     dos bezerros recém-nascidos.}
#'
#' \item{\code{Peso}}{Peso, em kg, do bezerro recém-nascido.}
#'
#' }
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.32, pág. 113)
#' @examples
#'
#' data(AndradeTb2.32)
#' str(AndradeTb2.32)
#'
#' library(lattice)
#' bwplot(Peso ~ Raca,
#'        data = AndradeTb2.32,
#'        xlab = "Raça do Bezerro",
#'        ylab = "Peso (em kg)")
#'
NULL