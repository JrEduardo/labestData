#' @name PimentelTb13.5.1
#' @title Grupo de Experimentos de Adubação de Cana-de-açúcar
#' @description Conjunto de 38 ensaios fatoriais de \eqn{3^{3}} com N, P
#'     e K, em cana-de-açúçar, com dados de cana-planta e soca, obtidos
#'     por Strauss (1951). O nutriente foi aplicado nas doses de zero,
#'     60 e 120 \eqn{kg.ha^{-1}} de \eqn{P_2O_5}, só na cana-planta.
#' @format Um \code{data.frame} com 228 observações e 3 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de 2 níveis qualitativos, que são as
#'     variedades de cana-de-açúcar.}
#'     
#' \item{\code{P}}{Fator de 3 níveis qualitativos, que são os diferentes
#'     níveis de dosagem de fósforo (P). }
#'
#' \item{\code{prod}}{Médias de produção de 38 ensaios de adubação de
#'     cana-de-açúcar.}
#'
#' }
#' @keywords GE
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 13.5.1,
#'     pág. 259)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb13.5.1)
#' str(PimentelTb13.5.1)
#' 
#' xyplot(prod ~ P,
#'        groups = varied,
#'        auto.key = list(title = "Variedade",
#'                        cex.title = 1,
#'                        columns = 2),
#'        type = c("a", "p"),
#'        data = PimentelTb13.5.1,
#'        ylab = "Médias de Produção de Cana",
#'        xlab = "Nível de P")
#'
NULL