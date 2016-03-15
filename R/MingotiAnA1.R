#' @name MingotiAnA1
#' @title Aceitação de um novo produto comestível
#' @description Pesquisa de mercado feita para avaliar a aceitação do
#'     consumidor por um novo produto comestível. Cada consumidor foi
#'     convidado a dar uma nota de 1 a 5 para sete atributos do produto.
#' @format Um \code{data.frame} com 200 observações e 9 variáveis, 
#'      em que
#'
#' \describe{
#'
#' \item{\code{id}}{Número de identificação do indivíduo.}
#' 
#' \item{\code{sexo}}{Variável dicotômica para o sexo do indivíduo, 
#'     onde 0 para mulheres e 1 para homens.}
#' 
#' \item{\code{sabor}}{Nota dada pelo indivíduo para o sabor do produto, 
#'    variando de 1 a 5.}
#'
#' \item{\code{aroma}}{Nota dada pelo indivíduo para o aroma do produto, 
#'    variando de 1 a 5.}
#'     
#' \item{\code{cor}}{Nota dada pelo indivíduo para a cor do produto, 
#'    variando de 1 a 5.}
#' 
#' \item{\code{textu}}{Nota dada pelo indivíduo para a textura do 
#'    produto, variando de 1 a 5.}
#'
#' \item{\code{utili}}{Nota dada pelo indivíduo para a utilidade do 
#'    produto, variando de 1 a 5.}
#'     
#' \item{\code{local}}{Nota dada pelo indivíduo para a facilidade de 
#'    encontrar o produto para compra, variando de 1 a 5.}
#'     
#' \item{\code{embal}}{Nota dada pelo indivíduo para a embalagem do 
#'    produto, variando de 1 a 5.}
#'
#' }
#' @keywords Análise fatorial
#' @source Mingoti, S.A. (2005). Análise de dados através de métodos de 
#'     estatística multivariada - uma abordagem aplicada. 
#'     Belo Horizonte, MG: Editora UFMG. (pg 108).
#'      
#' @examples
#'
#' data(MingotiAnA1)
#'
#' da <- reshape(MingotiAnA1, direction = "long", varying = list(3:9),
#'               v.names = "notas", timevar = "atributo")
#' library(lattice)
#'
#' xyplot(notas ~ atributo, groups = sexo, data = da,
#'       jitter.y = TRUE, type = c("p", "a"), auto.key = TRUE)
#'
NULL