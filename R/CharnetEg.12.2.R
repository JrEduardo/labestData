#' @name CharnetEg.12.2
#' 
#' @title Relação do tecido adiposo e região abdominal
#' 
#' @description Relação entre as medidas de tecidos adiposos obtidas por 
#'     tomagrafia computadorizada da área abdominal.
#'
#' @format Um \code{data.frame} com 29 linhas e 5 colunas.
#'
#' \describe{
#'
#' \item{\code{tomo}}{Tomografia.}
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
#' @keywords tomografia regressão
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações 
#'     (2nd ed., p. 356). Editora Unicamp (Capítulo 12, exemplo 12.2, 
#'     página 286)
#'
#' @examples
#'
#' data(CharnetEg.12.2)
#'
#' library("ggplot2")
#' 
#' cintura <- qplot(us1, us2, 
#'                  data = CharnetEg.12.2,
#'                  color = cint,
#'                  xlab = "Tecido adiposo 1",
#'                  ylab = "Tecido adiposo 2",
#'                  main = "Relação do Tecido Adiposos e a 
#'                          Circunferência da cintura")
#'
#' cintura + geom_abline(intercept = 0, slope = 1)
#'
NULL