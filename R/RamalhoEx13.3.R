#' @name RamalhoEx13.3
#' @title Avalia\enc{çã}{ca}o do Stay Green em Fam\enc{í}{i}lias de Feijoeiro
#' @description Notas da avaliação do "stay green" obtidos de famílias
#'     de feijoeiro, avaliados nas gerações \eqn{F_{2:3}}, \eqn{F_{2:4}}
#'     e \eqn{F_{2:5}}.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{fam}}{Fator categórico de 20 níveis que indica a família
#'     de feijoeiro.}
#'
#' \item{\code{gerac}}{Fator categórico de 3 níveis (\eqn{F_{3}},
#'     \eqn{F_{4}} e \eqn{F_{5}}) que indica a geração do cruzamento.}
#'
#' \item{\code{nota}}{Notas para avaliação de "stay green".}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exercício 13.3, pág. 257)
#' @examples
#'
#' data(RamalhoEx13.3)
#'
#' str(RamalhoEx13.3)
#'
#' library(lattice)
#'
#' xyplot(nota ~ fam, groups = gerac,
#'        data = RamalhoEx13.3, type = c("p", "a"),
#'        ylab = "Nota de stay green",
#'        xlab = "Família",
#'        auto.key = list(title = "Geração", cex.title = 1.1,
#'                        columns = 3))
#'
#' ftable(with(RamalhoEx13.3,
#'             tapply(nota,
#'                    list(fam = fam,
#'                         gerac = gerac),
#'                    FUN = mean)))
#'
NULL
