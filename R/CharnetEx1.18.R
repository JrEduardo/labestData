#' @name CharnetEx1.18
#' 
#' @title Tempo e Temperatura de uma Reação Química
#' 
#' @description Registro de 35 tempos de reação química em 7
#'     temperaturas diferentes.
#'
#' @format Um \code{data.frame} com 2 colunas e 35 linhas.
#'
#' \describe{
#'
#' \item{\code{temp}}{Temperatura em graus Celsius}
#'
#' \item{\code{tempo}}{Tempo de reação, em segundos}
#'
#' }
#'
#' @keywords TODO
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Capítulo 1, exercício 18,
#'     página 25)
#'
#' @examples
#'
#' data(CharnetEx1.18)
#'
#' library(ggplot2)
#'
#' with(CharnetEx1.18, {
#'     mu <- aggregate(tempo, list(temp), mean)
#'     des <- aggregate(tempo, list(temp), sd)
#'     (da <<- data.frame(x = mu$G, mu = mu$x, sd = des$x))
#' })
#'
#' ggplot(CharnetEx1.18, aes(x = temp, y = tempo)) +
#'     geom_point() +
#'     geom_point(
#'         aes(x = x - 1, y = mu), data = da,
#'         col = 4, shape = 15, size = 2.5) +
#'     geom_segment(
#'         aes(x = x - 1, y = mu - sd, xend = x - 1, yend = mu + sd),
#'         arrow = arrow(angle = 90, length = unit(0.05, "inches"),
#'                       ends = "both"), data = da, col = 4) +
#'     geom_smooth(method = "lm", se = FALSE)
#'
NULL
