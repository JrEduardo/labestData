#' @name AndradeTb2.23
#' @title Estudo Sobre Locais e Ocorrência de Aborto
#' @description Um pesquisador está estudando uma possível associação
#'     entre local e o número de abortos de crianças do sexo feminino.
#' @format Um \code{data.frame} com 65 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{local}}{Fator de 2 níveis qualitativos que são  os
#'     locais, sendo: 1 = Rio Vermelho; 2 = Costa da Lagoa.}
#'
#' \item{\code{aborto}}{Número de ocorrências de abortos de crianças do
#'     sexo feminino.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.23, pág. 105)
#' @examples
#'
#' data(AndradeTb2.23)
#' str(AndradeTb2.23)
#'
#' tb <- xtabs(data = AndradeTb2.23)
#'
#' barplot(t(tb),
#'         beside = TRUE,
#'         legend.text = c("0 Aborto","1 Aborto", "2 Abortos"),
#'         ylim = c(0, 25),
#'         xlab = "Local",
#'         ylab = "Frequência",
#'         names.arg = c("Rio Vermelho", "Costa da Lagoa"))
#'
NULL