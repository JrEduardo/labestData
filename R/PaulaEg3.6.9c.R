#' @name PaulaEg3.6.9c
#' @title Prefer\enc{ê}{e}ncia de consumidores
#' @description Dados sobre a preferência de consumidores americanos com
#'    relação a automóveis. Uma amostra aleatória de 263 consumidores foi 
#'    considerada. As seguintes variáveis foram observadas para cada 
#'    comprador: preferência quanto ao tipo de automóvel, idade, sexo e 
#'    estado civil. 
#'     
#' @format Um \code{data.frame} com 263 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{pref}{Preferência do comprador por um tipo de automóvel (1 = americano, 
#'    0 = japonês).}
#'     
#' \item{idade}{Idade do comprador (em anos).}
#'
#' \item{sexo}{Sexo do comprador (0 =  masculino; 1 = feminino).}
#'
#' \item{est}{Estado civil do comprador (0 = casado, 1 = solteiro).}
#'
#' }
#' @keywords GLM binarios 
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.6.9c pág. 231)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.6.9c)
#'
#' str(PaulaEg3.6.9c)
#' 
#' bwplot(idade ~ pref,  data = PaulaEg3.6.9c, 
#'        type="p",
#'        xlab="Preferência - Japonês e Americano", 
#'        ylab="Idade do Comprador", 
#'        main="Preferência")
#' 
NULL
