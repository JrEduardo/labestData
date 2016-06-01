#' @name BarbinPg177
#' @title Altura de Progênies de \emph{E. grandis} em Três Locais
#' @description Dados de experimento que mediu a altura (m) de árvores
#'     seis progênies de \emph{Eucaliptus grandis} em experimentos
#'     instalados em 3 locais sob o delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 72 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{prog}}{Fator categóricos cujos níveis são progênies de
#'     \emph{Eucaliptus grandis}.}
#'
#' \item{\code{bloc}}{Fator categórico cujos níveis identificam os
#'     blocos do experimento.}
#'
#' \item{\code{local}}{Fator categóricos cujos níveis são os locais onde
#'     os experimentos foram instalados.}
#'
#' \item{\code{alt}}{Altura média de 25 plantas por parcela (m) aos 7
#'     anos de idade.}
#'
#' }
#' @keywords GE DBC
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (pág. 177)
#' @examples
#'
#' library(latticeExtra)
#'
#' data(BarbinPg177)
#'
#' str(BarbinPg177)
#'
#' xyplot(alt ~ prog | local, data = BarbinPg177,
#'        groups = bloc, type = "o",
#'        as.table = TRUE,
#'        xlab = "Progênies",
#'        ylab = "Altura de plantas (m)")
#'
NULL
