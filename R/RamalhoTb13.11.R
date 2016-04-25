#' @name RamalhoTb13.11
#' @title Produção de Raízes de Mandioca
#' @description Experimento envolvendo a produção de raízes de 20
#'     genótipos parentais (clones) de mandioca e de suas respectivas
#'     filhas.
#' @format Um \code{data.frame} com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{clone}}{Fator de 20 níveis que indica o clone de 
#'     mandioca.}
#'
#' \item{\code{mae}}{Produção de raízes da mãe.}
#'
#' \item{\code{filha}}{Produção de raízes da filha.}
#'
#' }
#' @keywords COV RS
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.11, pág. 248)
#'
#' @examples
#'
#' data(RamalhoTb13.11)
#' 
#' library(lattice)
#' 
#' xyplot(mae ~ filha, data = RamalhoTb13.11,
#'        type = c("p", "smooth"))
#'
NULL