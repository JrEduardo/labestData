#' @name ZimmermannTb12.14
#' @title Dados da proporção de insetos infectados
#' @description Dados do ensaio 2 de um experimento em DBC que estudou a
#'     patogenicidade de fungos as percevejo do grão de arroz. A
#'     testemunha sem infecção (1) era o tratamento comum entre os dois
#'     experimentos. Os dados se referem à proporção de percevejos
#'     infectados e transformados por arcoseno da raiz quadrada da
#'     proporção.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis nominais. Tratamento aplicado em arroz.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da observação.}
#'
#' \item{\code{prod}}{Proporção de insetos infectados.}
#'
#' }
#' @keywords DBC proporção
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 255)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.14)
#'
#' xyplot(prod ~ trat , groups = bloco, data = ZimmermannTb12.14,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Proporção de insetos infectados")
#'
#' aggregate(prod ~ trat, data = ZimmermannTb12.14,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
