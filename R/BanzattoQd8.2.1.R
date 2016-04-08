#' @name BanzattoQd8.2.1
#' @title Grupo de Ensaios de Competição de Batata
#' @description Dados referentes de um grupo de 4 ensaios de competição
#'     de 10 cultivares de batata, realizado por Filgueira (1991) em
#'     Guaíra - SP. Os ensaios foram instalados no delineamento de
#'     blocos casualizados com 4 repetições. A variável resposta é a
#'     produção de tubérculos, em t ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 160 observações e 4 variáveis.
#'
#' \describe{
#'
#' \item{\code{exper}}{Fator de níveis vategóricos que identifica o
#'     experimento (ensaio)).}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que indentifica os
#'     blocos dentro de um experimento.}
#'
#' \item{\code{cult}}{Fator de níveis categóricos que indentifica as
#'     cultivares de batata.}
#'
#' \item{\code{prod}}{Produção de tubérculos, em tom ha^{^{-1}}.}
#'
#' }
#' @keywords DBC GE
#' @source Banzatto, D. A., Kronka, S. D. (2013). Experimentação
#'     Agrícola (4th ed.). Jaboticabal, SP: Funep. (Quadro 8.2.1,
#'     pág. 190)
#'
#' Filgueira, F. A. R. (1991). Interação genótipo ambiente em batata
#'     (\emph{Solanum tuberosum} L. spp \emph{tuberosum}). Tese
#'     (Doutorado em Produção Vegetal). Faculdade de Ciências Agrárias e
#'     Veterinárias, Universidade Estadual Paulista, Jaboticabal: SP.
#' @examples
#'
#' library(lattice)
#'
#' data(BanzattoQd8.2.1)
#'
#' str(BanzattoQd8.2.1)
#'
#' ftable(xtabs(~exper + bloco + cult, data = BanzattoQd8.2.1))
#'
#' with(BanzattoQd8.2.1,
#'      addmargins(tapply(prod, list(cult, exper), FUN = mean)))
#'
#' xyplot(prod ~ cult | exper, data = BanzattoQd8.2.1,
#'        groups = bloco, type = c("p", "a", "g"), as.table = TRUE,
#'        auto.key = list(space = "right", title = "Bloco",
#'                        cex.title = 1, columns = 1),
#'        scales = list(x = list(rot = 90)),
#'        xlab = "Cultivares",
#'        ylab = expression("Produção de tubérculos"~(t~ha^{-1})))
#'
NULL
