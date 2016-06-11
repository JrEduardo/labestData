#' @name RamalhoEg13.2
#' @title Produção de Grãos de Milho em Consórcio com Feijão.
#' @description Dados referente ao experimento conduzido por Rezende et
#'     al. (1994), envolvendo 4 cultivares de milho consorciadas com 3
#'     de feijão.
#' @format Um \code{data.frame} com 36 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{milh}}{Fator categórico de 4 níveis que indica as
#'     cultivares de milho.}
#'
#' \item{\code{feij}}{Fator categórico de 3 níveis, indica as cultivares
#' de milho.}
#'
#' \item{\code{bloc}}{Fator categórico de 3 níveis, usado para fazer
#'     controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de milho, medido em kg/ha.}
#'
#' \item{\code{plant}}{Número de plantas por parcela.}
#'
#' }
#' @keywords COV FAT2 DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 13.2, pág. 237)
#'
#'     Rezende, G. D. S. P.; Ramalho, M. A. P. Competitive Ability of
#'     Maize and Commom Bean (Phaseolus Vulgaris L.) Cultivars
#'     Intercropped in Different Environments. Euphytica. Wageningen.
#'     v.123, n.2. 1994.
#' @examples
#'
#' data(RamalhoEg13.2)
#'
#' str(RamalhoEg13.2)
#'
#' ftable(with(RamalhoEg13.2,
#'             tapply(prod,
#'                    list(milh = milh,
#'                         feij = feij,
#'                         bloc = bloc),
#'                    FUN = mean)))
#'
#' library(lattice)
#'
#' xyplot(prod ~ milh, data = RamalhoEg13.2,
#'        groups = feij, type=c("p", "a"),
#'        xlab = "Plantas por Parcela",
#'        ylab = "Produção em (kg/ha)")
#'
NULL
