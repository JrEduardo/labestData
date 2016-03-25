#' @name ZimmermannTb3.2.1
#' @title Adubação nitrogenada na Cultura do Arroz
#' @description Dados de um experimento em DIC que visa estudar a
#'     adubação nitrogenada no arroz irrigado, com 4 tratamentos e 8
#'     repetições. A resposta observada foi a produção de grãos de arroz
#'     irrigado, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{adub}}{Fator de níveis nominais. Indica a adubação
#'      aplicada ao arroz irrigado.}
#'
#' \item{\code{rept}}{Número inteiro que identifica as repetições de
#'     cada tratamento.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz irrigado em kg
#'     ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 54)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb3.2.1)
#'
#' str(ZimmermannTb3.2.1)
#'
#' unstack(x = ZimmermannTb3.2.1, form = prod ~ adub)
#'
#' aggregate(prod ~ adub, data = ZimmermannTb3.2.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#'  xyplot(prod ~ adub, data = ZimmermannTb3.2.1,
#'         type = c("p", "a"), jitter.x = TRUE,
#'         xlab = "Tratamentos",
#'         ylab = expression(Produção~de~grãos~(kg~ha^{-1})))
#'
NULL
