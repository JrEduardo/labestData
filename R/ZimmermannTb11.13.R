#' @name ZimmermannTb11.13
#' @title Absorção e Translocação de Zinco em Arroz de Terras Altas
#' @description Dados de um experimento fatorial \eqn{3^3}, com
#'     confundimento parcial de 2 graus de liberdade da interação dupla.
#'     O estudo é sobre a absorção e translocação de zinco em arroz de
#'     terras altas sob a influência de fósforo e calcário num
#'     delineamento de blocos ao acaso com três repetições. Os níveis
#'     dos fatores eram de 0,5 e 10 kg/ha para o zinco (A), 0, 50 e 100
#'     kg/ha para o fósforo e 0, 1.5 e 3 ton/ha para o
#'     calcário. Utilizou-se o grupo Z de Yates. Os dados são de
#'     produção de grãos, em kg ha\eqn{^{-1}}.
#' @format Um \code{data.frame} com 81 observações e 7 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{zinco}}{Fator de níveis numéricos que indica o nível de
#'     zinco aplicado, em escala codificada.}
#'
#' \item{\code{fosf}}{Fator de níveis numéricos que indica o nível de
#'     fósforo aplicado, em escala codificada.}
#'
#' \item{\code{calc}}{Fator de níveis numéricos que indica o nível de
#'     calcário aplicado, em escala codificada.}
#'
#' \item{\code{bloco}}{Fator de níveis categóricos que identifica os
#'     blocos.}
#'
#' \item{\code{rept}{Inteiro que distingue entre as repetições da mesma
#'     cela experimental em cada bloco.}
#'
#' \item{\code{prod}}{Produtividade de grãos, em kg ha\eqn{^{-1}}.}
#'
#' @keywords DBC FAT confundimento
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 234)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb11.13)
#'
#' str(ZimmermannTb11.13)
#'
#' ftable(xtabs(~fosf + calc + zinco + bloco, data = ZimmermannTb11.13))
#'
#' xyplot(prod ~ fosf | calc, groups = zinco,
#'        data = ZimmermannTb11.13,
#'        type = c("p", "a"),
#'        xlab = "Repetição",
#'        ylab = expression("Produção de grãos"~(kg~ha^{-1})))
#'
NULL
