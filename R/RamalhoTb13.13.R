#' @name RamalhoTb13.13
#' @title Produção de Grãos de Progênies de Feijão
#' @description Experimento referente a avaliação de progênies
#'     provenientes do cruzamento (ESAL 501 x Rio Tibagi), obtidos em 3
#'     gerações (F3, F4 e F5). Foi utilizado o delineamento de blocos
#'     casualizados.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{prog}}{Fator de 10 níveis que representa a cultivar de
#'     feijão utilizada no experimento.}
#'
#' \item{\code{gerac}}{Fator de 3 níveis (F3, F4 e F5) que são os blocos
#'     do experimento, utilizado para fazer controle local.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão, medida em g/parcela.}
#'
#' }
#' @keywords COV DBC
#' @source Ramalho, M. A. P., Ferreira, D. F., Oliveira, A. C. (2005).
#'     Experimentação em Genética e Melhoramento de Plantas (2th ed.).
#'     Lavras: UFLA. (Tabela 13.13, pág. 251)
#' @examples
#'
#' data(RamalhoTb13.13)
#'
#' str(RamalhoTb13.13)
#'
#' library(lattice)
#'
#' xyplot(prod ~ prog, groups = gerac, data = RamalhoTb13.13,
#'        type = c("p", "a"),
#'        xlab = "Progênie de feijoeiro",
#'        ylab = "Produção (g/parcela)",
#'        auto.key = list(title = "Geração", cex.title = 1.1,
#'                        columns = 3))
#'
#' ftable(with(RamalhoTb13.13,
#'             tapply(prod,
#'                    list(prog = prog, gerac = gerac),
#'                    FUN = identity)))
#'
NULL
