#' @name RamalhoEg11.10
#' @title Produção de Grãos de Sorgo
#' @description Experimento da avaliação de 40 cultivares de sorgo,
#'     conduzido no delineamento alfa-látice e a produção de grãos por
#'     parcela obtida.
#' @format Um \code{data.frame} com 120 observações e 5 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{parc}}{Fator de 120 níveis que indica as parcelas onde
#' são aplicados os tratamentos do experimento.}
#'
#' \item{\code{rept}}{Fator de 3 níveis que identifica as repetições de 
#'     cada combinação dos blocos e tratamentos.}
#'
#' \item{\code{bloc}}{Fator de 8 níveis, usado para controle local.}
#'
#' \item{\code{cult}}{Fator de 40 níveis. Tratamento aplicado para
#'     verificar a produção de grãos de sorgo.}
#'
#' \item{\code{prod}}{Produção de grãos de sorgo, medidos em kg/parcela
#'     nas parcelas.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 181)
#' @examples
#'
#' data(RamalhoEg11.10)
#' 
#' aggregate(prod ~ bloc, data = RamalhoEg11.10,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL