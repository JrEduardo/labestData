#' @name StorckTb88
#' @title Dados de Exemplo de um Experimento Bifatorial Com Parcelas
#'      Subdivididas.
#' @description Resultados ficitícios (kg/parcela) de um experimento
#'     bifatorial 3x5 sob delineamento de blocos ao acaso com parcelas
#'     subdivididas com 5 repetições.
#' @format Um \code{data.frame} com 75 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{trat.A}}{ Os 3 níveis do fator A, nas parcelas principais
#'     , são constituídos por três épocas de semeadura de milho.  }
#' 
#' \item{\code{trat.D}}{ Os 5 níveis do fator D, nas subparcelas, são 
#'     cinco densidades de semeadura, respectivamente X= 30; 35; 40; 45
#'     e 50 mil plantas/ha. }
#' 
#' \item{\code{blocos}}{ Fator de 3 níveis constituídos por 5 blocos de 
#'     repetições. }
#' 
#' \item{\code{result}}{ Resultados (Kg/parcela) dos tratamentos. }
#' 
#' }
#' @keywords DEA
#' @source Storck, L., & Garcia, B. C., & Lopes, S. J., & Estefanel, 
#' V. (2011). Experimentaçãoo Vegetal (3th ed.). Santa Maria, RS: UFSM.
#' (Tabela 88, pág. 168.)
#' @examples
#' 
#' library(lattice)
#' 
#' data(StorckTb88)
#' 
#' xyplot(result~trat.D|trat.A , data = StorckTb88, ylab = "trat.D", 
#'    xlab = "trat.A")
#'     
#'     
NULL
