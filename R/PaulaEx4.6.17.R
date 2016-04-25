#' @name PaulaEx4.6.17
#' @title Avaliação de Detergentes
#' @description Dados resultantes de uma pesquisa em que 1008 pessoas
#'     receberam duas marcas de detergente, \code{X} e \code{M}, e
#'     posteriormente responderam às perguntas sobre a temperatura da
#'     água, uso anterior do detergente \code{M}, detergente de
#'     preferência e maciez da água.
#' @format Um \code{data.frame} com 24 observações e 5 variáveis.
#'     \describe{
#' 
#' \item{\code{temp}}{Temperatura da água, mensurada em dois níveis
#'     \code{alta} e \code{baixa}.}
#' 
#' \item{\code{usom}}{Uso anterior do detergente da marca \code{M}
#'     (\code{sim} ou \code{não}).}
#' 
#' \item{\code{prefer}}{Detergente de preferência (\code{M} ou
#'     \code{X}).}
#' 
#' \item{\code{maciez}}{Maciez da água, mensurada em três níveis
#'     \code{forte}, code{leve} e \code{média}.}
#' 
#' \item{\code{nind}}{Número de pessoas que tiveram respostas conforme
#'     combinação de \code{temp}, \code{usom}, \code{prefer} e \code{maciez}.}
#' 
#' }
#' @keywords contagem
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 4.6.17
#'     pág. 347)
#'
#' @references Bishop, Y. M. M., Fienberg, S. E., Holland,
#'     P. W. (1975). Discrete Multivariate Analysis: Theory and
#'     Practice. MIT Press, Cambridge.
#' @examples
#'
#' data(PaulaEx4.6.17)
#' 
#' str(PaulaEx4.6.17)
#' 
#' xt <- xtabs(nind ~ ., data = PaulaEx4.6.17)
#' ftable(xt)
#' plot(xt)
#' 
#' library(latticeExtra)
#' useOuterStrips(    
#'     xyplot(nind ~ maciez | prefer + usom,
#'            groups = temp,
#'            data = PaulaEx4.6.17,
#'            type = c("p", "g", "a"),
#'            auto.key = list(cex.title = 1, columns = 2,
#'                            title = "Temperatura da água"))
#'     )
#'
NULL
