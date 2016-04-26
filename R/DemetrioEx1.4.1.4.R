#' @name DemetrioEx1.4.1.4
#' @title Volume das Cerejeiras
#' 
#' @description Foram mensurados o diâmetro, a altura e o volume de 31
#'     cerejeiras com o objetivo de verificar a relação entre estas
#'     variáveis, tendo em vista a predição do volume de madeira em uma
#'     área de floresta.
#' 
#' @format Um \code{data.frame} de 31 linhas e 3 colunas.
#' 
#' \describe{
#' 
#'     \item{\code{dia}}{Diâmetro da cerejeira a 4.5 pés do solo, 
#'     medido em polegadas.}
#'     
#'     \item{\code{alt}}{Altura das cerejeiras, medida em pés.}
#'     
#'     \item{\code{vol}}{Volume das cerejeiras, medido em pés cúbicos.}
#'     
#' }
#' 
#' @keywords RM
#' 
#' @source Demétrio, C. G. B., Zocchi, S. S. (2011). Modelos de
#'     Regressão. Piracicaba: ESALQ. (Exercício 1.4.1.4 pág. 14)
#' 
#' @examples 
#' 
#' data(DemetrioEx1.4.1.4)
#' 
#' library(lattice)
#'
#' pairs(~ dia + alt + vol, data = DemetrioEx1.4.1.4,
#'      main = "Gráfico de Pares")
#'      
#' xyplot(vol ~ dia, data = DemetrioEx1.4.1.4,
#'      main = "Diâmetro VS Volume",
#'      xlab = "Diâmetro",
#'      ylab = "Volume",
#'      type = c("p", "r"), col.line = 3)
#'      
NULL
