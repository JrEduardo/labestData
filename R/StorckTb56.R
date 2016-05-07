#' @name StorckTb56
#' @title Dados de Exemplo de um Experimento Bifatorial
#' @description Resultados (kg/parcela) apresentados como exemplo de um
#'     experimento bifatorial 3x4 sob delineamento de blocos ao acaso.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{trat.A}}{Fator de 3 níveis, constituidos por 3 espécies.}
#' 
#' \item{\code{trat.D}}{Fator de 4 níveis, constituidos por 4 formas de 
#'     manejo.}
#' 
#' \item{\code{blocos}}{Fator de 4 níveis constituidos por 4
#'     blocos.}
#' 
#' \item{\code{result}}{Resultados (Kg/parcela) dos tratamentos.}
#' 
#' }
#' @keywords DEA
#' @source Storck, L., & Garcia, B. C., & Lopes, S. J., & Estefanel, 
#' V. (2011). ExperimentaÃ§Ã£o Vegetal (3th ed.). Santa Maria, RS: ufsm.
#' (Tabela 56, pg 134)
#' @examples 
#' 
#' library(lattice)
#' 
#' data(StorckTb56)
#' 
#' plot(trat.D ~ trat.A, data = StorckTb56)
#'
#'
NULL