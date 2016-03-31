#' @name ZimmermannTb15.4
#' @title Produção de grãos de arroz
#' @description Dados de um ensaio com 1/3 de um fatorial \eqn{3^3}, em blocos 
#'    ao acaso.  O estudo é sobre a absorção e translocação de zinco em arroz 
#'    de terras altas sob a influência de fósforo e calcário. Os níveis dos 
#'    fatores eram de 0,5 e 10 kg/ha para o zinco (A), 0, 50 e 100 kg/ha para o
#'    fósforo e 0, 1.5 e 3 ton/ha para o calcário. Os dados são de produção 
#'    de grãos, em kg ha\eqn{^{-1}}.  
#' @format Um \code{data.frame} com 27 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Indica o bloco da observação.}
#'
#' \item{\code{prod}}{Indica a produçao de arroz, kg ha\eqn{^{-1}}.}
#' 
#' \item{\code{iden}}{Identificação do tratamento utilizado.}
#' }
#' @keywords DBC FAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 309)
#' @examples
#'
#' library(lattice)
#'   
#' data(ZimmermannTb15.4)
#'
#' with(ZimmermannTb15.4, interaction.plot(bloco, iden, prod, lty = c(1:5), 
#'                                         col = 2:9, ylab = "Produção",
#'                                         xlab = "Bloco"))
#' 
#' xyplot(prod ~ iden, groups = bloco, data = ZimmermannTb15.4, 
#'        type=c("p","a"),
#'        xlab="Identificações", ylab="Produção", 
#'        main="1/3 de um fatorial  3^3")
#' 
#' aggregate(prod ~ bloco, data = ZimmermannTb15.4, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(prod ~ iden, data = ZimmermannTb15.4, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL