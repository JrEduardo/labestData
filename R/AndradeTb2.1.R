#' @name AndradeTb2.1
#' @title Experimento de Competição de Híbridos de Milho
#' @description Um pesquisador instalou um experimento, na região de
#'     Chapecó, SC, para avaliação do comportamento de híbridos de
#'     milho.
#' @format Um \code{data.frame} com 32 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{hibr}}{Fator de 32 níveis qualitativos que são os
#'     híbridos de milho.}
#'
#' \item{\code{rm}}{Rendimento médio do híbrido de milho, em
#'     \eqn{kg.ha^{-1}}.}
#'
#' \item{\code{ciclo}}{Ciclo de vida do híbrido de milho, em dias.}
#'
#' \item{\code{ap}}{Altura da planta do híbrido de milho, em cm.}
#'
#' \item{\code{ae}}{Altura da espiga do híbrido de milho, em cm.}
#'
#' \item{\code{grao}}{Fator de 3 níveis qualitativos que indica o tipo
#'     de grão.}
#' 
#' \item{\code{resist}}{Fator de 4 níveis qualitativos que indica a
#'     resistência à ferrugem, sendo: r = resistente; mr = moderadamente
#'     resistente; ms = moderadamente susceptível; s = susceptível.}
#' 
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.1, pág. 62)
#' @examples
#'
#' library(lattice)
#' library(plyr)
#'
#' data(AndradeTb2.1)
#' str(AndradeTb2.1)
#'
#' xyplot(rm ~ hibr,
#'        groups = grao,
#'        type = "b",
#'        data = AndradeTb2.1,
#'        auto.key = list(title = "Tipo de Grão",
#'                        cex.title = 1.1,
#'                        columns = 3),
#'        ylab = "Rendimendo Médio (em kg/ha)",
#'        xlab = "Híbrido de Milho")
#'
#' xyplot(rm ~ hibr,
#'        groups = resist,
#'        type = "b",
#'        data = AndradeTb2.1,
#'        auto.key = list(title = "Resistência à Ferrugem",
#'                        cex.title = 1.1,
#'                        columns = 4),
#'        ylab = "Rendimendo Médio (em kg/ha)",
#'        xlab = "Híbrido de Milho")
#'
#' xyplot(ciclo ~ hibr,
#'        groups = grao,
#'        type = "b",
#'        data = AndradeTb2.1,
#'        auto.key = list(title = "Tipo de Grão",
#'                        cex.title = 1.1,
#'                        columns = 3),
#'        ylab = "Ciclo (em dias)",
#'        xlab = "Híbrido de Milho")
#'
#' xyplot(ciclo ~ hibr,
#'        groups = resist,
#'        type = "b",
#'        data = AndradeTb2.1,
#'        auto.key = list(title = "Resistência à Ferrugem",
#'                        cex.title = 1.1,
#'                        columns = 4),
#'        ylab = "Ciclo (em dias)",
#'        xlab = "Híbrido de Milho")
#'
#' xyplot(ap + ae ~ hibr,
#'        groups = grao,
#'        type = "b",
#'        strip = strip.custom(factor.levels = c("Altura da Planta",
#'                                               "Altura da Espiga")),
#'        data = AndradeTb2.1,
#'        auto.key = list(title = "Tipo de Grão",
#'                        cex.title = 1.1,
#'                        columns = 3),
#'        ylab = "Altura (em cm)",
#'        xlab = "Híbrido de Milho")
#'
#' xyplot(ap + ae ~ hibr,
#'        groups = resist,
#'        type = "b",
#'        strip = strip.custom(factor.levels = c("Altura da Planta",
#'                                               "Altura da Espiga")),
#'        data = AndradeTb2.1,
#'        auto.key = list(title = "Resistência à Ferrugem",
#'                        cex.title = 1.1,
#'                        columns = 4),
#'        ylab = "Altura (em cm)",
#'        xlab = "Híbrido de Milho")
#'
NULL