#' @name ZimmermannTb16.8
#' @title Dias para floração de plantas de arroz em um reticulado quadrado
#' @description Experimento realizado em delineamento reticulado quadrado 5x5,
#'     com tres repetições.  Os dados são referentes ao número de dias até a 
#'     floração de plantas de arroz. São apresentados na tabela também os 
#'     respectivos postos de cada dado, segundo a metodologia definida no teste
#'     de Durbin. Não se sabe à que fazem referências os tratamentos. 
#' @format Um \code{data.frame} com 75 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{bloco}{Fator de níveis numéricos. Indica o bloco ao qual a observação
#'     pertence.}
#'
#' \item{rept}{Fator de níveis numéricos. Indica a repetição à qual a
#'     observação pertence. }
#'     
#' \item{trat}{Fator de níveis numéricos. Indica o tratamento aplicado. }
#'
#' \item{posto}{Fator de níveis numéricos. Indica o posto da observação.}
#'
#' \item{dias}{Número total de dias até a floração da planta.}
#'
#' }
#' @keywords reticulado 
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.1, pág 353)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb16.8)
#'
#' str(ZimmermannTb16.8)
#' 
#' aggregate(dias ~ trat,  data = ZimmermannTb16.8, 
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#' 
#' xyplot(posto ~ trat | rept, groups = bloco, data = ZimmermannTb16.8, 
#'        type=c("p","a"),
#'        xlab="Tratamento", ylab="Postos por Tratamento")
#' 
#' xyplot(dias ~ trat | rept, groups = bloco, data = ZimmermannTb16.8, 
#'        type=c("p","a"),
#'        xlab="Tratamento", ylab="Dias para Floração")
NULL