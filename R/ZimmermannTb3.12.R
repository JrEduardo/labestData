#' @name ZimmermannTb3.12
#' @title Dados de matéria seca em plantas
#' @description Experimento em DIC, que estudou a produção de matéria
#'     seca em plantas, em gramas. No experimento foram utilizados cinco
#'     vasos, quatro tratamentos e três plantas (parcelas) para cada
#'     vaso e tratamento.
#' @format Um \code{data.frame} com 75 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis numéricos. Tratamento aplicado em
#'     plantas.}
#'
#' \item{planta}{Fator de níveis numéricos.}
#'
#' \item{vaso}{Fator de níveis numéricos.}
#'
#' \item{prod}{Produção de matéria seca em plantas, em gramas.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 62)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb3.12)
#'
#' aggregate(prod ~ trat, data = ZimmermannTb3.12,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(prod ~ trat | vaso, groups = planta, data = ZimmermannTb3.12,
#'        type = c("p","a"),
#'        xlab = "Tratamentos por Vasos",
#'        ylab = "Produção de matéria seca em plantas (g)")
#'
NULL
