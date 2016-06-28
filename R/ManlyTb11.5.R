#' @name ManlyTb11.5
#' @title Vota\enc{çõ}{co}es de parlamentares
#'
#' @description Número de votos discordantes entre os parlamentares de 
#' Nova Jersey em leis referentes a problemas ambientais
#'
#' @format Uma matriz com os números de votos discordantes entre 15
#' parlamentares de Nova Jersey.
#' 
#' @keywords EM
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados 
#'      - uma introdução. Porto Alegre, RS: Bookman (pg 185)
#'      
#' @examples
#'
#' data(ManlyTb11.5)
#' 
#' require(lattice)
#' 
#' levelplot(ManlyTb11.5, xlab = "", ylab = "", main = "Gráfico das 
#' distâncias entre parlamentares", scales = list(x = list(rot=90)))
NULL
