#' @name DiasEg7.1
#' @title Luz e Água na Produção de Tomateiros
#' @description Resultados de um experimento que avaliou o efeito da
#'     quantidade de luz e de água na produção de tomateiros.
#' @format Um \code{data.frame} com 18 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{luz}}{Fator métrico que identifica, em escala codificada,
#'     a quantidade de luz aplicada.}
#'
#' \item{\code{agua}}{Fator métrico que identifica, em escala codificada,
#'     a quantidade de água aplicada.}
#'
#' \item{\code{prod}}{Produção de tomateiros.}
#'
#' }
#' @keywords DIC RM
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exemplo 7.1, pág. 187)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg7.1)
#' str(DiasEg7.1)
#'
#' xtabs(~luz + agua, data = DiasEg7.1)
#'
#' xyplot(prod ~ luz, groups = agua, data = DiasEg7.1,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Níveis de luz (codificados)",
#'        ylab = "Produção de tomateiros",
#'        auto.key = list(title = "Água (codificado)",
#'                        cex.title = 1.1, columns = 2))
#'
NULL
