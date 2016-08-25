#' @name MorettinTb3.4
#' @title Consumo de Energia Elétrica
#' @description Estimativas de tendência de dados sobre o consumo de energia 
#'     elétrica no Espírito Santo, de Janeiro de 1977 a Dezembro de 1978. 
#' @format Um \code{data.frame} com 24 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{t}{Número inteiro que indica o momento no tempo da observação.}
#'
#' \item{Zt}{Número decimal que identifica o consumo de energia, sem 
#'     unidade de medida.}
#'
#' \item{Rt}{Número inteiro que indica o posto de Zt, para o cálculo do
#'     coeficiente de correlação de Spearman.}
#'    
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.4
#'     pág. 63)
#' @examples
#'
#' data(MorettinTb3.4)
#' 
#' str(MorettinTb3.4)
#' fivenum(MorettinTb3.4$Zt)
#' 
#' plot(MorettinTb3.4$Rt, ylab = "Posto", xlab = "Valor")
#' plot(MorettinTb3.4$Zt, ylab = "Zt", xlab = "Valor")
#' 
NULL
