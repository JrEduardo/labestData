#' @name EpprechtTb5.9
#' @title Medidas de pe\enc{ç}{c}as de uma linha de produ\enc{çã}{ca}o
#' @description Após a aquisição de um equipamento de medição mais 
#'     sofisticado que o anterior, foi realizado um estudo de 
#'     repetitividade e reprodutividade do processo de medida com o 
#'     novo equipamento. Cada peça foi medida três vezes por cada um de
#'     dois operadores.
#' 
#' 
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' \item{\code{op}}{Fator que indica o operador que realizou a medição
#'     da peça (1 = primeiro operador, 2 = segundo operador).}
#'  
#' \item{\code{tam}}{Tamanho da peça.}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 157).
#' 
#' @examples
#'
#' data(EpprechtTb5.9)
#' 
#' EpprechtTb5.9$op <- as.factor(EpprechtTb5.9$op)
#' 
#' boxplot(tam~op, data=EpprechtTb5.9,
#'         xlab="Operador", 
#'         ylab="Tamanho", 
#'         main="Boxplot dos tamanhos das peças medidas pelos dois operadores",
#'         col=c("#F0FFFF","#FFDAB9"))
#' grid(nx=NA, ny=NULL, col="grey")
#'                   
NULL
