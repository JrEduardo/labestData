#' @name ManlyTb9.7
#' @title Espécies de plantas em lotes
#'
#' @description Estudo de 25 espécies de plantas em 17 lotes de um prado
#' de pastagem na Reserva Natural em Steneryd na Suécia. Cada valor na 
#' tabela é a soma dos valores cobertos em um intervalo de 0 a 5 por 
#' nove quadrantes de amostra, de modo que um valor 45 corresponde à 
#' completa cobertura pela espécie. 
#'
#' @format Um \code{data.frame} com 25 espécie de plantas com 18 
#' variáveis
#' 
#' \describe{
#'
#' \item{\code{esp}}{Identifica a espécie}
#' 
#' \item{\code{l1}}{Quantidade de abundância da espécie no lote 1.}
#' 
#' \item{\code{l2}}{Quantidade de abundância da espécie no lote 2.}
#' 
#' \item{\code{l3}}{Quantidade de abundância da espécie no lote 3.}
#' 
#' \item{\code{l4}}{Quantidade de abundância da espécie no lote 4.}
#' 
#' \item{\code{l5}}{Quantidade de abundância da espécie no lote 5.}
#' 
#' \item{\code{l6}}{Quantidade de abundância da espécie no lote 6.}
#' 
#' \item{\code{l7}}{Quantidade de abundância da espécie no lote 7.}
#' 
#' \item{\code{l8}}{Quantidade de abundância da espécie no lote 8.}
#' 
#' \item{\code{l9}}{Quantidade de abundância da espécie no lote 9.}
#' 
#' \item{\code{l10}}{Quantidade de abundância da espécie no lote 10.}
#' 
#' \item{\code{l11}}{Quantidade de abundância da espécie no lote 11.}
#' 
#' \item{\code{l12}}{Quantidade de abundância da espécie no lote 12.}
#' 
#' \item{\code{l13}}{Quantidade de abundância da espécie no lote 13.}
#' 
#' \item{\code{l14}}{Quantidade de abundância da espécie no lote 14.}
#' 
#' \item{\code{l15}}{Quantidade de abundância da espécie no lote 15.}
#' 
#' \item{\code{l16}}{Quantidade de abundância da espécie no lote 16.}
#' 
#' \item{\code{l17}}{Quantidade de abundância da espécie no lote 17.}
#' }
#'
#' @keywords AnaClust
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados- 
#' uma introdução. Porto Alegre, RS: Bookman (pg 152)
#' @examples
#'
#' data(ManlyTb9.7)
#' 
#' euclid <- as.matrix(dist(ManlyTb9.7[,-1]))
#' 
#' heatmap(euclid, 
#'        margins= c(6,6), 
#'        labRow = ManlyTb9.7$esp, 
#'        labCol = ManlyTb9.7$esp)
NULL