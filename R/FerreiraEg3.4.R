#' @name FerreiraEg3.4
#' @title Exame de sangue em pintores de carro
#' @description Subconjunto de valores de um hemograma aplicado à
#'     pintores de carros, apresentado por Royston (1983)
#' @format Um \code{data.frame} com 20 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{conc}}{Concentração de hemoglobina.}
#'
#' \item{\code{linf}}{Contagem de linfócitos.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 3.4)
#'
#' Royston, J. P. (1983). Some techniques for assessing multivariate
#'     normality based on Shapiro-Wilk. London, Applied Statistics -
#'     Journal of the Royal Statistical Society - Series C, v. 32, n. 2,
#'     p. 121-133. (Table 2)
#' @examples
#'
#' # Normalidade univariada
#' par(mfrow = c(1, 2))
#' with(FerreiraEg3.4, {
#'     qqnorm(conc, main = "Normal Q-Q Plot\nConc. Hemoglobina")
#'     qqline(conc)
#'     qqnorm(linf, main = "Normal Q-Q Plot\nCont. Linfócitos")
#'     qqline(linf)
#' })
#'
NULL
