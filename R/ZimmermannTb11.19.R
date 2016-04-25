#' @name ZimmermannTb11.19
#' @title Produtividade de arroz irrigado
#' @description Dados de um experimento fatorial \eqn{2^5}, com
#'     confundimento da interação de quarta ordem (\code{M*A*C*D*I}).
#'     Estudou-se os cinco principais problemas da cultura: controle de
#'     invasoras, adubação, irrigação, controle de doenças e
#'     cultivar. Do experimento original, está-se utilizando apenas a
#'     primeira repetição, e a interação de quarta ordem (5 fatores) foi
#'     confundida com blocos.  Os dados da produtividade do arroz estão
#'     em kg/ha, e M = manejo da irrigação (0 = permanente e 1 =
#'     intermitente), A = adubação (0 = 30kg/ha e 1 = 60kg/ha de N), C =
#'     cultivar (0 = IAC 435 e 1 = IR 841-63-5-1-9-33), D = controle de
#'     doenças (0 = sem controle e 1 = aplicação de Manzate) e I =
#'     controle de invasoras (0 = Stam F-34 e 1 = Ronstar).
#' @format Um \code{data.frame} com 32 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da
#'     repetição.}
#'
#' \item{\code{iden}}{Fator de níveis numéricos. É a identificação que
#'     representa o tratamento.}
#'
#' \item{\code{prod}}{Produtividade de arroz irrigado.}
#'
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 237)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.19)
#'
#' str(ZimmermannTb11.19)
#'
#' ftable(xtabs(~iden + bloco, data = ZimmermannTb11.19))
#'
#' xyplot(prod ~ iden, groups = bloco, data = ZimmermannTb11.19,
#'        type = c("p", "a"),
#'        xlab = "Fatores", ylab = "Produção",
#'        main = "Análise de um fatorial com confundimento"))
NULL

# # Para te ajudar a transformar em 3 colunas.
# a <- as.data.frame(
#     apply(
#         do.call(rbind,
#                 with(ZimmermannTb11.19,
#                      strsplit(as.character(iden), ""))),
#         MARGIN = 2, as.integer))
#
# names(a) <- c("?", "??", "???", "????", "?????")
#
# cbind(ZimmermannTb11.19, a)
#
# ZimmermannTb11.19$iden <- NULL
