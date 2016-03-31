#' @name ZimmermannTb14.3
#' @title Produtividade e estande de plantas de arroz
#' @description Dados de um ensaio de competição de cultivares de arroz. Na
#'     tabela são apresentados dados tanto de produtivididade como os de 
#'     estande, por área útil, para sete cultivares de arroz. O experimento 
#'     foi feito em delineamento de blocos completos ao acaso. 
#' @format Um \code{data.frame} com 28 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Indica a cultivar da planta.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da observação.}
#'
#' \item{\code{prod}}{Produtividade da planta, em kg ha\eqn{^{-1}}}
#' 
#' \item{\code{ST}}{Estande, por área útil, da planta.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 293)
#' @examples
#'
#' library(lattice)
#' library(latticeExtra)
#' 
#' data(ZimmermannTb14.3)
#'
#' xyplot(prod ~ cult, groups = bloco, data = ZimmermannTb14.3, 
#'        type=c("p","a"),
#'        xlab="Cultivares", ylab="Produção", 
#'        main="Competição de Cultivares")
#'  
#'  xyplot(ST ~ cult, groups = bloco, data = ZimmermannTb14.3, 
#'         type=c("p","a"),
#'         xlab="Cultivares", ylab="Estande", 
#'         main="Competição de Cultivares")
#' 
#' aggregate(prod ~ bloco, data = ZimmermannTb14.3, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' aggregate(prod ~ cult, data = ZimmermannTb14.3, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' levelplot(prod~cult+bloco, data=ZimmermannTb14.3,
#'           xlab="Cultivares", ylab="Produção", 
#'           main="Competição de Cultivares")
#' 
#' with(ZimmermannTb14.3, interaction.plot(bloco, cult, prod, lty = c(1:5), 
#'                                         col = 2:9, ylab = "Produção",
#'                                         xlab = "Bloco"))
NULL