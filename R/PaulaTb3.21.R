#' @name PaulaTb3.21 
#' @title Distribuição de Rotifers de duas espécies
#' @description Experimento com duas espécies de *rotifers*, um tipo  
#'     microscópio de invertebrado aquático, para determinar a densidade 
#'     relativa para cada uma das espécies. São apresentados pra cada espécie
#'     a densidade relativa da substância, o número de *rotifers* expostos 
#'     e o número de *rotifers* em suspensão. 
#'      
#' @format Um \code{data.frame} com 40 observações e 4 variáveis.
#' \describe{
#' 
#' \item{\code{dens}}{Densidade.}
#' 
#' \item{\code{susp}}{Rotifers suspensos.}
#' 
#' \item{\code{exp}}{Rotifers expostos.}
#' 
#' \item{\code{esp}}{Espécie (Polyarthra, Keratella).}
#' 
#' }
#' @keywords binários
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Tb 3.21, pág. 257)
#'
#' @examples
#'
#' data(PaulaTb3.21)
#' 
#' str(PaulaTb3.21)
#' 
#' library(lattice)
#' 
#' xyplot(dens ~ susp + exp,
#'        groups = esp,
#'        data = PaulaTb3.21,
#'        xlab = " ",
#'        ylab = "Densidade",
#'        auto.key = list(space="top", columns=2, 
#'                        title="Espécie", cex.title=1,
#'                        lines=TRUE, points=FALSE))
#' 
NULL