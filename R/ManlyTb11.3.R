#' @name ManlyTb11.3
#' @title Distâncias rodoviárias
#'
#' @description Distâncias rodoviárias principais em milhas entre cidades na ilha Sul da Nova Zelândia
#'
#' @format Um \code{matrix} com 13 cidades
#' 
#' \describe{
#'
#' \item{\code{Colnames}}{Identificação das cidades.}
#' 
#' \item{\code{Rownames}}{Identificação das cidades.}
#' 
#' }
#' @keywords EM
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - uma introdução.
#'      Porto Alegre, RS: Bookman (pg 182)
#' @examples
#'
#' data(ManlyTb11.3)
#' 
#' levelplot(ManlyTb11.3, xlab = "", ylab = "", main = "Gráfico das distâncias",
#'  scales = list(x = list(rot=90)))
NULL