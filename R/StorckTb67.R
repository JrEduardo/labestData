#' @name StorckTb67
#' @title Dados de Exemplo de um Experimento Bifatorial
#' @description Resultados ficitícios (kg/parcela) apresentados como 
#'     exemplo de um experimento bifatorial 3x5 sob delineamento de 
#'     blocos ao acaso com 4 repetições.
#' @format Um \code{data.frame} com 60 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{trat.A}}{Os 3 níveis do fator A são constituídos por 3
#'     cultivares de trigo. }
#' 
#' \item{\code{trat.D}}{Os 5 níveis do fator D são constituidos por 5 
#'     doses de NPK/ha.}
#' 
#' \item{\code{blocos}}{Fator de 4 níveis constituidos por 4
#'     blocos de repetições.}
#' 
#' \item{\code{result}}{ Resultados (Kg/parcela) dos tratamentos }
#' 
#' }
#' @keywords DEA
#' @source  Storck, L., & Garcia, B. C., & Lopes, S. J., & Estefanel, 
#' V. (2011). Experimentaçãoo Vegetal (3th ed.). Santa Maria, RS: UFSM.
#' (Tabela 67, pág. 144)
#' @examples
#' 
#' library(lattice)
#' 
#' 
#' data(StorckTb2)
#' 
#' 
#' xyplot(result~trat.D|trat.A , data = StorckTb67, ylab = "trat.D", 
#'     xlab = "trat.A" )
#'     
#'     
NULL
