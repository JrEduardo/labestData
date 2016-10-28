#' @name AndradeTb4.1
#' @title Número de Filhos Homens em Casais com 12 Filhos
#' @description Foram observados 10.690 casais com 12 filhos,
#'     registrando quantos dos filhos são do sexo masculino.
#' @format Um \code{data.frame} com 13 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{nfilhos}}{Número de filhos homens.}
#'
#' \item{\code{ncasais}}{Número de casais com \code{nfilhos} filhos
#'     homens.}
#'
#' }
#' @keywords contingência*
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 4.1, pág. 235)
#' @examples
#'
#' data(AndradeTb4.1)
#' str(AndradeTb4.1)
#'
#' # Média de filhos homens por casal
#' with(AndradeTb4.1, weighted.mean(nfilhos, ncasais/sum(ncasais)))
#'
#' # Distribuição de frequências
#' barplot(AndradeTb4.1$ncasais,
#'         col = "darkturquoise",
#'         names.arg = AndradeTb4.1$nfilhos,
#'         xlab = "Número de Filhos Homens",
#'         ylab = "Número de Casais")
#'
NULL
