#' @name RamalhoTb3.4
#' @title Médias de incidênica de Colletotrichum no feijoeiro.
#' @description Neste experimento foram avaliados 16 tratamentos com 3 
#'     observações em blocos casualizados referentes a incidência de 
#'     Colletotrichum no feijoeiro, as notas foram dadas por 3 
#'     avaliadores.
#' @format data.frame com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{trat}{Tratamento.}
#' 
#' \item{blocos}{Blocos onde são aplicados os tratamentos.}
#'
#' \item{cult}{Cultivar de feijão.}
#' 
#' \item{nota}{Média dos avaliadores.}
#'
#' }
#' @keywords média fejoeiro
#' @source Ramalho, M. A. P., Ferreira, D. F. & Oliveira, A. C. (2005). 
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.). 
#'     Lavras: UFLA. (pg 45)
#'
#' @examples
#'
#' library(lattice)
#' 
#' data(RamalhoTb3.1)
#' 
#' xyplot(nota ~ jitter(cult), groups = bloco, data = RamalhoTb3.4, 
#'        auto.key = TRUE, 
#'        xlab = "Cultivares",
#'        ylab = "Notas")
#' 
NULL
