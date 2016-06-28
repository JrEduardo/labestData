#' @name FariaQd14.3
#' @title Aduba\enc{çã}{ca}o com F\enc{ó}{o}sforo na Produ\enc{çã}{ca}o de Mat\enc{é}{e}ria Seca de Parte
#'     A\enc{é}{e}rea de Milho
#' @description Os dados abaixo são provenientes de um ensaio
#'     experimental realizado em casa de vegetação, montado no
#'     delineamento em blocos casualizados, com 5 repetições, para
#'     avaliar o efeito de doses de fósforo na produção de matéria seca
#'     da parte aérea do milho.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{P}}{Fator métrico que representa as doses de fósforo (mg
#'     kg\eqn{^{-1}}).}
#'
#' \item{\code{bloco}}{Fator que representa os blocos dentro da casa de
#'     vegetação.}
#'
#' \item{\code{mspa}}{Massa da matéria seca da parte aérea das
#'     plantas de milho, g vaso\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC
#' @source Faria, J. C. (2009). Notas de aulas expandidas (10th ed.)
#'     Ilhéus - BA: UESC. (Quadro 14.3 pág. 200)
#' @examples
#'
#' library(lattice)
#'
#' data(FariaQd14.3)
#' str(FariaQd14.3)
#'
#' aggregate(mspa ~ P, data = FariaQd14.3, FUN = mean)
#'
#' xyplot(mspa ~ P, data = FariaQd14.3,
#'        groups = bloc, type = "o")
#'
NULL
