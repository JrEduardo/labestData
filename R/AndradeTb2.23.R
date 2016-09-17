#' @name AndradeTb2.23
#' @title Associação entre Localização e Ocorrências de Aborto
#' @description Um pesquisador estudou uma possível associação entre a
#'     localização, dois locais, e o número de abortos de crianças do
#'     sexo feminino.
#' @format Um \code{data.frame} com 65 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{local}}{Fator de 2 níveis que são os locais (Rio Vermelho
#'     e Costa da Lagoa)}
#'
#' \item{\code{aborto}}{Número de abortos de crianças do sexo feminino.}
#'
#' }
#' @keywords AASI contingência
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.23, pág. 105)
#' @examples
#'
#' data(AndradeTb2.23)
#' str(AndradeTb2.23)
#'
#' (tb <- xtabs(data = AndradeTb2.23))
#'
#' barplot(t(tb),
#'         beside = TRUE,
#'         legend.text = c("0 Aborto","1 Aborto", "2 Abortos"),
#'         ylim = c(0, 25),
#'         xlab = "Local",
#'         ylab = "Frequência")
#'
#' mosaicplot(tb)
#'
NULL
