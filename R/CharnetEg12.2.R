#' @name CharnetEg12.2
#' 
#' @title Estudo da Medida de Tecido Adiposo Obtido por Tomografia
#'     Computadorizada
#' 
#' @description Relação entre as medidas de tecidos adiposos obtidas por 
#'     tomagrafia computadorizada da área abdominal e variáveis
#'     relacionadas.
#'
#' @format Um \code{data.frame} com 29 linhas e 5 colunas.
#'
#' \describe{
#'
#' \item{\code{tomo}}{Medida de tecido adiposo por obtida por tomografia
#'     computadorizada.}
#'
#' \item{\code{cint}}{Medida da circunferência da cintura.}
#'
#' \item{\code{us1}}{Medida 1 do tecido adiposo por ultrassonografia.}
#'
#' \item{\code{us2}}{Medida 2 do tecido adiposo por ultrassonografia.}
#'
#' \item{\code{pc}}{Medida das pregas cutâneas.}
#'
#' }
#'
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Capítulo 12, exemplo
#'     12.2, página 286)
#'
#' @examples
#'
#' data(CharnetEg12.2)
#'
#' panel.density <- function(x, ...) {
#'     usr <- par('usr')
#'     on.exit(par(usr))
#'     par(usr = c(usr[1:2], 0, 1.5))
#'     par(new = TRUE)
#'     plot(density(x), xlab = '', ylab = '', main = '')
#' }
#' 
#' pairs(CharnetEg12.2, diag.panel = panel.density)
NULL
