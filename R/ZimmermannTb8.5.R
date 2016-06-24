#' @name ZimmermannTb8.5
#' @title Produção de Grãos de Feijão em Delineamento de Blocos Aumentos
#'     de Federer
#' @description Dados de um estudo em desenho de blocos aumentados de
#'     Federer, com total de dezoito blocos, cada um com quatro
#'     testemunhas (1 a 4), e 12 linhagens, num total de 216
#'     linhagens. Os dados são de apenas 10 dos blocos, contendo 9
#'     parcelas em cada um, 4 delas sendo testemunhas e as 5 restantes
#'     são linhagens. A resposta medida foi a produção de grãos de
#'     feijão em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 90 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos do
#'     experimento. Cada bloco tem tamanho 9.}
#'
#' \item{\code{linh}}{Fator categórico que identifica as linhagens do
#'     experimento. A linhagens identificas de 1 a 4 são as
#'     testemunhas.}
#'
#' \item{\code{prod}}{Produção de grãos de feijão (ka ha\eqn{^{-1}}).}
#'
#' }
#' @keywords BAF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 8.5, pág. 158)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb8.5)
#' str(ZimmermannTb8.5)
#'
#' xtabs(~linh, data = ZimmermannTb8.5)
#' xtabs(~bloc, data = ZimmermannTb8.5)
#'
#' xyplot(prod ~ reorder(linh, prod), data = ZimmermannTb8.5,
#'        xlab = "Linhagens (ordenadas)",
#'        ylab = expression("Produção de grãos de feijão"~(kg~ha^{-1})))
#'
NULL
