#' @name BanzattoQd6.3.4
#' @title Épocas de Plantio e Colheita na Produção de Beterraba
#' @description Experimento estudar o efeito de datas de plantio, épocas
#'     de colheita e aplicação de inseticidas na producação de
#'     beterraba. Os tratamentos foi arranjados em parcelas
#'     subsubdivididas no delineamento de blocos casualizados.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis.
#'     \describe{
#'
#' \item{\code{data}}{Fator de níveis ordinais que representa as datas
#'     de plantio de beterraba. Os níveis do fator data foram
#'     casualizados nas parcelas.}
#'
#' \item{\code{inset}}{Variável binária que representa a aplicação de
#'     inseticida (1) ou não (0). Este fator foi casualizado as
#'     subparcelas.}
#'
#' \item{\code{epoc}}{Fator de níveis ordinais que representa a época de
#'     colheita das beterrabas. Esse fator foi casualizado nas
#'     subsubparcelas.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais que presenta os blocos
#'     do experimento.}
#'
#' \item{\code{prod}}{Produção de beterraba. A unidade de medida não foi
#'     informada.}
#'
#' }
#' @keywords DBC PSS
#' @source Banzatto, D. A., Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 6.3.4,
#'     pág. 156)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd6.3.4)
#'
#' str(BanzattoQd6.3.4)
#'
#' ftable(with(BanzattoQd6.3.4,
#'             tapply(prod,
#'                    list(data = data,
#'                         inset = inset,
#'                         epoc = epoc,
#'                         bloco = bloco),
#'                    FUN = mean)))
#'
#' xyplot(prod ~ epoc | data, groups = inset, data = BanzattoQd6.3.4,
#'        as.table = TRUE, layout = c(NA, 1),
#'        jitter.x = TRUE, type = c("p", "a"),
#'        auto.key = list(title = "Aplicação de inseticida",
#'                        cex.title = 1, columns = 2),
#'        strip = strip.custom(var.name = "Época", strip.names = TRUE),
#'        xlab = "Ordem das datas de plantio",
#'        ylab = "Produção de beterraba")
#'
NULL
