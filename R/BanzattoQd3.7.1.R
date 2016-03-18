#' @name BanzattoQd3.7.1
#' @title Composição do Substrato na Altura de \emph{Pinus oocarpa}
#' @description Dados de experimento para estudo do efeito de 5
#'     composições de substrato para o desenvolvimento de \emph{Pinus
#'     oocarpa}. Experimento realizado em delineamento inteiramente
#'     casualizado.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{comp}}{Fator nominal. Composição do substrato para o
#'     desenvolvimento das plantas. Os níveis são: \code{SC} - solo de
#'     cerrado, \code{SC+E} - solo de cerrado com esterco,
#'     \code{SC+E+NPK} - idem ao anterior com NPK, \code{SC+V} - solo de
#'     cerrado com vermiculita,  \code{SC+V+NPK} - o anterior com NPK.}
#'
#' \item{\code{rept}}{Inteiro. Identifica as unidades experimentais em
#'     cada composição.}
#'
#' \item{\code{alt}}{Altura média (cm) 60 dias após a semeadura.}
#'
#' }
#' @keywords DIC contrastes
#' @source Banzatto, D. A., & Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 3.7.1 pág.
#'     64)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd3.7.1)
#'
#' aggregate(alt ~ comp,  data = BanzattoQd3.7.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(alt ~ comp, data = BanzattoQd3.7.1,
#'        xlab = expression(
#'            Composição~do~substrato~para~italic("Pinus oocarpa")),
#'        ylab = expression(Alturas~médias~60~dias~após~semeadura~(cm)))
#'
NULL
