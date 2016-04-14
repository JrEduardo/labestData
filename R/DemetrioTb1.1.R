#' @name DemetrioTb1.1
#' @title Níveis de Fósforo no Solo após Plantio de Milho
#' 
#' @description Resultados de um experimento onde diferentes níveis de
#'     fósforo orgânico foram utilizados na preparação do solo para o
#'     plantio de milho. Após 38 dias, as plantas foram colhidas,
#'     mediu-se o novamente os níveis de fósforo e calculou-se o fósforo
#'     disponível para a planta em cada amostra de solo.
#' 
#' @format Um \code{data.frame} com 9 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{fo}}{Níveis de fósforo orgânico adicionado ao solo,
#'     mensurados em partes por milhão (ppm).}
#'     
#'     \item{\code{fd}}{Fósforo disponível no solo após a colheita do
#'     milho, mensurado em partes por milhão (ppm).}
#' 
#' }
#' 
#' @keywords RS
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 1.1 pág. 8)
#' 
#' @examples 
#' 
#' library(lattice)
#' 
#' data(DemetrioTb1.1)
#' 
#' xyplot(fd ~ fo, data = DemetrioTb1.1,
#'        main = "Níveis de fósforo no solo",
#'        xlab = "Fósforo orgânico",
#'        ylab = "Fósforo disponível",
#'        type = c("p", "r"), col.line = 3)
NULL
