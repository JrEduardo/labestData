#' @name StorckTb74
#' @title Dados de Exemplo de um Experimento Bifatorial
#' @description Resultados ficitícios (kg/parcela) apresentados como 
#'     exemplo de um experimento bifatorial 3x5 sob delineamento de 
#'     blocos ao acaso com 5 repetições.
#' @format Um \code{data.frame} com 75 observações e 4 variáveis.
#' \describe{ 
#' 
#' \item{\code{trat.A}}{Os 3 níveis do fator A são constituídos por 3
#'     épocas de semeadura de milho.  }
#' 
#' \item{\code{trat.B}}{ Os 5 níveis do fator D são constituidos por 5 
#'     densidades de semeadura, respectivamente, X= 30; 35; 40; 45 e 50
#'     mil plantas/ha. }
#' 
#' \item{\code{blocos}}{ Fator d5 4 níveis constituidos por 5 blocos de 
#'     repetições. }
#' 
#' \item{\code{result}}{ Resultados (Kg/parcela) dos tratamentos.  }
#' 
#' }
#' @keywords DEA
#' @source Storck, L., & Garcia, B. C., & Lopes, S. J., & Estefanel, 
#' V. (2011). Experimentaçãoo Vegetal (3th ed.). Santa Maria, RS: UFSM.
#' (Tabela 74, pág. 150.)
#' @examples
#' 
#' 
#' library(lattice)
#' 
#' data(StorckTb74)
#' 
#' xyplot(result~trat.B|trat.A , data = StorckTb74, ylab = "trat.B", 
#'     xlab = "trat.A" )
#'     
#'     
NULL
