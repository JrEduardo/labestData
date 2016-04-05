#' @name RamalhoTb7.1
#' @title Volume de Madeira em Progênies de Eucalipto
#' @description Pesquisa sobre avaliação de progênies de
#'     \emph{Eucaliptus camaldulensis}, referente ao volume de madeira
#'     por árvore, cujos dados foram obtidos pela V. \& M. Florestal
#'     Ltda. Experimento realizado em blocos casualizados.
#' @format Um \code{data.frame} com 180 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{prog}}{Progênie de \emph{Eucaliptus camaldulensis}.}
#'
#' \item{\code{rept}}{Número inteiro que indica o número da parcela com
#'     árvores de cada progênie.}
#'
#' \item{\code{plant}}{Inteiro que representa as árvores no parcela.}
#'
#' \item{\code{vol}}{Volume de madeira por árvore, medido em m\eqn{^3
#'     \times 10^4}}
#'
#' }
#' @keywords DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras, MG: UFLA. (Tabela 7.1, pág 102).
#' @examples
#'
#' library(lattice)
#'
#' data(RamalhoTb7.1)
#'
#' str(RamalhoTb7.1)
#'
#' xtabs(~prog + rept, data = RamalhoTb7.1)
#'
#' xyplot(vol ~ plant, data = RamalhoTb7.1,
#'        jitter.x = TRUE, groups = rept,
#'        xlab = "Progênie",
#'        ylab = expression("Volume de madeira"~(10^{4}~m^{3})))
#'
NULL
