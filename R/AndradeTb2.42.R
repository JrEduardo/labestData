#' @name AndradeTb2.42
#' @title Peso de Carne de Mexilhões
#' @description Resultados da variável peso de carne, em gramas, de
#'     mexilhões de dois locais: 1) Sambaqui e 2) Manguezal.
#' @format Um \code{data.frame} com 30 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{local}}{Fator de 2 níveis qualitativos, que são os locais
#'     habituais dos mexilhões.}
#'
#' \item{\code{peso}}{Peso de carne de mexilhões, em gramas.}
#'
#' }
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.42, pág. 146)
#' @examples
#'
#' data(AndradeTb2.42)
#' str(AndradeTb2.42)
#'
#' boxplot(peso ~ local,
#'         data = AndradeTb2.42,
#'         xlab = "Local",
#'         ylab = "Peso de Carne (em gramas)")
#'
NULL