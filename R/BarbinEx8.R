#' @name BarbinEx8
#' @title Controle Químico do Damping-off em Eucalipto
#' @description Os dados referem-se à altura (cm) de mudas de
#'     \emph{E. saligna} Sm., de um ensaio inteiramente casualizado, de
#'     controle químico de "Damping-off" conduzido por Krugner (1971).
#'
#' @format Um \code{data.frame} com 45 observações e 3 variáveis.
#'
#' \describe{
#'
#' \item{\code{fung}}{Fator categórico que indica o fungicida usado:
#'     \code{Test} - Testemunha (sem fungicida), \code{Dithane} -
#'     Dithane M-45 e Thiran.}
#'
#' \item{\code{fumig}}{Fator categórico que indica o fumigante de solo
#'     usado: Vapan, \code{Brom} - Brometo de metila,
#'     Basamid, PNCB e \code{Test} - Testemunha (sem fumigante).}
#'
#' \item{\code{alt}}{Altura da muda (cm).}
#'
#' }
#' @keywords BDC
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 8, pág. 202)
#'
#'  Krugner, T. L. Controle químico do "damping-off" em
#'     eucalipto. Piracicaba, 1971. 60p. Dissertação (Mestrado) - Escola
#'     Superior de Agricultura "Luiz de Queiroz"/USP.
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx8)
#'
#' str(BarbinEx8)
#'
#' xyplot(alt ~ fumig, groups = fung, data = BarbinEx8,
#'        type = c("p", "a"),
#'        xlab = "Fumigantes de solo",
#'        ylab = expression("Altura de mudas de"
#'                          ~italic("E. saligna")~(cm)),
#'        auto.key = list(columns = 3,
#'                        title = "Fungicidas", cex.title = 1.1))
#'
NULL
