#' @name MingotiAnA1
#' @title Aceitação de um novo produto comestível
#' @description Pesquisa de mercado feita para avaliar a aceitação do
#'     consumidor para um novo produto comestível. Cada consumidor foi
#'     convidado a dar uma nota de 1 a 5 para sete atributos do produto.
#' @format Um \code{data.frame} com 200 observações e 9 variáveis, 
#'      em que
#'
#' \describe{
#'
#' \item{\code{id}}{Número de identificação do indivíduo.}
#' 
#' \item{\code{sexo}}{Sexo do indivíduo 
#'     (onde 0 para mulheres e 1 para homens).}
#' 
#' \item{\code{sabor}}{Nota atribuída ao sabor do produto.} 
#'    
#' \item{\code{aroma}}{Nota  atribuída ao aroma do produto.} 
#'    
#' \item{\code{cor}}{Nota atribuída à cor do produto.} 
#' 
#' \item{\code{textu}}{Nota atribuída à textura do produto.} 
#' 
#' \item{\code{utili}}{Nota atribuída à utilidade do 
#'    produto.}
#'     
#' \item{\code{local}}{Nota atribuída à facilidade de 
#'    encontrar o produto.}
#'     
#' \item{\code{embal}}{Nota atribuída à embalagem do 
#'    produto.}
#'
#' }
#' @keywords TODO
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
#'               
#' boxplot(notas ~ atributo, data = da, 
#'         xlab = "Atributos", ylab= "Notas")
#'
NULL