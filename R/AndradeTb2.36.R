#' @name AndradeTb2.36
#' @title Produção de Matéria Seca e Radiação de uma Cultura
#' @description Produção de matéria seca de uma cultura e a quantidade
#'     de radiação fotossintética ativa.
#' @format Um \code{data.frame} com 10 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{Prod}}{Produção de matéria seca em \eqn{g.m^{-2}}.}
#'
#' \item{\code{Rad}}{Radiação fotossintética em \eqn{W.m^{-2}}.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     2.36, pág. 140)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb2.36)
#' str(AndradeTb2.36)
#'
#' xyplot(Prod ~ Rad,
#'        data = AndradeTb2.36,
#'        type = c("p", "r"),
#'        xlab = expression(Radiação ~ fotossintética ~ (W / m^2)),
#'        ylab = expression(Produção ~ (g / m^2)))
#'
NULL