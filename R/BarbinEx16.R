#' @name BarbinEx16
#' @title Efeito de Sistemas de Plantio na Produtividade de
#'     Cana-de-açúcar
#' @description Produtividade de cana-de-açúcar, cultivar CB-43-5,
#'     obtidos de dois sistemas de plantio nos dois primeiros cortes
#'     (cana planta e cana soca) em um ensaio de parcelas subdivididas
#'     em delineamento inteiramente casualizado. Os níveis de sistema de
#'     plantio (\code{sulc}) são aleatorizados às parcelas, segundo um
#'     delineamento inteiramente casualizado, portanto este é o fator da
#'     parcela. O corte é o fator da subparcela porque são medidas
#'     repetidas (no tempo, inclusive) na mesma unidade experimental.
#' @format Um \code{data.frame} com 40 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{cort}}{Fator categórico em que os níveis indicam o
#'     primeiro (corte da cana planta) e o segundo (corte da planta
#'     soca) corte da cultura.}
#'
#' \item{\code{sulc}}{Fator categórico cujos níveis identificam o tipo
#'     de sistema de plantio: com sulco simples ou com sulco duplo. O
#'     espaçamento entre sulcos simples foi de 1,40 m e entre sulcos
#'     duplos foi de 0,60 \eqn{\times} 1,40 m.}
#'
#' \item{\code{rept}}{Identifica as repetições.}
#'
#' \item{\code{prod}}{Produtividade da cana-de-açúcar, em toneladas por
#'     hectare.}
#'
#' }
#' @keywords PS FAT2
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 16, pág. 208)
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx16)
#'
#' str(BarbinEx16)
#'
#' xyplot(prod ~ sulc, groups = cort,
#'        data = BarbinEx16, type = c("p", "a"),
#'        xlab = "Sulco",
#'        ylab = "Produtividade de cana-de-açúcar (t/ha)",
#'        auto.key = list(columns = 2, cex.title = 1,
#'                        title = "Corte da cana"))
#'
#' xyplot(prod ~ cort, groups = interaction(sulc, rept),
#'        data = BarbinEx16, type = "b",
#'        xlab = "Corte",
#'        ylab = "Produtividade de cana-de-açúcar (t/ha)")
#'
NULL
