#' @name MorettinTb3.10
#' @title Temperaturas em São Paulo
#' @description Dados de uma série de temperaturas em São Paulo, com média
#'     de 23 leituras diárias. A tabela refere-se a Janeiro de 1952 a Dezembro
#'     de 1956. 
#' @format Uma série temporal (classe \code{ts}) com 5 observações, em que
#'
#' \describe{
#'
#' \item{\code{Jan}}{Número decimal que indica a leitura do mês de Janeiro.}
#' 
#' \item{\code{Fev}}{Número decimal que indica a leitura do mês de Fevereiro.}
#'     
#' \item{\code{Mar}}{Número decimal que indica a leitura do mês de Março.}
#' 
#' \item{\code{Abril}}{Número decimal que indica a leitura do mês de Abril.}
#' 
#' \item{\code{Mai}}{Número decimal que indica a leitura do mês de Maio.}
#' 
#' \item{\code{Jun}}{Número decimal que indica a leitura do mês de Junho.}
#' 
#' \item{\code{Jul}}{Número decimal que indica a leitura do mês de Julho.}
#' 
#' \item{\code{Ago}}{Número decimal que indica a leitura do mês de Agosto.}
#' 
#' \item{\code{Set}}{Número decimal que indica a leitura do mês de Setembro.}
#' 
#' \item{\code{Out}}{Número decimal que indica a leitura do mês de Outubro.}
#' 
#' \item{\code{Nov}}{Número decimal que indica a leitura do mês de Novembro.}
#' 
#' \item{\code{Dez}}{Número decimal que indica a leitura do mês de Dezembro.}
#'      
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.10
#'     pág. 75)
#' @examples
#'
#' data(MorettinTb3.10)
#' 
#' library(lattice)
#' str(MorettinTb3.10)
#' 
#' xyplot(MorettinTb3.10, type = c("l", "g"), 
#'     layout = c(2, 6), xlab = "Anos", ylab = "Valores", 
#'     main = "Série de IPI", strip = strip.custom(bg = "white"), 
#'     lwd = 2, col = c("red", "green", "violetred", "blue", "palegreen2", 
#'                      "orange"), 
#'     scales = list(y = list(rot = 0)))
NULL