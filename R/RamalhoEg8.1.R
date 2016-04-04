#' @name RamalhoEg8.1
#' @title Produção de Grãos em Cultivares de Feijão
#' @description Experimento para medir a produção de grãos de cultivares
#'     de feijão, conduzido em Lavras e Patos de Minas/MG durante o ano
#'     de 1990 em delineamento em blocos casualizados.
#' @format Um \code{data.frame} com 60 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais que representa as
#'     cultivares de feijão.}
#'
#' \item{\code{local}}{Fator de 2 níveis nominais, municípios onde
#'     foram realizados os experimentos.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis do experimento, usado para 
#'     fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medidos em g/parcela
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 8.1, pág. 115)
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoEg8.1)
#'
#' str(RamalhoEg8.1)
#'
#' xtabs(~cult + local, data = RamalhoEg8.1)
#'
#' xyplot(prod ~ cult | local, data = RamalhoEg8.1,
#'        jitter.x = TRUE,
#'        xlab = "Cultivar",
#'        ylab = "Produção")
#'
#' aggregate(prod ~ cult + local,  data = RamalhoEg8.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
