#' @name RamalhoEg4.3
#' @title Porcentagem de absorção de água de feijão
#' @description Experimento conduzido na Universidade Federal de Lavras,
#'     avaliando a porcentagem de absorção de água de 10 linhares de
#'     feijão. O delineamento é inteiramente ao acaso com 3 repetições.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linh}}{Fator em que os números inteiro representam as
#'     linhagens de feijão.}
#'
#' \item{\code{rept}}{Número inteiro que indicam as repetições das
#'     linhagens.}
#'
#' \item{\code{abs}}{Porcentagem de absorção de água no intervalo [0,
#'     100].}
#'
#' }
#' @keywords DIC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Exemplo 4.3, pág 56)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg4.3)
#'
#' aggregate(abs ~ linh,  data = RamalhoEg4.3,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
