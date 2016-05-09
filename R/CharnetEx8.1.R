#' @name CharnetEx8.1
#' 
#' @title Influência da Publicidade e Capital Investido no Lucro Anual
#' 
#' @description Influência das variáveis capital investido (x1) e gasto
#'     em publicidade (x2) no lucro anual (y) de 12 empresas observadas.
#'
#' @format Um \code{data.frame} com 3 colunas e 12 linhas.
#'
#' \describe{
#'
#' \item{\code{y}}{Lucro anual, em 100 mil reais.}
#' 
#' \item{\code{x1}}{Capital investido no ano, em 100 mil reais.}
#'
#' \item{\code{x2}}{Gasto com publicidade no ano, em 100 mil reais.}
#'
#' }
#'
#' @keywords TODO
#'
#' @source Charnet, R., de Luna Freire, C.A., Charnet, E.M.R. & Bonvino,
#'     H. (2008). Análise de modelos de regressão linear com aplicações
#'     (2nd ed., p. 356). SP: Editora Unicamp (Cap. 8, exer. 1, p. 195,
#'     cap. 9, exer. 6, p. 230.)
#'
#' @examples
#'
#' data(CharnetEx8.1)
#'
#' plot(CharnetEx8.1)
#' lm(y~., data=CharnetEx8.1)
#'
NULL