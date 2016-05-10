#' @name PaulaEg3.6.11b
#' @title Idade do início da menstruação em garotas de Varsóvia
#' @description Dados de  um estudo que investigou a idade do início 
#'     da menstruação em 3918 garotas de Varsóvia. Para 25 médias de 
#'     idade foram observadas a ocorrência  ou não  do início de períodos
#'     de menstruação nas adolescentes. Os dados desse estudo são apresentados
#'     na tabela. 
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{menst}{Quantidade de meninas menstruando.}
#'     
#' \item{entre}{Quantidade de meninas entrevistadas.}
#'
#' \item{idade}{Idade media das das meninas.}
#'     
#' }
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.11b pág. 241)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.11b)
#'
#' xyplot(menst ~ idade,  data = PaulaEg3.6.11b, 
#'        type = c("p","a"),
#'        xlab = "Idade média", 
#'        ylab = "Quantidade de meninas menstruando", 
#'        main = "Idade do início da menstruação em garotas de Varsóvia.")
#'        
#' xyplot((menst/entre) ~ idade,  data = PaulaEg3.6.11b, 
#'        type = c("p","a"),
#'        xlab = "Idade média", 
#'        ylab = "Meninas menstruando/Entrevistadas", 
#'        main = "Idade do início da menstruação em garotas de Varsóvia.")
NULL