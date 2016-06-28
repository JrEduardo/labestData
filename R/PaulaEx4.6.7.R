#' @name PaulaEx4.6.7
#' @title N\enc{ú}{u}mero de Falhas em Pe\enc{ç}{c}as de Tecido
#' @description Dados referentes à produção de peças de tecido em uma
#'     determinada fábrica. A fábrica registra o comprimento da peça
#'     produzida e o número de falhas encontradas.
#' @format Um \code{data.frame} com 32 observações e 2 variáveis.
#' \describe{
#' 
#' \item{\code{comp}}{Comprimento da peça de tecido produzida, em metros.}
#' 
#' \item{\code{nfalhas}}{Número de falhas encontradas na peça.}
#' 
#' }
#' @keywords contagem superdispersão
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.7, pág. 343)
#'
#' @references Hinde, J. (1982). Compound Poisson Regression Models in R
#'     (Gilchrist ed.). Springer, New York.
#' @examples
#'
#' data(PaulaEx4.6.7)
#' 
#' str(PaulaEx4.6.7)
#'
#' library(lattice)
#' xyplot(nfalhas ~ comp, data = PaulaEx4.6.7,
#'        type = c("p", "g", "smooth"), xlab = "Comprimento", ylab = 
#'        "Número de falhas")
#' 
#' histogram( ~nfalhas/comp, data = PaulaEx4.6.7, 
#'       xlab = "Número de falhas por metro de tecido", ylab = "Frequência")
#'
NULL
