#' @name ZimmermannTb7.4
#' @title Produção de Grãos de Arroz em Ensaio Reticulado Retangular 
#' @description Dados de um estudo sobre competição de cultivares de arroz 
#'     irrigado. O experimento foi conduzido em ensaio em reticulado retangular
#'     5x6, com três repetições e três blocos (X, Y e Z). A unidade de 
#'     medida é kg/ha. 
#' @format Um \code{data.frame} com 32 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator de níveis numericos. Identifica a repetição da
#'    observação.}
#'
#' \item{\code{bloco}}{Fator de níveis nominais. Identifica o bloco da 
#'     repetição}
#'
#' \item{\code{prod}}{Produção de grãos de arroz irrigado (ka ha\eqn{^{-1}}).}
#'
#' }
#' @keywords reticulado
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 7.4, pág 140)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb7.4)
#'
#' str(ZimmermannTb7.4)
#'
#' xyplot(prod ~ rept, groups = bloco, data = ZimmermannTb7.4,
#'        type = "o", jitter.x = TRUE,
#'        xlab = "Repetições",
#'        ylab = expression("Grãos de Arroz"~(kg~ha^{-1})),
#'        main = "Reticulado Retangular 5x6",
#'        scales = list(x = list(rot = 90)))
#' 
#' aggregate(prod ~ bloco, data = ZimmermannTb7.4,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
