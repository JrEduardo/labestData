#' @name AndradeTb2.44
#' @title Produção de Duas Variedades de Cana-de-açúcar
#' @description Estudo no qual foi analisado o comportamento de
#'     duas variedades de cana-de-açúcar.
#' @format Um \code{data.frame} com 21 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de 2 níveis qualitativos, que são as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{prod}}{Produção de cana-de-açúcar, em toneladas por
#'     hectare.}
#'
#' }
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.44, pág. 147)
#' @examples
#'
#' data(AndradeTb2.44)
#' str(AndradeTb2.44)
#'
#' boxplot(prod ~ varied,
#'         data = AndradeTb2.44,
#'         xlab = "Variedade",
#'         ylab = expression(Produção~(em~t~ha^-1)))
#'
NULL