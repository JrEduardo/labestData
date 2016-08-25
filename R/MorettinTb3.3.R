#' @name MorettinTb3.3
#' @title Consumo de Energia Elétrica
#' @description Estimativas de tendência de dados sobre o consumo de energia 
#'     elétrica no Espírito Santo, de Janeiro de 1977 a Dezembro de 1978. 
#' @format Um \code{data.frame} com 24 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{t}{Número inteiro que indica o momento no tempo da observação.}
#'
#' \item{Zt}{Número decimal que identifica o consumo de energia, sem 
#'     unidade de medida.}
#'
#' \item{Zt_}{Número decimal que identifica a estimativa de tendência do 
#'     consumo de energia, sem unidade de medida.}
#'     
#' \item{Yt}{Número decimal que indica a diferença entre Zt e Zt_.}
#'     
#' \item{Zt_12}{Número decimal que identifica a média móvel centrada de 12 meses
#'    do consumo de energia, sem unidade de medida.}     
#'    
#' \item{Zt_5}{Número decimal que identifica a mediana móvel centrada de 11 meses
#'    do consumo de energia, sem unidade de medida.}
#'    
#' \item{dZt}{Número decimal que indica a diferença entre Zt(i) e Zt(i+1).}
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.3
#'     pág. 54)
#' @examples
#'
#' data(MorettinTb3.3)
#' 
#' str(MorettinTb3.3)
#' fivenum(MorettinTb3.1$Zt)
#' 
#' lapply(MorettinTb3.3, 1, FUN=mean, na.rm = T)
#'
#' plot(MorettinTb3.3$Zt_5, ylab = "Zt5", xlab = "Valor")
#' plot(MorettinTb3.3$Zt_12, ylab = "Zn12", xlab = "Valor")
NULL
