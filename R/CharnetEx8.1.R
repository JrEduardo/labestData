#' @name CharnetEx8.1
#'
#' @title Influência da Publicidade e Capital Investido no Lucro Anual
#'
#' @description Influência das variáveis capital investido (\code{capi})
#'     e gasto em publicidade (\code{publi}) no lucro anual
#'     (\code{lucro}) de 12 empresas observadas.
#'
#' @format Um \code{data.frame} com 3 colunas e 12 linhas.
#'
#' \describe{
#'
#' \item{\code{lucro}}{Lucro anual, em 100 mil reais.}
#'
#' \item{\code{capi}}{Capital investido no ano, em 100 mil reais.}
#'
#' \item{\code{publi}}{Gasto com publicidade no ano, em 100 mil reais.}
#'
#' }
#'
#' @keywords RM
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R., Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed.). Campinas, SP: Editora Unicamp (Capítulo 8, exercício
#'     1, pág. 195, Capítulo 9, exercício 6, pág. 230)
#'
#' @examples
#'
#' data(CharnetEx8.1)
#'
#' plot(CharnetEx8.1)
#' lm(lucro ~ ., data = CharnetEx8.1)
#'
NULL
