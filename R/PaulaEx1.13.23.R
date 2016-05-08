#' @name PaulaEx1.13.23
#' @title Diâmetro de Cerejeiras da Pensilvânia
#' @description Dados referentes ao registro das variáveis diâmetro,
#'     altura e volume de 31 árvores cerejeiras numa floresta no estado
#'     da Pensilvânia. O objetivo do estudo é calcular o volume da
#'     árvore a partir de sua altura e diâmetro.
#' @format Um \code{data.frame} com 31 observações e 3 variáveis.
#'     \describe{
#' 
#' \item{\code{diam}}{Diâmetro da cerejeira, em polegadas. Provavelmente
#'     o diâmetro foi calculado sob a altura do peito (\eqn{\approx}
#'     1.30m).}
#' 
#' \item{\code{alt}}{Altura da cerejeira, em pés.}
#' 
#' \item{\code{vol}}{Volume da cerejeira, em pés cúbicos.}
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 1.13.23,
#'     pág. 111)
#' @examples
#' data(PaulaEx1.13.23)
#' 
#' str(PaulaEx1.13.23)
#' 
#' library(lattice)
#' splom(PaulaEx1.13.23,
#'       type = c("p", "g", "smooth"),
#'       lwd = 2, col.line = 1)
#'
NULL
