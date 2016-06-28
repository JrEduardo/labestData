#' @name ZimmermannTb16.8
#' @title Dias para Flora\enc{çã}{ca}o de Cultivares de Arroz em um Reticulado
#'     Quadrado
#' @description Experimento realizado em delineamento reticulado
#'     quadrado 5 \eqn{\times} 5, com três repetições. Os dados são
#'     referentes ao número de dias até a floração das cultivares de
#'     arroz de terras altas. São apresentados na tabela também os
#'     respectivos postos de cada dado, segundo a metodologia definida
#'     no teste de Durbin.
#' @format Um \code{data.frame} com 75 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{rept}{Fator categórico que representas as repetições de
#'     blocos. Cada repetição contém 5 blocos de tamanho 5 e uma
#'     repetição de cada cultivar.}
#'
#' \item{bloco}{Fator que identifica os blocos dentro de cada
#'     repetição.}
#'
#' \item{cult}{Fator que representa as cultivares.}
#'
#' \item{dias}{Número total de dias até a floração.}
#'
#' \item{posto}{Posto correpondente ao número de dias para floração das
#'     cultivares dentro dos blocos.}
#'
#' }
#' @seealso Os dados de produção de arroz do mesmo ensaio estão
#'     disponíveis em \code{\link{ZimmermannTb7.1}}.
#' @keywords LAT sobrevivencia
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 16.8, pág. 353)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.8)
#' str(ZimmermannTb16.8)
#'
#' p <- by(data = ZimmermannTb16.8,
#'         INDICES = with(ZimmermannTb16.8,
#'                        interaction(bloco, rept)),
#'         FUN = function(dataset) {
#'             dataset$posto <- rank(dataset$dias)
#'             return(dataset)
#'         })
#' ZimmermannTb16.8 <- do.call(rbind, p)
#' rownames(ZimmermannTb16.5) <- NULL
#'
#' xyplot(dias + posto ~ cult, outer = TRUE, groups = rept,
#'        data = ZimmermannTb16.8, jitter.x = TRUE,
#'        scales = list(y = list(relation = "free"),
#'                      x = list(rot = 90)),
#'        xlab = "Cultivares", ylab = "",
#'        strip = strip.custom(factor.levels = c("Dias para floração",
#'                                               "Posto")))
#'
#' xyplot(posto ~ dias, data = ZimmermannTb16.8,
#'        xlab = "Dias para floração", ylab = "Posto",
#'        jitter.y = TRUE)
#'
NULL
