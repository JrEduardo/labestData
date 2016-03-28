#' @name RamalhoEg8.1
#' @title Produção de grãos de feijão
#' @description Experimento da produção de grãos na avaliação de
#'     cultivares de feijão, conduzido em Lavras e Patos de Minas/MG
#'     durante o ano de 1990. Delineamento em blocos casualizados.
#' @format Um \code{data.frame} com 60 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de 10 níveis de cultivares de feijão.}
#'
#' \item{\code{local}}{Fator de 2 níveis nominais, municípios onde 
#'     foi realizado o experimento.}
#'
#' \item{\code{rept}}{Fator de 3 níveis do experimento, usado para 
#'     fazer controle local.}
#'
#' \item{\code{grao}}{Produção de grãos de feijão, medidos em g/parcela 
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pg 115)
#' @examples
#'
#' library(lattice)
#' 
#' xyplot(prod ~ rept | local, data = RamalhoEg8.1,
#'        jitter.x = TRUE,
#'        xlab = "Repetições",
#'        ylab = "Produção")
#' 
#' aggregate(prod ~ cult,  data = RamalhoEg8.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL