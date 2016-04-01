#' @name BanzattoQd6.2.2
#' @title Espaçamento de Plantio na Produção de Cana-de-açúcar
#' @description O experimento avaliou o efeito do espaçamento de plantio
#'     na produção de variedades de cana-de-açúcar. Para estudar os dois
#'     fatores, espaçamento e variedades, considerou-se o delineamento
#'     de blocos casualizados com arranjo de tratamentos de parcelas
#'     subdivididas com o espaçamento sendo casualizado dentro dos
#'     níveis de variedade.
#' @format Um \code{data.frame} com 40 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis nominais que representa as
#'     variedades de cana-de-açúcar.}
#'
#' \item{\code{espac}}{Fator de níveis nominais que representa o
#'     espaçamento entre linhas para o plantio da cana-de-açúcar.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que são os blocos do
#'     experimento.}
#'
#' \item{\code{prod}}{Produção de cana-de-açúcar, em ton ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC PS
#' @source Banzatto, D. A., Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 6.2.2,
#'     pág. 138)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd6.2.2)
#'
#' str(BanzattoQd6.2.2)
#'
#' ftable(with(BanzattoQd6.2.2,
#'             tapply(prod,
#'                    list(varied = varied,
#'                         espac = espac,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(prod ~ varied, groups = espac, data = BanzattoQd6.2.2,
#'        as.table = TRUE, jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Espaçamento de cultivo",
#'                        cex.title = 1, columns = 2,
#'                        corner = c(0.85, 0.95)),
#'        xlab = "Variedades de cana-de-açúcar",
#'        ylab = expression("Produção de cana-de-açúcar"~(ton~ha^{-1})))
#'
NULL
