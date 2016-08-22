#' @name keywords
#' @title Keywords para Classificar os Conjuntos de Dados
#' @description As keywords servem para classificar os conjuntos de
#'     dados por características que definem, geralmente, o tipo de
#'     análise a ser aplicada aos dados. Isso orienta os estudantes e
#'     professores a escolherem os conjuntos de dados para listas de
#'     exercício, por exemplo.
#' @format Um \code{data.frame} com 596 observações e 2 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{name}}{Nome do conjunto de dados no pacote labestData.}
#'
#' \item{\code{keyword}}{Keyword atribuída ao conjunto de dados.}
#'
#' }
#' @examples
#'
#' data(keywords)
#' str(keywords)
#'
#' library(lattice)
#'
#' tb <- table(keywords$keyword)
#'
#' barchart(sort(tb),
#'          ylab = "Keyword",
#'          xlab = "Frequência absoluta")
#'
#' subset(keywords, keyword == c("DBI"))
#' subset(keywords, keyword %in% c("proporção", "contagem"))
#'
NULL
