#' @name BanzattoQd5.3.1
#' @title Produ\enc{çã}{ca}o de Caf\enc{é}{e} em Fun\enc{çã}{ca}o de Aduba\enc{çã}{ca}o NPK
#' @description Resultados de um experimento em arranjo fatorial triplo
#'     2 \eqn{\times} 2 \eqn{\times} 2, instalado em delineamento de
#'     blocos casualizados, para estudar o efeito da combinação de
#'     nitrogênio, fósforo e potássio na produção de café coco.
#' @format Um \code{data.frame} com 48 observações e 5 variáveis.
#' \describe{
#'
#' \item{\code{N}}{Variável numérica que indica ausência (0) ou
#'     presença (1) de nitrogênio.}
#'
#' \item{\code{P}}{Variável numérica que indica ausência (0) ou
#'     presença (1) de fósforo.}
#'
#' \item{\code{K}}{Variável numérica que indica ausência (0) ou
#'     presença (1) de potássio.}
#'
#' \item{\code{bloco}}{Fator de 6 níveis nominais, presente para
#'     controle local.}
#'
#' \item{\code{prod}}{Variável resposta contínua que é a produção de
#'     café coco (kg ha\eqn{^{-1}}) obtida em cada uma das parcelas para
#'     cada uma das combinações de N, P e K na adubação.}
#'
#' }
#' @keywords DBC FAT3
#' @source Banzatto, D. A., Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 5.3.1,
#'     pág. 113)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd5.3.1)
#'
#' addmargins(with(BanzattoQd5.3.1,
#'                 tapply(X = prod,
#'                        INDEX = list(interaction(N, P, K), bloco),
#'                        FUN = sum)))
#'
#' xyplot(prod ~ N, data = BanzattoQd5.3.1,
#'        groups = interaction(P, K, sep = ":"), type = c("p", "a"),
#'        auto.key = list(title = "P:K", cex.title = 1,
#'                        columns = 1, corner = c(0.05, 0.95)),
#'        xlab = "Nitrogênio (0 = ausente, 1 = presente)",
#'        ylab = expression("Produção de café coco"~(kg~ha^{-1})))
#'
#' xyplot(prod ~ interaction(N, P, K, sep = ":"),
#'        data = BanzattoQd5.3.1,
#'        xlab = "N:P:K (0 = ausente, 1 = presente)",
#'        ylab = expression("Produção de café coco"~(kg~ha^{-1})))
#'
NULL
