#' @name RamalhoEx8.1
#' @title Produ\enc{çã}{ca}o de Gr\enc{ã}{a}os de Arroz em Munic\enc{í}{i}pios de Minas Gerais
#' @description Experimentos para avaliar a produção de grãos de
#'     cultivares de arroz, conduzidos em três locais do Estado de Minas
#'     Gerais (Lambari, Lavras e Felixlândia) em delineamento
#'     inteiramente casualizado.
#' @format Um \code{data.frame} com 90 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais que representa as
#'     cultivares de arroz.}
#'
#' \item{\code{local}}{Fator de 3 níveis nominais, municípios de Minas
#'     Gerais onde foram realizados os experimentos.}
#'
#' \item{\code{rept}}{Números inteiros que identificam as repetições em
#'     cada local.}
#'
#' \item{\code{prod}}{Produção de grãos de arroz, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DIC GE
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 8.1, pág. 132)
#' @examples
#'
#' data(RamalhoEx8.1)
#'
#' str(RamalhoEx8.1)
#'
#' with(RamalhoEx8.1,
#'      tapply(prod, list(cult = cult, local = local),
#'             FUN = mean))
#'
#' aggregate(prod ~ cult + local, data = RamalhoEx8.1,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' library(lattice)
#'
#' xyplot(prod ~ cult | local, data = RamalhoEx8.1,
#'        as.table = TRUE, layout = c(NA, 1), type = c("p", "a"),
#'        xlab = "Cultivar de arroz",
#'        ylab = expression("Produção"~(kg~ha^{-1})))
#'
#' # Ordenar cultivares pela média dentro de cada local.
#' a <- by(data = RamalhoEx8.1, INDICES = RamalhoEx8.1$local,
#'         FUN = function(d) {
#'             with(d, reorder(interaction(cult, local, drop = TRUE),
#'                             prod))
#'         })
#' a <- levels(unlist(a)); a
#'
#' RamalhoEx8.1 <- transform(RamalhoEx8.1,
#'                           cult.loc = factor(interaction(cult, local),
#'                                             levels = a))
#'
#' xyplot(prod ~ cult.loc | local, data = RamalhoEx8.1,
#'        as.table = TRUE, layout = c(NA, 1), type = c("p", "a"),
#'        scales = list(x = "free"),
#'        xlab = "Cultivar de arroz (ordenadas por local)",
#'        ylab = expression("Produção"~(kg~ha^{-1})),
#'        xscale.components = function(...) {
#'            ans <- xscale.components.default(...)
#'            ans$bottom$labels$labels <-
#'                gsub(x = ans$bottom$labels$labels,
#'                     pattern = "\\..*$",
#'                     replacement = "")
#'            return(ans)
#'        })
#'
NULL
