#' @name AndradeTb2.15
#' @title Distribuição do Número de Plantas Sadias de Mandioca
#' @description Estudo da distribuição do número de plantas sadias de
#'     mandioca colhidas na área útil de uma parcela.
#' @format Um \code{data.frame} com 5 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{plantas}}{Número de plantas sadias de mandioca.}
#'
#' \item{\code{freq}}{Frequência do número de plantas sadias de
#'     mandioca.}
#'
#' }
#' @keywords contingência
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.15, pág. 89)
#' @examples
#'
#' data(AndradeTb2.15)
#' str(AndradeTb2.15)
#'
#' # Gráfico de barras
#' with(AndradeTb2.15, {
#'     fr <- paste0("(", round(100 * freq / sum(freq)), "% )")
#'     bp <- barplot(freq,
#'                   names.arg = plantas,
#'                   col = "darkturquoise",
#'                   beside = TRUE,
#'                   ylim = extendrange(freq),
#'                   xlab = "Número de Plantas Colhidas Sadias",
#'                   ylab = "Porcentagem do Número de Parcelas")
#'     text(bp, freq + 0.3, labels = paste(freq, fr))
#' })
#'
#' # Gráfico de setores
#' with(AndradeTb2.15, {
#'     fr <- paste0("(", round(100 * freq / sum(freq)), "%)")
#'     pie(freq, labels = paste(plantas, "plantas\nsadias", fr),
#'         col = gray.colors(length(freq)))
#' })
#'
NULL
