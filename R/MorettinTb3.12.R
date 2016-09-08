#' @name MorettinTb3.12
#' @title Importações feitas pelo Brasil
#' @description Dados de uma série de importações feitas pelo Brasil, 
#'     de acordo com o Banco Central do Brasil. A unidade de medida é
#'     milhões de dólares.
#' @format Uma série temporal (classe \code{ts}) mensal de 1968 a 1974, 
#'     com 7 observações, em que
#'
#' \describe{
#'
#' \item{\code{Jan}}{Número decimal que indica as importações do mês de Janeiro.}
#' 
#' \item{\code{Fev}}{Número decimal que indica as importações do mês de Fevereiro.}
#'     
#' \item{\code{Mar}}{Número decimal que indica as importações do mês de Março.}
#' 
#' \item{\code{Abril}}{Número decimal que indica as importações do mês de Abril.}
#' 
#' \item{\code{Mai}}{Número decimal que indica as importações do mês de Maio.}
#' 
#' \item{\code{Jun}}{Número decimal que indica as importações do mês de Junho.}
#' 
#' \item{\code{Jul}}{Número decimal que indica as importações do mês de Julho.}
#' 
#' \item{\code{Ago}}{Número decimal que indica as importações do mês de Agosto.}
#' 
#' \item{\code{Set}}{Número decimal que indica as importações do mês de Setembro.}
#' 
#' \item{\code{Out}}{Número decimal que indica as importações do mês de Outubro.}
#' 
#' \item{\code{Nov}}{Número decimal que indica as importações do mês de Novembro.}
#' 
#' \item{\code{Dez}}{Número decimal que indica as importações do mês de Dezembro.}
#'      
#' }
#' @keywords TS temporais
#' @source Morettin, P. A., Toloi, C. M. C. (2006). Análise de Séries
#'     Temporais (2nd ed.). São Paulo, SP: Editora Egard Blucher. (Tabela 3.12
#'     pág. 78)
#' @examples
#'
#' data(MorettinTb3.12)
#' 
#' library(lattice)
#' str(MorettinTb3.12)
#' 
#' fivenum(MorettinTb3.12)
#' xyplot(MorettinTb3.12, type = c("l", "g"), 
#'        layout = c(2, 6), xlab = "Meses", ylab = "Valores", 
#'        main = "Importações feitas pelo Brasil", strip = strip.custom(bg = "white"), 
#'        lwd = 2, col = c("red", "violetred", "blue", "yellow", "palegreen2", 
#'                         "orange"), 
#'        scales = list(y = list(rot = 0)))
NULL