#' @name CostaTb6
#' @title Efeito da Cobertura Morta no Peso Seco de Brócolis
#' @description Experimento instalado em delineamento de blocos
#'     casualizados para estudar o efeito de tipos de cobertura morta no
#'     peso seco de brócolis.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis.
#' \describe{
#'
#' \item{\code{cobert}}{Fator nominal com níveis de cobertura morta
#'     aplicada sobre o solo onde foi cultivado o brócolis: cobertura
#'     com sorgo, com crotalária, com milheto e com a vegetação
#'     expontânea.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais considerado para
#'     controle local, possivelmente os canteiros da horta, com 5
#'     níveis.}
#'
#' \item{\code{peso}}{Variável resposta contínua, peso seco (g
#'     parcela\eqn{^{-1}}) de brocólis.}
#'
#' }
#' @keywords DBC
#' @source Costa, J. R. (2003). Técnicas experimentais aplicadas às
#'     ciências agrárias (Documentos 163). Seropédica, RJ: Embrapa
#'     Agrobiologia. (pág. 63)
#' @examples
#'
#' library(lattice)
#'
#' data(CostaTb6)
#'
#' with(CostaTb6, addmargins(tapply(X = peso,
#'                                  INDEX = list(bloco, cobert),
#'                                  FUN = sum)))
#'
#' xyplot(peso ~ cobert, data = CostaTb6,
#'        groups = bloco, type = "b",
#'        xlab = "Tipos de cobertura do solo",
#'        ylab = expression("Peso seco de brócolis"~(g~parcela^{-1})),
#'        auto.key = list(corner = c(0.1, 0.1), columns = 2,
#'                        title = "Blocos", cex.title = 1))
#'
NULL
