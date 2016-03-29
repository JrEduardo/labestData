#' @name ZimmermannTb11.10
#' @title Experimento fatorial com feijão
#' @description Dados de um experimento fatorial \eqn{3^2}, com a cultura do 
#'     feijoeiro testando espaçamento entre linhas de plantio (0.45m, 0.6m e
#'     0.75m) e densidade de plantio (7, 10 e 13 sementes por metro). Os dados
#'     se referem à cultivar Jalo Precoce. Adotou-se o delineamento 
#'     completamente ao acaso, mas aqui consideramos o de blocos ao acaso com
#'     confundimento parcial de 2 graus de liberdade da interação densidade (A)
#'     com espaçamento (B). Os resultados são de altura de plantas, em 
#'     centímetros. 
#' @format Um \code{data.frame} com 36 observações e 4 variáveis
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
#' \item{\code{altura}}{Altura de plantas, em cm.}
#'
#' @keywords DBC confundimento FAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 231)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.10)
#'
#' aggregate(altura ~ bloco, data = ZimmermannTb11.10, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(altura ~ iden, data = ZimmermannTb11.10, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(altura ~ iden + rept, groups = bloco, data = ZimmermannTb11.10, 
#'        type=c("p","a"),
#'        xlab="Fatores", ylab="Produção", 
#'        main="Análise de um fatorial com confundimento")
#'        
#' with(ZimmermannTb11.10, interaction.plot(bloco, rept, altura, lty = c(2,3), 
#'                                          col = 4:7, 
#'                                          ylab = "Altura de Plantas",
#'                                          xlab = "Bloco"))
NULL