#' @name CharnetEx7.2
#'
#' @title Impacto de Impurezas em um Reator Químico
#'
#' @description Relação entre a porcentagem de impurezas dentro de um
#'     reator químico e o tempo de permanência da substância dentro
#'     deste reator.
#'
#' @format Um \code{data.frame} com 4 colunas e 20 linhas.
#'
#' \describe{
#'
#' \item{\code{rea}}{Reator analisado, um fator com dois níveis \code{I}
#'     ou \code{II}.}
#'
#' \item{\code{t}}{Tempo, em minutos.}
#'
#' \item{\code{imp}}{Porcentagem de impurezas, em escala \eqn{\log}.}
#'
#' }
#'
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 7, exercício
#'     2, pág. 163, Capítulo 10, exercício 2, pág. 253)
#'
#' @examples
#'
#' data(CharnetEx7.2)
#'
#' with(CharnetEx7.2, plot(tempo ~ imp, col = rea))
#'
NULL
