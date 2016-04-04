#' @name RamalhoEg8.8
#' @title Produção de Grãos de Feijão
#' @description Dados da produção de grãos de feijão obtidos por Corte 
#'     et al. (2002) relativos à avaliação de 6 populações segregantes 
#'     avaliadas nas gerções F_{2}, F_{3} e F_{4} com diferentes números 
#'     de blocos. Delineamento em blocos casualizados.
#' @format Um \code{data.frame} com 72 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{ger}}{Fator de 3 níveis que representa a gerações de 
#'     feijão.}
#'
#' \item{\code{bloc}}{Fator usado para fazer controle local.}
#'
#' \item{\code{pop}}{Fator de 6 níveis que representa as populações das
#'     gerações do experimento.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medidos em kg/ha nas
#'     unidades experimentais.}
#'
#' }
#' @keywords DBC FAT2
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (pg 123)
#'     
#'     Corte, H. R., Ramalho, M. A. P., Gonçalves, F. M. A., Abreu. A de
#'     F. B. Natural Selection for Grain Yield in Dry Bean Population 
#'     Bred by the Bulk Method. Euphytica. Wageningen. v.123, n.3. 2002 
#' @examples
#'
#' library(lattice)
#' 
#' xyplot(prod ~ pop, data = RamalhoEg8.8,
#'        groups = bloc,
#'        jitter.x = TRUE,
#'        xlab = "Tratamento",
#'        ylab = "Produção em (kg/ha)")
#'
NULL