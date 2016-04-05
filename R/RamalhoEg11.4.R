#' @name RamalhoEg11.4
#' @title Produção de Grãos de Milho
#' @description Experimento conduzido na EMBRAPA Milho e Sorgo em 1997,
#'     envolvendo a avaliação de 36 cultivares de milho, conduzido no
#'     delineamento de látice quadrado parcialmente balanceado e a 
#'     produção de grãos por parcela obtida.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{parc}}{Fator de 72 níveis que indica as parcelas onde são
#'     aplicados os tratamentos do experimento.}
#'
#' \item{\code{rept}}{Fator de 2 níveis que identifica as repetições de 
#'     cada combinação dos blocos e tratamentos.}
#'
#' \item{\code{bloc}}{Fator de 6 níveis, usado para controle local.}
#'
#' \item{\code{cult}}{Fator de 36 níveis. Tratamento aplicado
#'     para verificar a produção de grãos de milho.}
#'
#' \item{\code{prod}}{Produção de grãos de milho, medidos em kg/parcela
#'     nas parcelas.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pág. 171)
#' @examples
#'
#' data(RamalhoEg11.4)
#' 
#' aggregate(prod ~ bloc, data = RamalhoEg11.4,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL