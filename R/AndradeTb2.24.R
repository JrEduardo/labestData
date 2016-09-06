#' @name AndradeTb2.24
#' @title Estudo sobre a Adoção de uma Variedade de Arroz
#' @description Um economista agrícola está estudando fatores que afetam
#'     a adoção de uma nova variedade de arroz altamente produtiva.
#' @format Um \code{data.frame} com 6 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{Posse}}{Fator de 3 níveis qualitativos que são os tipos
#'     de posse de terra.}
#'
#' \item{\code{Adocao}}{Fator de 2 níveis qualitativos que indica se há,
#'     ou não, a adoção da nova variedade de arroz.}
#'
#' \item{\code{Freq}}{Frequência conjunta de Posse e Adoção.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.24, pág. 106)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.24)
#' str(AndradeTb2.24)
#'
#' xyplot(Freq ~ Adocao,
#'        groups = Posse,
#'        data = AndradeTb2.24,
#'        type = "b",
#'        auto.key = list(title = "Posse",
#'                        cex.title = 1.1,
#'                        columns = 3),
#'        xlab = "Adoção",
#'        ylab = "Frequência")
#'
NULL