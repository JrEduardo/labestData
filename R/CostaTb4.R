#' @name CostaTb4
#' @title Massa Seca de Parte A\enc{é}{e}rea em Cana-de-a\enc{çú}{cu}car
#' @description Resultados de um experimento conduzido em casa de
#'     vegetação em delineamento inteiramente casualizado para avaliar a
#'     massa seca de parte aérea de variedades de cana-de-açúcar. A
#'     unidade experimental (parcela) era um vaso com 3 plantas.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator nominal. Variedades de cana-de-açúcar.}
#'
#' \item{\code{rept}}{Inteiro que representa a unidade experimental em
#'     cada variedade.}
#'
#' \item{\code{mspa}}{Variável resposta observada (contínua) que é a
#'     massa seca de parte aérea de cada unidade experimental (g
#'     parcela\eqn{^{-1}})}
#'
#' }
#' @keywords DIC
#' @source Costa, J. R. (2003). Técnicas experimentais aplicadas às
#'     ciências agrárias (Documentos 163). Seropédica, RJ: Embrapa
#'     Agrobiologia. (Tabela 4, pág. 58)
#' @examples
#'
#' library(lattice)
#'
#' data(CostaTb4)
#'
#' aggregate(mspa ~ varied,  data = CostaTb4,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(mspa ~ varied, data = CostaTb4,
#'        xlab = "Variedade de cana-de-açúcar",
#'        ylab = expression(Massa~seca~de~parte~aérea~(g~parcela^{-1})))
#'
NULL
