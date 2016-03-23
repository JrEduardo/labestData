#' @name ZimmermannTb3.12
#' @title Dados de matéria seca em plantas
#' @description Experimento em DIC que estudou a produção de matéria
#'     seca em plantas, em gramas. No experimento foram utilizados cinco
#'     vasos para cada um de quatro tratamentos e três plantas para cada
#'     vaso (parcela).
#' @format Um \code{data.frame} com 75 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de níveis nominais representados por
#'     inteiros. Tratamento aplicado aos vasos.}
#'
#' \item{\code{planta}}{Fator de níveis numéricos que identifica as
#'     plantas dentro dos vasos.}
#'
#' \item{\code{vaso}}{Fator de níveis numéricos que identifica os vasos
#'     de cada tratamento.}
#'
#' \item{\code{prod}}{Produção de matéria seca das plantas, em gramas.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Table 3.12, pág 62)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb3.12)
#'
#' str(ZimmermannTb3.12)
#' xtabs(~trat + vaso, data = ZimmermannTb3.12)
#'
#' aggregate(prod ~ trat, data = ZimmermannTb3.12,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(prod ~ trat, groups = vaso, data = ZimmermannTb3.12,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Tratamentos",
#'        ylab = "Produção de matéria seca das plantas (g)")
#'
NULL
