#' @name ManlyTb4.5
#' @title Crânios egípcios
#'
#' @title Cães pré-históricos da Tailândia
#'
#' @description Estudo em ancestrais de cães da Tailândia, 
#' através de medições da mandíbula. Acréscimo de variáveis do Data ManlyTb1.4. 
#'
#' @format Um \code{data.frame} com 5 grupo caninos e 10 variáveis.
#' 
#' \describe{
#'
#' \item{\code{grup}}{Grupo canino}
#' 
#' \item{\code{compm}}{Comprimento da mandíbula em milímetros (mm)}
#' 
#'\item{\code{largmapm}}{Largura da mandíbula abaixo do primeiro molar (mm)}
#' 
#'\item{\code{largca}}{Largura do côndilo aricular}
#'
#' \item{\code{altmapm}}{Altura da mandíbula abaixo ao primeiro molar (mm)}
#' 
#' \item{\code{comppm}}{Comprimento do primeiro molar (mm).}
#' 
#' \item{\code{largpm}}{Largura do primeiro molar (mm).}
#' 
#' \item{\code{compptm}}{Comprimento do primeiro ao terceiro molar (mm).}
#' 
#'\item{\code{comppqp}}{Comprimento do primeiro ao quarto pré-molar (mm).}
#'  
#'\item{\code{largci}}{Largura do canino inferior (mm).}
#'
#'\item{\code{sexo}}{Código para sexo, se for 1 é masculino, se for 2 é feminino e caso contrário é desconhecido}
#' }
#' 
#' @keywords TS
#' @source Manly, B. J. F. (2005). Métodos Estatísticos Multivariados - uma introdução.
#'      Porto Alegre, RS: Bookman (pg 67 à 69)
#' @examples
#'
#' data(ManlyTb4.5)
#' require(lattice)
#' require(reshape2)
#' 
#' ManlyTb4.5long <- melt(ManlyTb4.5, id.vars = "grup")
#'
#' bwplot(value ~grup | variable, data = ManlyTb4.5long,
#'         scales = c(list(relation = "free"), list(x=list(draw=FALSE))),
#'       ylab = "",
#'        main = "Boxplot de entre os grupo das medições da mandíbula",
#'        par.settings = list( box.umbrella=list(col = c(1,2,3,4,6)), 
#'                             box.dot=list(col = c(1,2,3,4,6)), 
#'                             box.rectangle = list(col = c(1,2,3,4,6))),
#'        key = list(points = list(col=c(1,2,3,4,6), pch=19),
#'                   space = "top",
#'                   columns=2,
#'                   text=list(c("Caes modernos da Tailandia", "Chacais dourados", "Cuons", 
#'                               "Lobos indianos", "Caes pre-historicos tailandeses"))))
NULL