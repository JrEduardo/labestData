#' @name ManlyTb11.5
#' @title Comportamento da votação de parlamentares
#'
#' @description Número de votos discordantes entre os parlamentares de Nova Jersey em leis que concernem sobre problemas ambientais
#'
#' @format Um \code{matrix} com 15 parlamentares
#' 
#' \describe{
#'
#' \item{\code{Colnames}}{Identificação dos parlamentares.}
#' 
#' \item{\code{Rownames}}{Identificação das parlamentares.}
#' 
#' }
#' @keywords EM
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - uma introdução.
#'      Porto Alegre, RS: Bookman (pg 185)
#' @examples
#'
#' data(ManlyTb11.5)
#' 
#' levelplot(ManlyTb11.5, xlab = "", ylab = "", main = "Gráfico das distâncias",
#'  scales = list(x = list(rot=90)))
NULL