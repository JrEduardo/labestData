#' @name ZimmermannTb11.10
#' @title Espaçamento Entre Linhas e Densidade no Plantio de Feijão
#' @description Dados de um experimento fatorial \eqn{3^2}, com a
#'     cultura do feijoeiro testando espaçamento entre linhas de plantio
#'     (0.45m, 0.6m e 0.75m) e densidade de plantio (7, 10 e 13 sementes
#'     por metro). Os dados se referem à cultivar Jalo
#'     Precoce. Adotou-se o delineamento de blocos ao acaso com
#'     confundimento parcial de 2 graus de liberdade da interação
#'     densidade (A) com espaçamento (B). Os resultados são de altura de
#'     plantas, em centímetros.
#' @format Um \code{data.frame} com 36 observações e 6 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}{Fator de níveis numéricos. Identifica a repetição
#'    da observação.}
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da
#'     repetição.}
#'
#' \item{\code{altura}}{Altura de plantas, em cm.}
#'
#' \item{\code{iden}}{Fator de níveis numéricos. É a identificação que
#'     representa o tratamento.}
#'
#' \item{\code{espac}}{Fator de níveis numéricos. Identifica o espaçamento
#'     utilizado.}
#'
#' \item{\code{dens}}{Fator de níveis numéricos. Identifica a densidade de
#'    plantio utilizada.}
#'
#' @keywords DBC FAT
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 231)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.10)
#'
#' str(ZimmermannTb11.10)
#'
#' ftable(xtabs(~espac + dens + bloco, data = ZimmermannTb11.10))
#'
#' xyplot(altura ~ espac, groups = dens,
#'        data = ZimmermannTb11.10,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        xlab = "Níveis de espaçamento",
#'        ylab = "Altura de Plantas (cm)")
#'
NULL
