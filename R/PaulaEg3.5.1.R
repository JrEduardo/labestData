#' @name PaulaEg3.5.1
#' @title Associação entre fungicida e desenvolvimento de tumor
#' @description Dados de um experimento referente a um estudo para avaliar
#'     o possível efeito cancerígeno do fungicida Avadex. No estudo, 403 camundongos são observados. Desses,
#'    65 receberam o fungicida e foram acompanhados durante 85 semanas, veri-
#'    ficando o desenvolvimento ou não de tumor cancerígeno. Os demais animais
#'    não receberam o fungicida (grupo controle) e também foram acompanhados
#'    pelo mesmo período, verificando a ocorrência ou não de tumor
#' @format Um \code{data.frame} com 4 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{sexo}{Fator de níveis numéricos. Identifica o sexo do 
#'    camundongo.}
#'     
#' \item{trat}{Fator de níveis numéricos. identifica a presença ou não
#'    do tratamento.}
#'
#' \item{casos}{Número inteiro que identifica a quantidade de casos
#'     ocorridos.}
#'
#' \item{exp}{Número inteiro que identifica a quantidade de expostos.}
#'
#' }
#' @keywords GLM
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio computacional. 
#'    São Paulo, SP: IME-USP. (Eg 3.5.1 pág. 201)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEg3.5.1)
#'
#' xyplot(casos ~ trat,  data = PaulaEg3.5.1, 
#'        type=c("p","a"),
#'        xlab="Tratamento", ylab="Casos", 
#'        main="Associação entre fungicida e desenvolvimento de tumor")
NULL