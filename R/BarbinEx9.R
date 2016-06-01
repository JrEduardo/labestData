#' @name BarbinEx9
#' @aliases BarbinEx10
#' @title Ensaio de Competição de Clones de Laranja Pera-do-Rio
#' @description Ensaio de competição de 13 clones de laranja Pera-do-Rio
#'     onde foram obtidos os resultados de produção, em kg de frutos
#'     planta, para o ano de 1987, em que as plantas estavam com 16 anos
#'     de idade. O ensaio foi conduzido pelo Dr. Joaquim Teófilo Sobrino
#'     em delineamento de blocos ao acaso na Estação Experimental de
#'     Limeira, do IAC.
#' @format Um \code{data.frame} com 78 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{clon}}{Fator categórico que identifica os clones de
#'     laranja.}
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos do
#'     ensaio.}
#'
#' \item{\code{plan}}{Fator que identifica de qual planta, de duas por
#'     parcela, corresponde a produção.}
#'
#' \item{\code{prod}}{Produção de frutos, em kg de frutos por planta.}
#'
#' }
#' @details O dataset \code{BarbinEx10} resulta de uma agregação dos
#'     dados do \code{BarbinEx9} que está disponível na seção Examples.
#' @keywords DBC
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 9, pág. 203)
#' @examples
#'
#' library(latticeExtra)
#'
#' data(BarbinEx9)
#'
#' str(BarbinEx9)
#'
#' xyplot(prod ~ reorder(clon, prod), data = BarbinEx9,
#'        groups = bloc, type = c("p", "a"),
#'        xlab = "Clones de laranja Pera-do-Rio",
#'        ylab = "Produção (kg de frutos/planta)",
#'        auto.key = list(columns = 3, title = "Bloco", cex.title = 1),
#'        scales = list(x = list(tck = c(1, 0))),
#'        xscale.components = function(...) {
#'                 ans <- xscale.components.default(...)
#'                 ans$bottom$ticks$tck <-
#'                     1.8 * (ans$bottom$ticks$at %% 2 + 0.25)
#'                 ans
#'        })
#'
#' BarbinEx10 <- aggregate(prod ~ bloc + clon,
#'                         data = BarbinEx9, FUN = mean)
#'
#' i <- with(BarbinEx10,
#'           c(which(clon == "Tardia CV4" & bloc == "I"),
#'             which(clon == "Paulo Rosa" & bloc == "II")))
#' BarbinEx10$prod[i] <- NA
#'
NULL
