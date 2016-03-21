#' @name RamalhoEg7.8
#' @title Produção de grãos de feijão
#' @description Experimento referente à produção de grãos de feijão 
#'     obtida na avaliação de 24 famílias \eqn{F_{5}} do cruzamento 
#'     Jalo x Small White, cujos dados foram obtidos por Souza (1991).
#'     Experimento realizado em blocos incompletos.
#' @format Um \code{data.frame} com 240 observações e 4 variáveis, em 
#'     que
#'
#' \describe{
#'
#' \item{\code{fam}}{Família \eqn{F_{5}} do cruzamento Jalo x Small 
#'     White.}
#'
#' \item{\code{rept}}{Fator que indica se a produção veio da primeira ou 
#'     segunda repetição.}
#'
#' \item{\code{plant}}{Inteiro que representa os grãos de feijão no 
#'     experimento.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, em g/planta.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (pg 110).
#' @examples
#'
#' library(lattice)
#'
#' boxplot(prod ~ plant, data = RamalhoEg7.8,
#'     xlab = "Planta",
#'     ylab = "Produção de grãos")
#'
NULL
