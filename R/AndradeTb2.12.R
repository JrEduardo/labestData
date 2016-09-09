#' @name AndradeTb2.12
#' @title Relação do Número de Pássaros com Local de Alimentação
#' @description Estudo sobre o número de pássaros de uma particular
#'     espécie observados em diferentes locais de alimentação na
#'     floresta. O estudo foi realizado em duas estações do ano.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{estacao}}{Fator de 2 níveis qualitativos que são as
#'     estações do ano (primavera e outono).}
#'
#' \item{\code{local}}{Fator de 3 níveis qualitativos que são os locais
#'     da Floresta (árvores, arbusto e chão).}
#'
#' \item{\code{passaros}}{Número de pássaros de uma particular espécie.}
#'
#' }
#' @keywords contingência
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.12, pág. 81)
#' @examples
#'
#' data(AndradeTb2.12)
#' str(AndradeTb2.12)
#'
#' (tb <- xtabs(passaros ~ estacao + local, data= AndradeTb2.12))
#'
#' mosaicplot(tb)
#'
#' library(lattice)
#' barchart(tb,
#'          stack = FALSE,
#'          horizontal = FALSE,
#'          auto.key = list(
#'              title = "Local de alimentação",
#'              cex.title = 1.1,
#'              columns = 3))
#'
NULL
