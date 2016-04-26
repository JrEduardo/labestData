#' @name BanzattoQd9.2.1
#' @title Produção de Variedades de Milho
#' @description Resultados de um experimento para avaliação da produção
#'     de cultivares de milho. O experimento foi instalado em
#'     delineamento de blocos casualizados. Além da produção em cada
#'     parcela, contou-se o número de plantas por parcela (stand)
#' @format Um \code{data.frame} com 24 observações e 6 variáveis.
#'
#' \describe{
#'
#' \item{\code{varied}}{Fator de níveis categóricos que representa as
#'     variedades de milho.}
#'
#' \item{\code{A}}{Fator de níveis categóricos que representa os níveis
#'     de um fator fictício A.}
#'
#' \item{\code{B}}{Fator de níveis categóricos que representa os níveis
#'     de um fator fictício B.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que indica os blocos
#'     do experimento.}
#'
#' \item{\code{nppp}}{Número de plantas por parcela.}
#'
#' \item{\code{prod}}{Produção de milho (g) por parcela.}
#'
#' }
#'
#' Os fatores A e B são fictícios pois foram criados apenas para
#'     demonstrar como fazer a análise caso o experimento fosse um
#'     fatorial 3 \eqn{\times} 2 ao invés de ter um único fator de 6
#'     níveis.
#'
#' @keywords DBC COV
#' @source Banzatto, D. A., Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 9.2.1,
#'     pág. 206)
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd9.2.1)
#'
#' str(BanzattoQd9.2.1)
#'
#' xyplot(prod ~ varied, data = BanzattoQd9.2.1,
#'        groups = bloco, type = c("p", "a", "g"), as.table = TRUE,
#'        cex = with(BanzattoQd9.2.1,
#'                   0.5 + (nppp - min(nppp))/diff(range(nppp))),
#'        auto.key = list(space = "right", title = "Bloco",
#'                        cex.title = 1, columns = 1),
#'        xlab = "Variedades de milho",
#'        ylab = expression("Produção"~(g~parcela^{-1})))
#'
NULL
