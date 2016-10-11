#' @name PaulinoEx9.29
#' @title Avaliação de Políciais Militares
#' @description Em um estudo sobre a avaliação de políciais militares
#'     brancos por soldados americanos negros na Segunda Guerra Mundial,
#'     a resposta de cada soldado foi categorizada nos níveis 1 (quase
#'     sempre imparcial), 2 (parcial e imparcial em proporções iguais) e
#'     3 (quase sempre parcial)
#' @format Um \code{data.frame} com 12 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{orig}}{Região de origem (Norte ou Sul).}
#'
#' \item{\code{unid}}{Região da unidade (Norte ou Sul).}
#'
#' \item{\code{condu}}{Avaliação da conduta. (1, 2, ou 3)}
#' 
#' \item{\code{freq}}{Frequências observadas.}
#'
#' }
#' @keywords TC multinomial
#' @source PAULINO; SINGER (2006), Exercício 9.29, pág. 343.
#' @examples
#' 
#' data(PaulinoEx9.29)
#'
#' str(PaulinoEx9.29)
#'
#' xt <- xtabs(freq ~ ., data = PaulinoEx9.29)
#' ftable(xt)
#'
#' library(lattice)
#'
#' barchart(xt,
#'          horizontal = FALSE,
#'          beside = FALSE,
#'          stack = FALSE,
#'          auto.key = list(space = "top", columns = 3, cex.title = 1,
#'                          rectangles = TRUE, points = FALSE,
#'                          title = "Avaliação da conduta"),
#'          xlab = "Região de origem",
#'          ylab = "Frequência")
#'
NULL