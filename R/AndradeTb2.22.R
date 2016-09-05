#' @name AndradeTb2.22
#' @title Área Foliar Específica de \emph{Cecropia Glazioui}
#' @description Experimento relativo à variação de luz no crescimento
#'     das plantas, medida através da área foliar específica após 60
#'     dias, da espécie \emph{Cecropia glazioui}, em amostras situadas
#'     em borda de mata e mata fechada, com intensidade de luz média de
#'     10,6% e 0,87%, respectivamente.
#' @format Um \code{data.frame} com 70 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{af}}{Fator de 2 níveis qualitativos que são as áreas
#'     foliares (Borda da Mata e Mata Fechada).}
#'
#' \item{\code{cresc}}{Crescimento das plantas.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.22, pág. 104)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.22)
#' str(AndradeTb2.22)
#'
#' bwplot(cresc ~ af,
#'        data = AndradeTb2.22,
#'        xlab = "Área Foliar",
#'        ylab = "Crescimento das Plantas")
#'
NULL