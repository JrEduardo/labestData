#' @name AndradeTb2.34
#' @title Crescimento do Pseudobulbo de \emph{Laelia Purpurata}
#' @description Dados de crescimento, em cm, do pseudobulbo da espécie
#'     de orquídea \emph{Laelia purpurata}, sob duas condições de
#'     luminosidade, cada uma com 25 observações.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{luz}}{Fator de 2 níveis qualitativos que são as condições
#'     de luminosidade.}
#'
#' \item{\code{cresc}}{Crescimento do pseudobulbo em cm.}
#'
#' }
#' @keywords AAS
#' @source Andrade, D. F., Ogliari, P. J. (2010). Estatística para as
#'     ciências agrárias e biológicas com noções de experimentação (2nd
#'     ed.). Florianópolis, SC. Editora da UFSC. (Tabela 2.34, pág. 133)
#' @examples
#'
#' data(AndradeTb2.34)
#' str(AndradeTb2.34)
#'
#' library(lattice)
#' bwplot(cresc ~ luz,
#'        data = AndradeTb2.34,
#'        xlab = "Condição de Luminosidade",
#'        ylab = "Crescimento (em cm)")
#'        
NULL