#' @name ManlyTb11.3
#' @title Distâncias rodoviárias
#'
#' @description Distâncias rodoviárias (em milhas) entre cidades na ilha
#' Sul da Nova Zelândia
#'
#' @format Uma matriz (13x13) com as distâncias rodoviárias entre as 
#' cidades da ilha Sul da Nova Zelândia.
#' 
#' @keywords EM
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - 
#'      uma introdução. Porto Alegre, RS: Bookman (pg 182)
#'      
#' @examples
#'
#' data(ManlyTb11.3)
#' 
#' require(lattice)
#' 
#' levelplot(ManlyTb11.3, xlab = "", ylab = "", main = "Gráfico das 
#' distâncias rodoviárias", scales = list(x = list(rot=90)))
NULL