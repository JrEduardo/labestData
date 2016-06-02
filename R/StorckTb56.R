#' @name StorckTb56
#' @title Experimento Bifatorial em Delineamento de Blocos Casualizados
#' @description Resultados (kg/parcela) em um experimento bifatorial 3
#'     \eqn{\times} 4 no delineamento de blocos ao acaso.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{espec}}{Fator de 3 níveis que representa espécies.}
#'
#' \item{\code{manejo}}{Fator de 4 níveis que representa formas de
#'     manejo.}
#'
#' \item{\code{bloc}}{Fator de 4 níveis que são os blocos.}
#'
#' \item{\code{result}}{Resultados de produção (kg/parcela).}
#'
#' }
#' @keywords DBC FAT2
#' @source Storck, L., Garcia, B. C., Lopes, S. J., Estefanel,
#'     V. (2011). Experimentação Vegetal (3th ed.). Santa Maria, RS:
#'     UFSM.  (Tabela 56, pg 134)
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb56)
#' str(StorckTb56)
#'
#' xyplot(prod ~ manejo, groups = espec, data = StorckTb56,
#'        type = c("p", "a"),
#'        xlab = "Tipos de manejo",
#'        ylab = "Produção (kg/parcela)",
#'        auto.key = list(title = "Espécie", cex.title = 1.1,
#'                        columns = 3))
#'
NULL
