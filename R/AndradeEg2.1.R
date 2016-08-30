#' @name AndradeEg2.1
#' @title Estudo do Crescimento de Pastagem Relacionado a Temperatura
#' @description Estudo do tipo de relacionamento entre a taxa de
#'     crescimento de uma pastagem cultivada no Planalto catarinense e a
#'     temperatura do solo a 10 cm de profundidade, no período de junho
#'     a novembro.
#' @format Um \code{data.frame} com 9 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura do solo a 10 cm de profundidade, em
#'     ºC.}
#'
#' \item{\code{tc}}{Taxa de crescimento da pastagem, em kg/hadia.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Exemplo
#'     2.1, pág. 60)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeEg2.1)
#' str(AndradeEg2.1)
#'
#' xyplot(tc ~ temp,
#'        data = AndradeEg2.1,
#'        type = c("p", "r"),
#'        xlab = "Temperatura do solo (ºC)",
#'        ylab = "Taxa de crescimento (kg/hadia)")
#'
NULL