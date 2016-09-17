#' @name AndradeTb2.22
#' @title Crescimento de Plantas \emph{Cecropia Glazioui} sob Diferentes
#'     Ambientes
#' @description Estudo que avalia o efeito da variação de luz no
#'     crescimento de plantas da espécie \emph{Cecropia glazioui}.  O
#'     crescimento foi mensurado mediante a área foliar específica após
#'     60 dias de vida da planta e a variaçao de luz se deu pelo
#'     ambiente em que a planta se encontrava, borda da mata
#'     (intensidade de luz média de 10,6%) e mata fechada (intensidade
#'     de luz média de 0,87%).
#' @format Um \code{data.frame} com 70 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ambiente}}{Fator de 2 níveis que representam o ambiente no
#'     qual a planta se desenvolveu (borda da mata e mata fechada).}
#'
#' \item{\code{cresc}}{Crescimento das plantas.}
#'
#' }
#' @keywords AASI
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
#' bwplot(cresc ~ ambiente,
#'        data = AndradeTb2.22,
#'        xlab = "Área Foliar",
#'        ylab = "Crescimento das Plantas")
#'
#' densityplot(~cresc, groups = ambiente,
#'             data = AndradeTb2.22,
#'             auto.key = list(
#'                 corner = c(0.95, 0.95),
#'                 title = "Ambiente",
#'                 cex.title = 1.1
#'             ))
#'
NULL
