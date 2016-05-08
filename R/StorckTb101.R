#' @name StorckTb101
#' @title Interpretação do Efeito de Tratamentos.
#' @description Experimento de 6 cultivres de milho, conduzido no 
#'     delineamento de blocos ao acaso com 4 repetições, em 4 locais
#'     (4 ambientes) da região central d Rio Grande do Sul, avaiando-se
#'     o rendimento de grãos em kg/parcela.
#' @format Um \code{data.frame} com 96 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{amb}}{Fator de 4 níveis constituídos por 4 ambientes.}
#' 
#' \item{\code{trat}}{Fator de 6 níveis constituídos por 6 tratamentos.}
#' 
#' \item{\code{blocos}}{Fator de 4 níveis constituídos por 4 blocos de 
#'     repetições.}
#' 
#' \item{\code{result}}{Resultados (Kg/parcela) dos tratamentos.}
#' 
#' }
#' @keywords DEA
#' @source Storck, L., & Garcia, B. C., & Lopes, S. J., & Estefanel, 
#' V. (2011). Experimentaçãoo Vegetal (3th ed.). Santa Maria, RS: UFSM.
#' (Tabela 101, pág. 182).
#' @examples
#' 
#' library(lattice)
#' 
#' data(StorckTb101)
#' 
#' xyplot(result~trat|amb , data = StorckTb101, ylab = "Tratamentos", 
#'        xlab = "Ambiente")
#'        
#'        
NULL


