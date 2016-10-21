#' @name PaulinoTb11.10
#' @title Número de Animais Mortos por Contaminação do Petróleo
#' @description Dados de um estudo cuja finalidade foi avaliar o efeito da
#'     contaminação de um estuário por derramamento de petróleo na fauna
#'     local. Cada animal foi submetido a um tratamento obtido da
#'     combinação dos níveis contaminação por petróleo (sim
#'     ou controle) e percentual de salinidade de aclimatação. Os animais foram
#'     observados por 72 horas e o número de sobreviventes foi
#'     registrado a cada 12 horas.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{grupo}}{grupo ao qual pertnce o animal (petróleo ou
#'     controle).}
#'
#' \item{\code{salin}}{Salinidade de aclimatação (0.8\%, 1.4\%, 2.4\%,
#'     3.4\%).}
#'
#' \item{\code{tempo}}{Tempo de exposição dos animais, em horas.}
#' 
#' \item{\code{animais}}{Número de animais sobreviventes.}
#'
#' }
#' @keywords TC
#' @source PAULINO; SINGER (2006), Tabela 11.10, pág. 400.
#' @examples
#' 
#' data(PaulinoTb11.10)
#'
#' str(PaulinoTb11.10)
#'
#' xt <- xtabs(animais ~ ., data = PaulinoTb11.10)
#' ftable(xt)
#' 
#' library(lattice)
#' 
#' barchart(animais ~ factor(tempo) | factor(salin), groups = grupo,
#'          horizontal = FALSE,
#'          data = PaulinoTb11.10,
#'          auto.key = list(space = "top", columns = 2,
#'                          cex.title = 1, rectangles = TRUE,
#'                          points = FALSE,
#'                          title = "Grupo de animais"),
#'          xlab = "Tempo de exposição",
#'          strip = strip.custom(
#'              strip.names = TRUE,
#'              var.name = "Salinidade"),
#'          ylab = "Frequência")
#'
NULL