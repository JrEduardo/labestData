#' @name PaulaEx3.7.7a
#' @title Influ\enc{ê}{e}ncia de Extrato Vegetal e Qu\enc{í}{i}mico
#' @description Experimento de dose-resposta conduzido para avaliar a 
#'     influência dos extratos vegetais "aquoso frio de folhas", "aquoso
#'     frio de frutos" e de um extrato químico, respectivamente, na morte 
#'     de um determinado tipo de caramujo. 
#'      
#' @format Um \code{data.frame} com 7 observações e 3 variáveis.
#' \describe{
#' 
#' \item{\code{dose}}{Dose.}
#' 
#' \item{\code{cexp}}{Caramujos expostos.}
#' 
#' \item{\code{cmort}}{Caramujos mortos.}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Ex 3.7.7a, pág. 269)
#'
#' @examples
#'
#' data(PaulaEx3.7.7a)
#' 
#' str(PaulaEx3.7.7a)
#' 
#' library(lattice)
#' 
#' xyplot(PaulaEx3.7.7a$cmort/PaulaEx3.7.7a$cexp ~ dose,
#' data = PaulaEx3.7.7a,
#' xlab = "Dose",
#' type = c("o"),
#' ylab = "Proporção de mortos",
#' auto.key = list(space="top", columns=2, 
#'                 title="Caramujos", cex.title=1,
#'                 lines=TRUE, points=FALSE))
#'
NULL
