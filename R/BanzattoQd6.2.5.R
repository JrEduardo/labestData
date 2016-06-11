#' @name BanzattoQd6.2.5
#' @title Fontes e Doses para Adubação Nitrogenada no Milho
#' @description Experimento que estudou a produção de milho como função
#'     de fontes e doses de adubação nitrogenada. O experimento foi
#'     instalado em delineamento de blocos casualizados com arranjo de
#'     tratamento em parcela subdividida, sendo as doses casualizadas
#'     dentro dos níveis de adubo.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{adubo}}{Fator de níveis nominais que são os adubos fontes
#'     de nitrogênio.}
#'
#' \item{\code{dose}}{Fator de níveis métricos que são as doses
#'     aplicadas, em kg de nitrogênio por hectare.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que representa os blocos
#'     do experimento.}
#'
#' \item{\code{prod}}{Produção de milho, em kg ha \eqn{^{-1}}}.
#'
#' }
#' @keywords DBC PS
#' @source Banzatto, D. A., Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 6.2.5,
#'     pág. 144)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd6.2.5)
#'
#' str(BanzattoQd6.2.5)
#'
#' ftable(with(BanzattoQd6.2.5,
#'             tapply(prod,
#'                    list(adubo = adubo,
#'                         dose = dose,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(prod ~ dose, groups = adubo, data = BanzattoQd6.2.5,
#'        as.table = TRUE, jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Adubos fontes de nitrogênio",
#'                        cex.title = 1, columns = 2),
#'        xlab = expression(
#'            "Quantidade aplicada de nitrogênio"~(kg~ha^{-1})),
#'        ylab = expression("Produção de milho"~(kg~ha^{-1})))
#'
#' xyplot(prod ~ dose | adubo, data = BanzattoQd6.2.5,
#'        as.table = TRUE, jitter.x = TRUE,
#'        xlab = expression(
#'            "Quantidade aplicada de nitrogênio"~(kg~ha^{-1})),
#'        ylab = expression("Produção de milho"~(kg~ha^{-1})),
#'        panel = function(x, y, ...){
#'            panel.xyplot(x, y, ...)
#'            m0 <- lm(y ~ poly(x, degree = 2))
#'            panel.curve(predict(m0, newdata = list(x = x)))
#'        })
#'
NULL
