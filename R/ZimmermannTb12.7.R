#' @name ZimmermannTb12.7
#' @title Dados de área sob a curva do progresso de brusone
#' @description Dados do ensaio 1 de um experimento que avaliou 
#'     as cultivares para a área foliar atacada por brusone 
#'     (\emph{Pyricularia Orizae} L.) em diferentes datas e se 
#'     calculou área sob a curva do progresso da
#'     doença. Este primeiro experimento foi semeado na densidade de
#'     oitenta sementes por metro. Os dados foram transformados por
#'     logaritmo natural, procurando-se uma maior homogeneização das
#'     variâncias.
#' @format Um \code{data.frame} com 18 observações e 3 variáveis
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator de níveis nominais. Indica a cultivar da
#'     planta.}
#'
#' \item{\code{bloco}}{Número inteiro que identifica o bloco da
#'     observação.}
#'
#' \item{\code{aacpd}}{Logaritmo natural da área sob a curva de progresso
#'     da doença. A unidade de medida não é conhecida.}
#'
#' }
#' @keywords DBC
#' @source Zimmermann, F. J. (2004). Estatística aplicada à pesquisa
#'     agrícola (1st ed.). Santo Antônio de Goiás, GO: Embrapa Arroz e
#'     Feijão. (Tabela 12.7, pág 251)
#' @examples
#'
#' library(lattice)
#'
#' data(ZimmermannTb12.7)
#'
#' str(ZimmermannTb12.7)
#'
#' xyplot(prod ~ trat , groups = bloco, data = ZimmermannTb12.7,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos",
#'        ylab = "Logaritmo da área sob a curva de progresso da doença")
#'
#' aggregate(prod ~ trat, data = ZimmermannTb12.7,
#'           FUN = function(x) { c(mean = mean(x), var = var(x)) })
#'
NULL
