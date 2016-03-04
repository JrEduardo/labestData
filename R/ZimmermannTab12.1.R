#' @name ZimmermannTab12.1
#' @title Estudo sobre produtividade de grãos de arroz irrigado 
#' @description Dados do Ensaio 2 de um experimento em DIC, que estudou a 
#'              produtividade de grãos de arroz em lavoura conduzida com 
#'              inundação contínua durante todo o ciclo. O experimento teve
#'              seis repetições e sete tratamentos.
#' @format Um \code{data.frame} com 42 observações e r variáveis
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais. Tratamento aplicado em arroz
#'      irrigado.}
#'
#' \item{rep}{Número inteiro que identifica as repetições de cada
#'     tratamento.}
#'
#' \item{prod}{Produção de grãos de arroz irrigado}
#'
#' }
#' @keywords DIC arroz 
#' @source  Zimmermann, F.J.(2004), Estatística aplicada à pesquisa 
#'          agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa 
#'          Arroz e Feijão. (pg 249)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTab12.1)
#' 
#' xyplot(prod ~ trat | rep, data = ZimmermannTab12.1, type=c("p","a"),
#'           xlab = "Tratamentos",
#'           ylab = "Produção de grãos de arroz irrigado")
#'
#' aggregate(prod ~ trat, data = ZimmermannTab12.1, 
#'          FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL