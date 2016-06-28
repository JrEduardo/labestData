#' @name RamalhoTb3.4
#' @title Incid\enc{ê}{e}nica de \emph{Colletotrichum} no feijoeiro
#' @description Experimento para verificar a incidência de patógenos do
#'     tipo \emph{Colletotrichum} nas cultivares de feijão, foi
#'     utilizada uma escala de notas variando de 1 (resistente) a 5
#'     (completamente suscetível), estas notas foram dadas por três
#'     avaliadores. Neste experimento foram avaliados 16 tratamentos com
#'     3 repetições em blocos casualizados.
#' @format data.frame com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis numéricos. Tratamento aplicado
#' para verificar a incidência de \emph{Colletotrichum}.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis quantitativos, usado para
#' controle local}
#'
#' \item{\code{cult}}{Cultivar de feijão.}
#'
#' \item{\code{nota}}{Variável reposta, nota atribuída pelos avaliadores
#'     para a incidência de \emph{Colletotrichum}.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 45)
#'
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb3.1)
#'
#' xyplot(nota ~ cult, data = RamalhoTb3.4,
#'        groups = bloc, auto.key = TRUE, jitter.x = TRUE,
#'        xlab = "Cultivares",
#'        ylab = "Notas")
#'
NULL
