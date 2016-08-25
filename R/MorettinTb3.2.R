#' @name MorettinTb3.2
#' @title Previsão de Consumo de Energia Elétrica
#' @description Dados reais e de previsão do consumo de energia elétrica no 
#'      Espírito Santo, para Janeiro a Março de 1979.
#' @format Um \code{data.frame} com 4 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{h}{Número inteiro que indica o momento o passo da observação.}
#'
#' \item{Zt}{Número decimal que identifica o consumo de energia real, sem 
#'     unidade de medida.}
#'     
#' \item{Zn}{Número decimal que identifica o consumo de energia previsto, sem 
#'     unidade de medida.}
#'
#' \item{e}{Número decimal que identifica o erro de previsão do consumo de 
#'     energia, sem unidade de medida.}
#'     
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.2
#'     pág. 51)
#' @examples
#'
#' data(MorettinTb3.2)
#' 
#' str(MorettinTb3.2)
#' rbind(fivenum(MorettinTb3.2$Zt), fivenum(MorettinTb3.2$Zn))
#'
#' plot(MorettinTb3.2$Zt, ylab = "Zt", xlab = "Valores")
#' plot(MorettinTb3.2$Zn, ylab = "Zn", xlab = "Valores")
#' 
NULL
