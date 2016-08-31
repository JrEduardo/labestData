#' @name AndradeTb2.12
#' @title Estudo de Alimentação de Pássaros
#' @description Estudo do número de pássadors de uma particular espécie,
#'     classificados de acordo com o local da floresta onde se
#'     alimentam, para duas estações do ano.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{estacao}}{Fator de 2 níveis qualitativos que são as
#'     estações do ano (Primavera e Outono).}
#'
#' \item{\code{local}}{Fator de 3 níveis qualitativos que são os locais
#'     da Floresta (Árvores, Arbusto e Chão).}
#'
#' \item{\code{passaros}}{Número de pássaros de uma particular espécie.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.12, pág. 81)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.12)
#' str(AndradeTb2.12)
#'
#' xyplot(passaros ~ estacao,
#'        groups = local,
#'        data = AndradeTb2.12,
#'        type = "b",
#'        auto.key = list(title = "Local da Floresta",
#'                        cex.title = 1.1,
#'                        columns = 3),
#'        xlab = "Estação do Ano",
#'        ylab = "Número de Pássaros")
#'
NULL