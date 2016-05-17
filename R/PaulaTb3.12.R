#' @name PaulaTb3.12
#' @title Ocorrência de vaso-constrição
#' @description Dados de um experimento desenvolvido para 
#'    avaliar a influência da quantidade de ar inspirado na ocorrência
#'    de vaso-constrição na pele dos dedos da mão.  A resposta é a ocorrência
#'    (1) ou ausência (0) de compressão de vasos e as covariáveis são o 
#'    logaritmo do volume e o logaritmo da razão de ar inspirado. 
#'    
#' @format Um \code{data.frame} com 39 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{vol}{Logaritmo do volume de ar inspirado.}
#'     
#' \item{razao}{Logaritmo da razão de ar inspirado.}
#'
#' \item{resp}{Ocorrência ou não de compressão de vaso (ocorrência = 1
#'    e ausência = 0).}
#'     
#' }
#' @keywords GLM binarios
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Tb 3.12 pág. 227)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaTb3.12)
#'
#' str(PaulaTb3.12)
#' 
#' bwplot(vol ~ resp,  data = PaulaTb3.12, 
#'        type=c("p","a"),
#'        xlab="Ausência e Ocorrência", ylab="Volume de ar inspirado", 
#'        main="Ocorrência de vaso-constrição")
#' 
#' bwplot(razao ~ resp,  data = PaulaTb3.12, 
#'        type=c("p","a"),
#'        xlab=" Ausência e Ocorrência", ylab="Razão de ar inspirado", 
#'      main="Ocorrência de vaso-constrição")
NULL