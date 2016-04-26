#' @name ZimmermannTb16.5
#' @title Número de dias para floração de plantas de arroz
#' @description Experimento realizado em delineamento em blocos completos ao 
#'     acaso, utilizando oito cultivares de arroz irrigado. os dados são 
#'     referentes ao número de dias até a floração de plantas de arroz. 
#'     São apresentados na tabela também os respectivos postos de cada dado, 
#'     a fim de facilitar a aplicação do teste de Friedman (teste não
#'     paramétrico).     
#' @format Um \code{data.frame} com 24 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{bloco}{Fator de níveis numéricos. Indica o bloco ao qual a observação
#'     pertence.}
#'
#' \item{cultivar}{Fator de níveis nominais. Indica a cultivar do arroz. }
#'
#' \item{postos}{Fator de níveis numéricos. Indica o número de postos da 
#'     observação.}
#'
#' \item{dias}{Número total de dias até a floração da planta.}
#'
#' }
#' @keywords DIC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.1, pág 347)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.5)
#'
#' str(ZimmermannTb16.5)
#' 
#' aggregate(dias ~ cultivar, data = ZimmermannTb16.5, 
#'     FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(postos ~ cultivar, groups = bloco, data = ZimmermannTb16.5, 
#'        type=c("p","a"),
#'        xlab="Cultivar", ylab="Postos por Bloco")
#' 
#' xyplot(dias ~ cultivar, groups = bloco, data = ZimmermannTb16.5, 
#'        type=c("p","a"),
#'        xlab="Cultivar", ylab="Dias para Floração")
#'
NULL