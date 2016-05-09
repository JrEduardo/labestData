#' @name PaulaEx3.7.24
#' @title Cor dos olhos
#' @description Os dados provém de 78 famílias com pelo menos 6 filhos
#'     cada uma.
#'     
#'     Foram tabelados fatores referentes a cor dos olhos dos pais e dos
#'     avós. Também foi incluido o número de filhos por família e o
#'     número de filhos com olhos claros.
#'     
#' @format Um \code{data.frame} com 78 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{cop}}{ Fator de 6 níveis referentes a cor dos
#'     olhos dos pais. (1: ambos claros, 2: ambos castanhos,
#'      3: ambos escuros, 4: claro e castanho, 5: claro e escuro 
#'      e 6: castanho e escuro)
#'     }
#' 
#' \item{\code{coa}}{ Fator de 15 níveis referentes a cor dos olhos
#'     dos avós. (1: todos claros, 2: todos castanhos, 3: todos escuros,
#'      4: três claros e um castanho, 5: três claros e um escuro, 
#'      6: um claro e três castanhos, 7: um escuro e três castanhos, 
#'      8: um claro e três escuros, 9: um castanho e três escuros, 
#'      10: dois claros e dois castanhos, 11: dois claros e dois escuros,
#'      12: dois castanhos e dois escuros, 13: dois claros, 
#'      um castanho e um escuro, 14: um claro, dois castanhos e um 
#'      escuro e 15: um claro, um castanho e dois escuros) }
#' 
#' \item{\code{nFilho}}{ Número de filhos na família. }
#' 
#' \item{\code{nClaro}}{ Número de filhos com olhos claros na família. }
#' 
#' }
#' @keywords TODO
#' @source Paula, G. A. (2004). Modelos de regress?o: com apoio
#' computacional. S?o Paulo, SP: IME-USP. (0.0, p?g. 000)
#' @examples
#' 
#' library(lattice)
#' 
#' data(PaulaEx3.7.24)
#' 
#' xyplot(nClaro ~ nFilho | cop , data = PaulaEx3.7.24)
#' model <- glm(cop ~ nClaro, data = PaulaEx3.7.24, family = "binomial")
#' plot(model)
#' 
NULL