#' @name PaulaEg1.12.4
#' @title Desenvolvimento de Massa Tumoral em Ratos
#' @description Estudo realizado para avaliar a influência da série 
#'     (passagem do tumor) na morte (caquexia) de um certo tipo de rato.
#'     Um total de 204 animais teve tumor inoculado num determinado
#'     momento da série. Para cada animal, além do grupo de passagem, 
#'     foram observadas as variáveis presença de massa tumoral, caquexia
#'     e o tempo de observação. 
#'      
#' @format Um \code{data.frame} com 204 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{grupo}}{Grupo de passagem (0 a 28).}
#' 
#' \item{\code{massat}}{Presença de massa tumoral (sim ou não).}
#' 
#' \item{\code{caq}}{Caquexia (sim ou não).}
#' 
#' \item{\code{tempo}}{Tempo de sobrevivência (em dias).}
#' 
#' }
#' @keywords MLG
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Eg 1.12.4, pág. 90)
#'
#' @examples
#'
#' data(PaulaEg1.12.4)
#' 
#' str(PaulaEg1.12.4)
#' 
#' library(lattice)
#' 
#' xyplot(grupo ~ tempo | massat,
#'        groups = caq,
#'        data = PaulaEg1.12.4,
#'        type = c("p", "smooth"),
#'        xlab = "Tempo",
#'        ylab = "Grupo",
#'        main = "Dispersão para Massa Tumoral não Presente (à esquerda) ou Presente (à direita)", 
#'        auto.key = list(space="top", columns=2, 
#'                        title="Presença de caquexia", cex.title=1,
#'                        lines=TRUE, points=FALSE))
#' 
#' bwplot(tempo ~ massat | caq, 
#'        data = PaulaEg1.12.4,
#'        ylab = "Tempo",
#'        xlab = "Presença de massa tumoral", 
#'        main = "Bwplot para Caquexia não Presente (à esquerda) ou Presente (à direita)")
#'
NULL