#' @name PaulaEx3.7.14
#' @title Confiabilidade de equipamentos
#'
#' @description Dados referentes aos tempos de falhas de equipamentos.
#' 
#' @format Um \code{data.frame} com 4 variáveis.
#' 
#' \describe{
#'
#' \item{\code{temp}}{Tempo de operação (1 a 5).}
#' 
#' \item{\code{equip}}{Tipo de equipamento (A, B ou C).}
#' 
#' \item{\code{nit}}{Número de equipamentos que não falharam até o tempo t,
#' t = 1,2,3,4,5.}
#'
#' \item{\code{yit}}{Número de falhas no intervalo entre os tempos t-1 e t.}
#'
#' }
#' @keywords RLAS
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. 
#'     (Exercício 3.7.14, página 272)
#'     
#' @references Lawless, J. F. (1982). Statistical Models and Methods for 
#'     Lifetime Data. John Wiley & Sons, New York. (Página 389)
#' 
#' @references Efron, B. (1988). Logistic regression, survival analysis, 
#'     and the Kaplan-Meier curve. J. Amer. Stat. Assoc., 83.
#'     (Páginas 414-425)
#' 
#' @examples
#' 
#' require(lattice)
#' 
#' data(PaulaEx3.7.14)
#' 
#' PaulaEx3.7.14$temp <- as.factor(PaulaEx3.7.14$temp)
#' 
#' xyplot(nit~temp, groups = equip, data = PaulaEx3.7.14, type = "o", 
#'        auto.key = TRUE, xlab = "Tempos", 
#'        ylab = "N° de equipamentos operantes",
#'        main = "Confiabilidade dos equipamentos")
NULL
