#' @name ZimmermannTb12.8
#' @title Dados de área sob a curva do progresso de uma doença
#' @description Dados de um ensaio que avaliou as cultivares para a área
#'     foliar atacada por brusone (Pyricularia Orizae L.) em diferentes
#'     datas e se calculou área sob a curva do progresso da doença. Este
#'     primeiro experimento foi semeado na densidade de duzentas
#'     sementes por metro. Os dados foram transformados por logaritmo
#'     natural, procurando-se uma maior homogeneização das variâncias.
#' @format Um \code{data.frame} com 18 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais. Tratamento aplicado em
#'     plantas.}
#'
#' \item{bloco}{Número inteiro que identifica o bloco da observação.}
#'
#' \item{prod}{Área sob a curva do progresso de uma doença.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (pg 252)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.8)
#'
#' xyplot(prod ~ trat , groups = bloco, data = ZimmermannTb12.8,
#'        type = c("p","a"),
#'        xlab = "Tratamentos",
#'        ylab = "Área sob a curva do progresso da doença")
#'
#' aggregate(prod ~ trat, data = ZimmermannTb12.8,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
NULL
