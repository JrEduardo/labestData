#' @name CharnetEx10.7
#'
#' @title Plantação de Variedades de Trigo
#'
#' @description Experimento com 4 variedades de trigo onde foi observado
#'     a precipitação pluviométrica, a concentração de fertilizante e a
#'     produtividade. A unidade amostral foram canteiros de mesmo
#'     tamanho e sob as mesmas condições. O interesse é explicar a
#'     produtividade pelas demais variáveis coletadas.
#'
#' @format Um \code{data.frame} com 4 colunas e 24 linhas.
#'
#' \describe{
#'
#' \item{\code{prod}}{Produção de trigo, em kg.}
#'
#' \item{\code{prec}}{Precipitação pluviométrica, em cm.}
#'
#' \item{\code{varied}}{Variedade do trigo, fator com quatro níveis.}
#'
#' \item{\code{fert}}{Concentração do fertilizante, fator com três
#'     níveis.}
#'
#' }
#'
#' @keywords dummy
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 10, exercício
#'     7, pág. 256, Capítulo 11, exercício 1, pág. 272)
#'
#' @examples
#'
#' data(CharnetEx10.7)
#'
#' xtabs(~varied + fert, data = CharnetEx10.7)
#'
#' library(lattice)
#' xyplot(prod ~ prec | fert,
#'        groups = varied,
#'        data = CharnetEx10.7,
#'        type = c("p", "a"),
#'        auto.key = list(space = "right",
#'                        title = "Variedade",
#'                        cex.title = 1),
#'        strip = strip.custom(
#'            strip.names = TRUE,
#'            var.name = "Conc. fertilizante"))
#'
NULL
