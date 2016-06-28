#' @name FariaQd6.1
#' @title Produ\enc{çã}{ca}o de Variedades de Milho
#' @description Produção de milho, em kg 100 m\eqn{^2} em um experimento
#'     conduzido no delineamento inteiramente casualizado com 5
#'     repetições, onde foram avaliadas quatro variedades de milho.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator categórico que representa as variedades de
#'     milho.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições de cada
#'     variedade.}
#'
#' \item{\code{prod}}{Produção de milho, em kg por 100 m\eqn{^2}.}
#'
#' }
#' @keywords DIC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus, BA: UESC. (Tabela 6.1 pág 76)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd6.1)
#' str(FariaQd6.1)
#'
#' xyplot(prod ~ varied, data = FariaQd6.1)
#'
NULL
