#' @name PaulinoEx9.30
#' @title Avaliação de Políciais Militares
#' @description Em um estudo sobre a avaliação de políciais militares
#'     brancos por soldados americanos negros na Segunda Guerra Mundial,
#'     os soldados do exército foram classificados segundo o nível
#'     educacional, a atitude face à separação racial, a região de
#'     naturalidade e a preferência oir missões de combate.
#' @format Um \code{data.frame} com 24 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{educ}}{Nível educacional (só grade school, alguma high
#'     school, high school completa).}
#'
#' \item{\code{sep}}{Atitude perante separação racial (não contra ou
#'     contra).}
#'
#' \item{\code{ntur}}{Região de naturalidade (sul, norte).}
#' 
#' \item{\code{missao}}{Preferência por missão de combate (sim ou não).}
#' 
#' \item{\code{freq}}{Frequências observadas.}
#'
#' }
#' @keywords TC dicotomica
#' @source PAULINO; SINGER (2006), Exercício 9.30, pág. 344.
#' @examples
#' 
#' data(PaulinoEx9.30)
#'
#' str(PaulinoEx9.30)
#'
#' xt <- xtabs(freq ~ ., data = PaulinoEx9.30)
#' ftable(xt)
#'
#' library(lattice)
#' library(latticeExtra)
#'
#' useOuterStrips(
#'     barchart(freq ~ educ | sep + natur, groups = missao,
#'              horizontal = FALSE,
#'              data = PaulinoEx9.30,
#'              auto.key = list(space = "top", columns = 2,
#'                              cex.title = 1, rectangles = TRUE,
#'                              points = FALSE,
#'                              title = "Preferência por missão"),
#'              xlab = "Nível educacional",
#'              ylab = "Frequência")
#' )
#'
NULL