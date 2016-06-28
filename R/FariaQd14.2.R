#' @name FariaQd14.2
#' @title Aduba\enc{çã}{ca}o Nitrogenada na Produ\enc{çã}{ca}o de Milho
#' @description Os dados abaixo são provenientes de um ensaio em que
#'     foram utilizadas 7 doses de nitrogênio aplicado em cobertura para
#'     avaliar a produtividade de milho. O experimento foi montado em
#'     delineamento inteiramente casualizado, com 5 repetições.
#' @format Um \code{data.frame} com 35 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{N}}{Fator métrico que é a dose de nitrogênio aplicado em
#'     cobertura, kg ha\eqn{^{-1}}.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições das doses.}
#'
#' \item{\code{result}}{Produção de milho, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC RL
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 14.2 pág. 198)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd14.2)
#' str(FariaQd14.2)
#'
#' aggregate(prod ~ N, data = FariaQd14.2, FUN = mean)
#'
#' xyplot(prod ~ N, data = FariaQd14.2,
#'        jitter.x = TRUE, type = c("p", "smooth"))
#'
NULL
