#' @name FariaEg3.2.4
#' @title Produção de Amêndoas de Clones de Cacau
#' @description Experimento em delineamento inteiramente casualizado que
#'     estudou a produção de amendoas de clones de cacau.
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator categórico que representam os clones de
#'     cacau.}
#'
#' \item{\code{rept}}{Inteiro que indica a repetição de cada clone.}
#'
#' \item{\code{result}}{Produção de amendoas, em kg 10 plantas\eqn{{-1}}
#'     ano\eqn{{-1}}.}
#'
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus, BA: UESC. (Tabela 3.2.4, pág 46)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaEg3.2.4)
#' str(FariaEg3.2.4)
#'
#' unstack(x = FariaEg3.2.4, form = prod ~ clone)
#'
#' xyplot(prod ~ clone, data = FariaEg3.2.4,
#'        ylab = expression("Produção"~
#'                              (kg~10~plantas^{-1}~ano^{-1})),
#'        xlab = "Clones de cacau")
#'
NULL
