#' @name MorettinTb3.1
#' @title Consumo de Energia Elétrica
#' @description Dados de consumo de energia elétrica no Espírito Santo, 
#'     de Janeiro de 1977 a Dezembro de 1978, arredondados.
#' @format Um \code{data.frame} com 24 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{t}{Número inteiro que indica o momento no tempo da observação.}
#'
#' \item{Zt}{Número decimal que identifica o consumo de energia, sem 
#'     unidade de medida.}
#'
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.1
#'     pág. 49)
#' @examples
#'
#' data(MorettinTb3.1)
#' 
#' str(MorettinTb3.1)
#' fivenum(MorettinTb3.1$Zt)
#' 
#' plot(MorettinTb3.1)
NULL
