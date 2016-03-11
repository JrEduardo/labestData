#' @name BorgesTb1.1
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
#' @keywords fósforo milho
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 1.1 pág. 8)
#' 
#' @examples 
#' 
#' ## Carregando pacotes necessários -----------------------------------
#' 
#' library(lattice)
#' 
#' ## Carregando o banco de dados --------------------------------------
#' 
#' data(BorgesTb1.1)
#' 
#' ## Plotando o gráfico -----------------------------------------------
#' 
#' xyplot(fd ~ fo, data = BorgesTb1.1,
#'     main = "Orgânico VS Disponível",
#'     xlab = "Fósforo Orgânico",
#'     ylab = "Fósforo Disponível",
#'     panel = function(x, y) {
#'         panel.xyplot(x, y)
#'         panel.abline(lm(y ~ x), col = 3)
#'     })
#'     
#' ## Verificando Significância ----------------------------------------
#' 
#' summary(lm(fd ~ fo, data = BorgesTb1.1))
#' 
NULL
