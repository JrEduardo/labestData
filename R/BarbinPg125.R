#' @name BarbinPg125
#' @title Adubação NPK no Cafeeiro
#' @description Experimento no o delineamento de blocos casualizados que
#'     estudou a combinação de nitrogênio, fósforo e potássio, cada um
#'     com dois níveis (fatorial \eqn{2^3}), na produção de café
#'     coco. Os níveis dos fertilizantes foram codificados para 0 e 1 e
#'     não foi informada as doses reais de cada um deles.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis.
#'
#' \describe{
#'
#' \item{\code{N}}{Inteiro que codifica dois níveis de nitrogênio (0 e
#'     1).}
#'
#' \item{\code{P}}{Inteiro que codifica dois níveis de fósforo (0 e 1).}
#'
#' \item{\code{K}}{Inteiro que codifica dois níveis de potássio (0 e 1).}
#'
#' \item{\code{bloc}}{Fator de níveis categóricos considerado para
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de café coco, em kg por parcela de 105
#'     metros quadrados (12 covas no espaçamento 3,5 \eqn{\times} 2,5
#'     m).}
#'
#' }
#' @keywords DBC FAT3
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (pág. 125)
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinPg125)
#'
#' str(BarbinPg125)
#'
#' xyplot(prod ~ as.factor(N) | as.factor(P), data = BarbinPg125,
#'        groups = K, type = c("p", "a"),
#'        auto.key = list(space = "top", columns = 2,
#'                        title = "Potássio (K)", cex.title = 1.1),
#'        strip = strip.custom(strip.names = TRUE,
#'                             sep = " ", var.name = "Fósforo (P)"),
#'        xlab = "Nitrogênio (N)",
#'        ylab = "Produção de café coco (kg)")
#'
NULL
