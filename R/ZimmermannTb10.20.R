#' @name ZimmermannTb10.20
#' @title Nitrogênio, Irrigação e Preparo do Solo para Feijoeiro
#' @description Dados de um experimento conduzido em faixas, no
#'     delineamento de blocos ao acaso, com duas repetições e parcelas
#'     divididas. Se testaram, nas faixas horizontais, as lâminas de
#'     água aplicada em Irrigação por aspersão, nas faixas verticais as
#'     formas de preparo de solo e nas subparcelas, doses de
#'     nitrogênio. Os dados são de massa de 100 grãos de feijão, sem
#'     unidade de medida.
#' @format Um \code{data.frame} com 72 observações e 5 variáveis
#'
#' \describe{
#'
#' \item{\code{lam}{Fator de níveis numéricos. Identifica a lâmina de
#'    água da observação.}
#'
#' \item{\code{nit}}{Fator de níveis numéricos. Identifica a dose de
#'     nitrogênio.}
#'
#' \item{\code{solo}}{Fator de níveis numéricos. Identifica a forma de
#'     preparação do solo.}
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica a repetição
#'    da observação.}
#'
#' \item{\code{massa}}{Massa de 100 grãos de feijão, sem unidade de
#'     medida.}
#'
#' @keywords DBC PSS EF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.20, pág 213)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.20)
#'
#' str(ZimmermannTb10.20)
#'
#' ftable(xtabs(~solo + nit + lam, data = ZimmermannTb10.20))
#'
#' xyplot(massa ~ lam | solo, groups = nit,
#'        data = ZimmermannTb10.20,
#'        type = c("p", "a"), as.table = TRUE,
#'        auto.key = list(title = "Níveis de nitrgênio",
#'                        cex.title = 1.1, columns = 3),
#'        strip = strip.custom(strip.names = TRUE, var.name = "Solo"),
#'        xlab = "Lâmina de irrigação",
#'        ylab = "Massa de 100 grãos de feijão")
#'
NULL
