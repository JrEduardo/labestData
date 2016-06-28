#' @name ZimmermannTb11.13
#' @title Absor\enc{çã}{ca}o e Transloca\enc{çã}{ca}o de Zinco em Arroz de Terras Altas
#' @description Dados de um experimento fatorial \eqn{3^3}, com
#'     confundimento parcial de 2 graus de liberdade da interação dupla.
#'     O estudo é sobre a absorção e translocação de zinco em arroz de
#'     terras altas sob a influência de fósforo e calcário num
#'     delineamento de blocos ao acaso organizado em repetições.
#'     Utilizou-se o grupo Z de Yates para fazer o confundimento. Os
#'     dados são de produção de grãos, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 81 observações e 6 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{rept}}{Fator categórico que identifica as repetições. Cada
#'     repetição tem 3 blocos de tamanho 9.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica os
#'     blocos em cada repretição.}
#'
#' \item{\code{zinco}}{Fator de níveis codificados que indica o nível de
#'     zinco aplicado: 0, 5 e 10 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{fosf}}{Fator de níveis codificados que indica o nível de
#'     fósforo aplicado: 0, 50 e 100 kg ha\eqn{^{-1}}.}
#'
#' \item{\code{calc}}{Fator de níveis codificados que indica o nível de
#'     calcário aplicado: 0, 1.5 e 3 kg ton ha\eqn{^{-1}}.}
#'
#' \item{\code{prod}}{Produtividade de grãos, em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 11.13, pág. 234)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.13)
#'
#' str(ZimmermannTb11.13)
#'
#' ftable(xtabs(~fosf + calc + zinco,
#'              data = ZimmermannTb11.13))
#'
#' ftable(xtabs(~fosf + calc + zinco +
#'                  interaction(bloco, rept),
#'              data = ZimmermannTb11.13))
#'
#' xyplot(prod ~ factor(fosf) | factor(calc),
#'        data = ZimmermannTb11.13, as.table = TRUE,
#'        groups = zinco, type = c("p", "a"),
#'        xlab = "Fósforo",
#'        ylab = expression("Produção de grãos"~(kg~ha^{-1})),
#'        auto.key = list(title = "Zinco", cex.title = 1.1,
#'                        columns = 3),
#'        strip = strip.custom(strip.names = TRUE,
#'                             var.name = "Calcário"))
#'
NULL
