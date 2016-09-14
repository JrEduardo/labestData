#' @name AndradeTb2.34
#' @title Crescimento do Pseudobulbo de \emph{Laelia Purpurata}
#' @description Foram tomadas duas amostrar de tamanhos iguais a 25
#'     observações, de crescimento do pseudobulbo, em cm, da espécie de
#'     orquídea \emph{Laelia purpurata}, sob duas condições de
#'     luminosidade.
#' @format Um \code{data.frame} com 50 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{Luz}}{Fator de 2 níveis qualitativos que são as condições
#'     de luminosidade.}
#'
#' \item{\code{Cresc}}{Crescimento do pseudobulbo em cm.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.34, pág. 133)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.34)
#' str(AndradeTb2.34)
#'
#' bwplot(Cresc ~ Luz,
#'        data = AndradeTb2.34,
#'        xlab = "Condição de Luminosidade",
#'        ylab = "Crescimento (em cm)")
#'        
NULL