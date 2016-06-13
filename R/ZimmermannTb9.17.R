#' @name ZimmermannTb9.17
#' @title Produção de Grãos de Arroz em Fatorial 3x3
#' @description Dados de um estudo em ensaio fatorial 3x3, referentes à 
#'     produção de grãos de arroz, em kg/ha. O delineamento é o de blocos 
#'     completos ao acaso, com três repetições. Foram testados os efeitos 
#'     do nitrogênio, potássio e épocas de aplicação destes elementos na 
#'     produtividade da soca do arroz irrigado. 
#'     
#' @format Um \code{data.frame} com 81 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{epoca}}{Fator de níveis numéricos. Identifica a época da 
#'     observação.}
#'     
#' \item{\code{pota}}{Fator de níveis numericos. Identifica o nível de 
#'     potássio.}
#'    
#' \item{\code{nitr}}{Fator de níveis numericos. Identifica o nível de 
#'     nitrogênio.}
#'      
#' \item{\code{rept}}{Fator de níveis numericos. Identifica a repetição da
#'     observação.}
#'
#' \item{\code{prod}}{Produção de grão de arroz em (ka ha\eqn{^{-1}}).}
#'
#' }
#' @keywords FAT fatorial
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 9.17, pág 182)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb9.17)
#'
#' str(ZimmermannTb9.17)
#'
#' xyplot(prod ~ rept, data = ZimmermannTb9.17,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Repetições",
#'        ylab = expression("Grãos de Arroz"~(kg~ha^{-1})),
#'        main = "Produção de Grãos de Arroz",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(prod ~ rept, data = ZimmermannTb9.17,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
