#' @name EpprechtTb5.2
#' @title Medidas de peças em uma linha de produção
#' @description Dados referentes às medidas de peças de uma linha de
#'     produção. O objetivo é analisar a repetitividade e a 
#'     reprodutividade de um micrômetro com leitura milesimal, usado na
#'     medição de um componente de um processo de usinagem. Três 
#'     operadores treinados mediram duas vezes cada uma de 10 peças. 
#'     A sequência em que cada um dos operadores mede cada uma das 
#'     peças foi aleatorizada.
#'     
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, 
#'     em que
#' 
#' \describe{
#'
#' \item{\code{pc}}{Identificação da peça.}
#' 
#' \item{\code{op}}{Fator que indica o operador que realizou a medição
#'     da peça (de 1 a 3).}
#'     
#' \item{\code{tam}}{Tamanho da peça (µm).}
#' 
#' }
#'
#' @keywords CEQ ASM
#' @source Costa, A. F. B., Epprecht, E. K., Carpinetti, L. (2010).
#'      Controle Estatístico de Qualidade (2nd ed.). São Paulo - SP:
#'      Editora Atlas. (pg 152).
#' 
#' @examples
#'
#' data(EpprechtTb5.2)
#' 
#' boxplot(tam ~ op, data = EpprechtTb5.2,
#'         xlab = "Operário", 
#'         ylab = "Tamanho", 
#'         main = "Boxplots para os tamanhos das peças aferidos pelos três 
#'             operários",
#'         col = c("#F0FFFF","#FFDAB9", "#C1FFC1"))
#' 
#'                   
NULL