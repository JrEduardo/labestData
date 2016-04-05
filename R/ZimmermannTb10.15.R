#' @name ZimmermannTb10.15
#' @title Adubação Após Pastagem em Cultivares de Arroz
#' @description Dados de um experimento conduzido em faixas, no
#'     delineamento de blocos ao acaso, para testar o efeito da
#'     aplicação de adubos em arroz após pastagem, no qual foram
#'     utilizadas três cultivares. Nesta tabela constam os dados de de
#'     produção de arroz, em kg ha\eqn{^{-1}}, duas dessas cultivares.
#' @format Um \code{data.frame} com 24 observações e 4 variáveis
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de níveis numéricos. Identifica o bloco ao
#'     qual a observação pertence.}
#'
#' \item{\code{adub}}{Fator de níveis numéricos. Identifica a adubação
#'     aplicada.}
#'
#' \item{\code{cult}}{Fator de níveis nominais. Identifica a
#'     cultivar de arroz.}
#'
#' \item{\code{prod}}{Produção de arroz em kg ha\eqn{^{-1}}.}
#'
#' }
#' @keywords DBC EF
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 10.15, pág. 210)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb10.15)
#'
#' str(ZimmermannTb10.15)
#'
#' aggregate(prod ~ cult + adub, data = ZimmermannTb10.15,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
#' xyplot(prod ~ adub, groups = cult, data = ZimmermannTb10.15,
#'        type = c("p", "a"),
#'        xlab = "Nível de adubação",
#'        ylab = expression("Produção de arroz"~(kg~ha^{-1})))
#'
NULL
