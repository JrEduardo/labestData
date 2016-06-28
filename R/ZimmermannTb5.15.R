#' @name ZimmermannTb5.15
#' @title N\enc{ú}{u}mero de Perfilhos em Arroz em Fun\enc{çã}{ca}o de 6 Tratamentos
#' @description Esperimento conduzido pelo pesquisador Evane Ferreira,
#'     em Santo Antônio de Goiás, em 1998. O estudo avaliou o número de
#'     perfilhos de arroz em função de 6 tratamentos (não mencionados)
#'     arranjados em um delineamento quadrado latino.
#' @format Um \code{data.frame} com 36 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{linha}}{Fator categórico que representa as linhas do
#'     quadrado latino.}
#'
#' \item{\code{coluna}}{Fator categórico que representa as colunas do
#'     quadrado latino.}
#'
#' \item{\code{trat}}{Fator categórico que representa os tratamentos
#'     estudados.}
#'
#' \item{\code{perf}}{Número de perfilhos de arroz.}
#'
#' }
#' @keywords DQL contagem
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 5.15, pág. 107)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb5.15)
#' str(ZimmermannTb5.15)
#'
#' xyplot(perf ~ trat,
#'        data = ZimmermannTb5.15,
#'        type = c("p", "a"),
#'        xlab = "Tratamento",
#'        ylab = "Número de perfilhos")
#'
NULL
