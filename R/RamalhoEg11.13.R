#' @name RamalhoEg11.13
#' @title Produção de Grãos de Milho em Diferentes Populações
#' @description Experimento envolvendo populações de milho no
#'     delinemanto em blocos aumentados com 4 populações comuns e 25
#'     populações regulares.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pop}}{Fator de 29 níveis que indica os tratamentos
#'     aplicados. 4 não regulares (I a IV) e 25 regulares (1 a 25).}
#'
#' \item{\code{bloc}}{Fator de 5 níveis do experimento, usado para
#'     fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de milho, medidos em kg/parcela
#'     nas unidades experimentais.}
#'
#' }
#' @keywords DBI
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Exemplo 11.13, pág. 188)
#' @examples
#'
#' library(lattice)
#' 
#' data(RamalhoEg11.13)
#' 
#' xyplot(prod ~ pop, groups = bloc, data = RamalhoEg11.13,
#'        xlab = "População de Milho",
#'        ylab = "Produção em kg/parcela")
#'
NULL