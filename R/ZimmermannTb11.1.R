#' @name ZimmermannTb11.1
#' @title Espaçamento e Densidade de Plantio na Produção de Arroz
#' @description Dados de um experimento fatorial \eqn{2^3}, com
#'     confundimento total da interação dupla. O ensaio foi conduzido em
#'     dois blocos ao acaso com quatro repetições. Os fatores são:
#'     densidades de plantio de 50 e 90 sementes por metro, espaçamentos
#'     entre linhas de 35cm e 50cm e fator presença ou ausência de
#'     adubação nitrogenada em cobertura. A variável resposta é a
#'     produtividade de grãos, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 32 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{rept}{Fator de níveis numéricos. Identifica a repetição
#'    da observação.}
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco da
#'     repetição.}
#'
#' \item{\code{prod}}{Produção de arroz, em kg ha\eqn{^{-1}}.}
#'
#' \item{\code{iden}}{NAO USAR IDEM. NAO USAR IDEM. NAO USAR IDEM}
#'
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 221)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.1)
#'
#' str(ZimmermannTb11.1)
#'
#' xyplot(prod ~ iden | rept, groups = bloco, data = ZimmermannTb11.1,
#'        type = c("p", "a"),
#'        xlab = "Identificação do tratamento",
#'        ylab = expression ("Produção de Arroz"~(kg~ha^{-1})))
#'
NULL

xtabs(~iden + bloco, data = ZimmermannTb11.1)

# Para te ajudar a transformar em 3 colunas.
a <- as.data.frame(
    apply(
        do.call(rbind,
                with(ZimmermannTb11.1,
                     strsplit(as.character(iden), ""))),
        MARGIN = 2, as.integer))
names(a) <- c("?", "??", "???")

cbind(ZimmermannTb11.1, a)

ZimmermannTb11.1$iden <- NULL
ZimmermannTb11.1$rept <- as.integer(ZimmermannTb11.1$rept)
