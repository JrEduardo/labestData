#' @name RamalhoEg8.8
#' @title Produção de grãos de feijão
#' @description Dados da produção de grãos de feijão obtidos por Corte 
#'     et al. (2002) relativos à avaliação de 6 populações segregantes 
#'     avaliadas nas gerções F_{2}, F_{3} e F_{4} com diferentes números 
#'     de repetições. Delineamento em blocos casualizados.
#' @format Um \code{data.frame} com 72 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{exp}}{Fator de 3 níveis que representa a gerações de 
#'     feijão.}
#'
#' \item{\code{rept}}{Fator de 3 níveis do experimento, usado para 
#'     fazer controle local.}
#'
#' \item{\code{trat}}{Fator de 6 níveis que representa as populações das
#'     gerações do experimento.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medidos em kg/ha nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pg 123)
#' @examples
#'
#' library(lattice)
#' 
#' xyplot(prod ~ trat, data = RamalhoEg8.8,
#'        groups = rept,
#'        jitter.x = TRUE,
#'        xlab = "Tratamento",
#'        ylab = "Produção em (kg/ha)")
#'
NULL