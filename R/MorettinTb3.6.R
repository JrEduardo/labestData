#' @name MorettinTb3.6
#' @title Índice de IPI
#' @description Dados de uma série temporal de índice de produto industrial
#'     do Brasil (IPI), no período de 1969 a 1980. 
#' @format Um \code{data.frame} com 12 observações e 13 variáveis, em que
#'
#' \describe{
#'
#' \item{Ano}{Número inteiro que indica o momento o ano da observação.}
#'
#' \item{Jan}{Número decimal que identifica o valor da observação no mês de
#'     Janeiro do respectivo ano.}
#'
#' \item{Fev}{Número decimal que identifica o valor da observação no mês de
#'     Fevereiro do respectivo ano.}
#'     
#' \item{Mar}{Número decimal que identifica o valor da observação no mês de
#'     Março do respectivo ano.}
#'     
#' \item{Abr}{Número decimal que identifica o valor da observação no mês de
#'     Abril do respectivo ano.}
#'     
#' \item{Mai}{Número decimal que identifica o valor da observação no mês de
#'     Maio do respectivo ano.}
#'     
#' \item{Jun}{Número decimal que identifica o valor da observação no mês de
#'     Junho do respectivo ano.}
#'     
#' \item{Jul}{Número decimal que identifica o valor da observação no mês de
#'     Julho do respectivo ano.}
#'     
#' \item{Ago}{Número decimal que identifica o valor da observação no mês de
#'     Agosto do respectivo ano.}
#'     
#' \item{Set}{Número decimal que identifica o valor da observação no mês de
#'     Setembro do respectivo ano.}
#'     
#' \item{Out}{Número decimal que identifica o valor da observação no mês de
#'     Outubro do respectivo ano.}
#'     
#' \item{Nov}{Número decimal que identifica o valor da observação no mês de
#'     Novembro do respectivo ano.}
#'     
#' \item{Dez}{Número decimal que identifica o valor da observação no mês de
#'     Dezembro do respectivo ano.}
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.6
#'     pág. 68)
#' @examples
#'
#' data(MorettinTb3.6)
#' 
#' str(MorettinTb3.6)
#' lapply(MorettinTb3.6, 1, FUN=mean, na.rm = T)
#' 
#' plot(MorettinTb3.6$Jan, ylab = "Janeiro", xlab = "Valor")
#' 
NULL
