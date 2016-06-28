#' @name RamalhoEg8.1
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os em Cultivares de Feij\enc{ã}{a}o
#' @description Experimentos para medir a produção de grãos de
#'     cultivares de feijão, conduzidos em Lavras e Patos de Minas/MG
#'     durante o ano de 1990 em delineamento em blocos casualizados.
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
#' \item{\code{bloc}}{Fator de 3 níveis que identifica os blocos em cada
#'     um dos experimentos, usado para fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medidos em g/parcela
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DBC GE
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
#'        ylab = expression("Produção"~(g~parcela^{-1})))
#'
#' ftable(with(RamalhoEg8.1,
#'             tapply(prod,
#'                    list(local, cult, bloc = bloc),
#'                    FUN = identity)))
#'
#' aggregate(prod ~ cult + local,  data = RamalhoEg8.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
