#' @name ZimmermannTb11.13
#' @title Experimento fatorial com arroz
#' @description Dados de um experimento fatorial \eqn{3^3}, com
#'     confundimento parcial de 2 graus de liberdade da interação dupla. 
#'     O estudo é sobre a absorção e translocação de zinco em arroz de terras
#'     altas sob a influência de fósforo e calcário, num delineamento de blocos
#'     ao acaso com três repetições. Os níveis dos fatores eram de 0,5 e 10 
#'     kg/ha para o zinco (A), 0, 50 e 100 kg/ha para o fósforo e 0, 1.5 e 3
#'     ton/ha para o calcário. Utilizou-se o grupo Z de Yates. Os dados são de
#'     produção de grãos, em kg ha\eqn{^{-1}}.  
#' @format Um \code{data.frame} com 81 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}{Fator de níveis numéricos. Identifica a repetição
#'    da observação.}
#'    
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da 
#'     repetição.}
#'
#' \item{\code{iden}}{Fator de níveis numéricos. É a identificação que 
#'     representa o tratamento.}
#'     
#' \item{\code{prod}}{Produtividade de graos, em kg ha\eqn{^{-1}}.}
#'
#' @keywords DBC confundimento FAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 234)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.13)
#'
#' aggregate(prod ~ bloco, data = ZimmermannTb11.13, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(prod ~ iden, data = ZimmermannTb11.13, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(prod ~ iden + rept, groups = bloco, data = ZimmermannTb11.13, 
#'        type=c("p","a"),
#'        xlab="Fatores", ylab="Produção", 
#'        main="Análise de um fatorial com confundimento")
#'        
#' with(ZimmermannTb11.13, interaction.plot(bloco, rept, prod, lty = c(2,3), 
#'                                          col = 4:7, 
#'                                          ylab = "Produção de Arroz",
#'                                          xlab = "Bloco"))
NULL