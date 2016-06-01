#' @name BarbinEx17
#' @title Efeito do Espaçamento na Produtividade de Laranjeira Valência
#' @description Dados de produtividade de laranja, em kg por planta, de
#'     um ensaio em blocos casualizados estudando o efeito do
#'     espaçamento de plantio de laranjeira Valência (clone novo) sobre
#'     \emph{trifoliata} realizado na Estação Experimental de Limeira
#'     (IAC, SP). As colheitas foram obtidas em 5 anos consecutivos,
#'     portanto, trata-se de um estudo longitudinal.
#' @format Um \code{data.frame} com 100 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{ano}}{Ano da colheita do pomar.}
#'
#' \item{\code{bloc}}{Fator categórico que identifica os blocos do
#'     experimento.}
#'
#' \item{\code{espac}}{Fator categórico que representa os espaçamentos
#'     (m) utilizados para plantio das plantas.}
#'
#' \item{\code{prod}}{Produtividade de laranja, em kg por planta (média
#'     de duas plantas por parcela).}
#'
#' }
#' @keywords DBC PS FAT2
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 17, pág. 209)
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx17)
#'
#' str(BarbinEx17)
#'
#' with(BarbinEx17,
#'      addmargins(tapply(prod, list(espac, bloc, ano), FUN = sum)))
#'
#' xyplot(prod ~ espac | as.factor(ano), groups = bloc,
#'        data = BarbinEx17, type = c("p", "a"), as.table = TRUE,
#'        xlab = "Espaçamento de plantio (m x m)",
#'        ylab = "Produtividade de laranja (kg/planta)",
#'        auto.key = list(columns = 2, cex.title = 1,
#'                        title = "Blocos"))
#'
#' xyplot(prod ~ ano, groups = espac,
#'        data = BarbinEx17, type = c("p", "a"),
#'        xlab = "Ano da colheita",
#'        ylab = "Produtividade de laranja (kg/planta)",
#'        auto.key = list(corner = c(0.05, 0.95),
#'                        columns = 2, cex.title = 1,
#'                        title = "Espaçamentos (m x m)"))
#'
NULL
