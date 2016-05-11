#' @name PaulaEx3.7.14
#' @title Sobrevivência de equipamentos
#'
#' @description Um estudo de regressão logística em análise de
#' sobrevivência. Medições em tempos para três tipos de equipamentos 
#' diferentes.
#' 
#' @format Um \code{data.frame} com 5 tempos em 3 tipos de equipamentos.
#' 
#' \describe{
#'
#' \item{\code{temp}}{Identificação do tempo (factor).}
#' 
#' \item{\code{equip}}{Identificação do equipamento (factor).}
#' 
#' \item{\code{nit}}{Número de equipamentos exposto no tempo t.}
#'
#' \item{\code{yit}}{Número de equipamentos que falharam.}
#'
#' }
#' @keywords RLAS
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.14, página 272)
#'     
#' @references Lawless, J. F. (1982). Statistical Models and Methods for 
#' Lifetime Data. John Wiley & Sons, New York. (Página 389)
#' 
#' @references Efron, B. (1988). Logistic regression, survival analysis, 
#' and the Kaplan-Meier curve. J. Amer. Stat. Assoc., 83.
#' (Páginas 414-425)
#' 
#' @examples
#' 
#' require(lattice)
#' 
#' data(PaulaEx3.7.14)
#' 
#' PaulaEx3.7.14$temp <- as.factor(PaulaEx3.7.14$temp)
#' 
#' xyplot(nit~temp, groups = equip, data = PaulaEx3.7.14, type = "l", 
#' auto.key = TRUE, xlab = "Tempos", ylab = "N° de equipamentos",
#' main = "Sobrevivência dos equipamentos")
NULL