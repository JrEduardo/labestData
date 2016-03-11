#' @name BorgesTb1.3
#' @title Tensiômetro
#' 
#' @description Estudo da construção de um tensiômetro de leitura
#'     direta. Neste estudo obteve-se os resultados de alturas da câmara
#'     no tensiômetro e tensão da água no solo.
#' 
#' @format Um \code{data.frame} com 9 linhas e 2 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{altura}}{ Altura da câmara no tensiômetro medida
#'     em milímetros (mm). }
#'     
#'     \item{\code{tensao}}{ Tensão da água no solo medida em coloumb
#'     (mb) }
#' 
#' }
#' 
#' @keywords tensiômetro
#' 
#' @source Demétrio, C. G. B., & Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Tabela 1.3 pág. 10)
#' 
#' @examples
#' 
#' library(lattice)
#' 
#' data(BorgesTb1.3)
#' 
#' xyplot(tensao ~ altura, data = BorgesTb1.3,
#'     main = "Altura VS Tensão",
#'     xlab = "Altura do Tensiômetro",
#'     ylab = "Tensão da Água")
NULL
