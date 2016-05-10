#' @name PaulaEx3.7.8
#' @title Salário de Executivos
#' @description Dados referentes ao salário anual de uma 
#'     amostra aleatória de 220 executivos (145 homens e 75 mulheres). O 
#'     salário será relacionado com as variáveis: sexo, anos de experiência 
#'     no cargo e posição na empresa.
#'      
#' @format Um \code{data.frame} com 18 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{temp}}{Temperatura da germinação.}
#' 
#' \item{\code{numid}}{Nível da umidade.}
#' 
#' \item{\code{ntemp}}{Nível da temperatura.}
#' 
#' \item{\code{sgerm}}{Número de sementes que germinaram.}
#' 
#' 
#' }
#' @keywords aplicações
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Ex 3.7.8, pág. 270)
#'
#' @examples
#'
#' data(PaulaEx3.7.8)
#' 
#' str(PaulaEx3.7.8)
#' 
#' library(lattice)
#' 
#' PaulaEx3.7.8$ntemp <- as.factor(PaulaEx3.7.8$ntemp)
#' 
#' xyplot(temp ~ numid + ntemp,
#'        groups = sgerm,
#'        data = PaulaEx3.7.8,
#'        xlab = " ",
#'        ylab = "Densidade",
#'        auto.key = list(space="top", columns=2, 
#'                        title="Espécie", cex.title=1,
#'                        lines=TRUE, points=FALSE))
#'
NULL