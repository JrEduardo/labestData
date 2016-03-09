#' @name ZimmermannTab12.13
#' @title Dados da proporção de insetos infectados
#' @description Dados do ensaio 1 de um experimento em DBC que estudou a 
#'              patogenicidade de fungos as percevejo do grão de 
#'              arroz. A testemunha sem infecção (1) era o tratamento
#'              comum entre os dois experimentos. Os dados se referem 
#'              à proporção de percevejos infectados e transformados
#'              por arcoseno da raiz quadrada da proporção. 
#' @format Um \code{data.frame} com 35 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais. Tratamento aplicado em arroz.}
#'
#' \item{bloco}{Número inteiro que identifica o bloco da observação.}
#'
#' \item{prod}{Proporção de insetos infectados.}
#'
#' }
#' @keywords DBC insetos percevejos arroz 
#' @source  Zimmermann, F.J.(2004), Estatística aplicada à pesquisa 
#'          agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa 
#'          Arroz e Feijão. (pg 255)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTab12.13)
#' 
#' xyplot(prod ~ trat , groups = bloco, data = ZimmermannTab12.13, 
#'        type=c("p","a"),
#'        xlab = "Tratamentos",
#'        ylab = "Proporção de insetos infectados")
#' 
#' aggregate(prod ~ trat, data = ZimmermannTab12.13, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL