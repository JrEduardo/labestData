#' @name ManlyTb1.2
#' @title Crânios egípcios
#'
#' @description Medidas de crânios egípcios masculinos em cinco períodos de tempo. Unidade de medida em milímetro.
#'
#' @format Um \code{data.frame} com tamanho 30 unidades de crânio para cada perído de tempo, com quatro variáveis de medida.
#' 
#' \describe{
#' 
#' \item{\code{grup}{Identificação do grupo}}
#'
#' \item{\code{x1}}{Largura máxima.}
#' 
#' \item{\code{x2}}{Altura basibregamática.}
#' 
#' \item{\code{x3}}{Comprimento basialveolar.}
#'
#' \item{\code{x4}}{Altura nasal.}
#' 
#' }
#' Na figura abaixo apresenta as referências das variáveis no crânio.
#' \if{html}{\figure{ManlyTb1-2.jpg}{options: width="250px"}}
#' \if{latex}{\figure{ManlyTb1-2.jpg}{options: width=1.75in}} 
#' 
#' @keywords Afd
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - uma introdução.
#'      Porto Alegre, RS: Bookman (pg 16)
#' @examples
#'
#' data(ManlyTb1.2)
#' require(lattice)
#' require(reshape2)
#'
#' splom(~ManlyTb1.2[2:5] | grup, data = ManlyTb1.2, 
#'     layout=c(3,2), 
#'     pscales = 0,
#'     varnames = c("x1", "x2","x3", "x4"),
#'     main = "Gráfico de dispersão das medidas de crânio para cada grupo" )
#'     
#' ManlyTb1.2long <- melt(ManlyTb1.2, id.vars = "grup")
#'  
#' bwplot(value ~grup | variable, data = ManlyTb1.2long,
#'        scales = list(relation = "free"), 
#'        ylab = "", 
#'        main = "Boxplot de entre grupos das medições de crânio" )
#'
#'             
NULL