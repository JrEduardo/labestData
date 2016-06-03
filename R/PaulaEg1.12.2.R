#' @name PaulaEg1.12.2
#' @title Pacientes com Processo Infeccioso Pulmonar
#' @description Dados referentes a 175 pacientes com processo infeccioso 
#'     pulmonar atendidos no Hospital Heliópolis, em São Paulo, no período 
#'     de 1970 a 1986. 
#'      
#' @format Um \code{data.frame} com 175 observações e 5 variáveis.
#' \describe{
#' 
#' \item{\code{tipo}}{Tipo de tumor (maligno ou benigno).}
#' 
#' \item{\code{idade}}{Idade do paciente (em anos).}
#' 
#' \item{\code{sexo}}{Sexo do paciente (masculino ou feminino).}
#' 
#' \item{\code{hl}}{Intensidade da célula histiócitos-linfócitos (ausente, 
#'     discreta, moderada ou intensa).}
#' 
#' \item{\code{ff}}{Intensidade da célula fibrose-frouxa (ausente, 
#'     discreta, moderada ou intensa).}
#' 
#' }
#' @keywords aplicações
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.2, pág. 85)
#'
#' @examples
#'
#' data(PaulaEg1.12.2)
#' 
#' str(PaulaEg1.12.2)
#' 
#' library(lattice)
#' 
#' bwplot(idade ~ hl | tipo, 
#'        data = PaulaEg1.12.2,
#'        ylab = "Idade",
#'        xlab = "Intensidade da célula histiócitos-linfócitos")
#' 
#' bwplot(idade ~ ff | tipo, 
#'        data = PaulaEg1.12.2,
#'        ylab = "Idade",
#'        xlab = "Intensidade da célula fibrose-frouxa")
#'
NULL