#' @name PaulaEg3.6.9c
#' @title Preferência de consumidores
#' @description Dados sobre a preferência de consumidores americanos com
#'    relação a automóveis. Uma amostra aleatóriade 263 consumidores foi 
#'    considerada. As seguintes variáveis foram observadas para cada 
#'    comprador: preferência do tipo de automóvel (1 = americano, 
#'    0 = japonês), idade (em anos), sexo (0 =  masculino; 1 = feminino)
#'     e estado civil (0 = casado, 1 = solteiro). 
#' @format Um \code{data.frame} com 263 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{pref}{Preferência do comprador por um tipo de automóvel.}
#'     
#' \item{idade}{Idade do comprador (em anos).}
#'
#' \item{sexo}{Sexo do comprador.}
#'
#' \item{est}{Estado civil do comprador.}
#'
#' }
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.9c pág. 231)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.9c)
#'
#' xyplot(idade ~ sexo | pref,  data = PaulaEg3.6.9c, 
#'        type=c("p","a"),
#'        xlab="Sexo do Comprador", ylab="Idade do Comprador", 
#'        main="Preferência de Compra")
#' 
#' xyplot(idade ~ est | pref,  data = PaulaEg3.6.9c, 
#'        type=c("p","a"),
#'        xlab="Estado Civil do Comprador", ylab="Idade do Comprador", 
#'        main="Preferência de Compra")
NULL