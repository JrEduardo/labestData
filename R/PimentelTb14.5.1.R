#' @name PimentelTb14.5.1
#' @title Ensaio de Reversão na Produção de Leite
#' @description Experimento de reversão (switch-back) avaliando a
#'     produção de leite em função do nível de nutrição. Os fatores
#'     período, bloco e vaca são níveis de blocagem.
#' @format Um \code{data.frame} com 36 observações e 5 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{periodo}}{Fator de 3 níveis qualitativos, que são os
#'     períodos sucessivos de produção de leite.}
#'
#' \item{\code{bloc}}{Fator de 3 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{vaca}}{Fator de 12 níveis qualitativos, que são as raças
#'     das vacas.}
#'
#' \item{\code{trat}}{Fator de 3 níveis qualitativos, que são os
#'     tratamentos utilizados no experimento.}
#'
#' \item{\code{prod}}{Produções de leite, em kg.}
#'
#' }
#' @keywords ER
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 14.5.1, pág. 278)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb14.5.1)
#' str(PimentelTb14.5.1)
#' 
#' xyplot(prod ~ trat,
#'        groups = bloc,
#'        type = c("a", "p"),
#'        auto.key = list(title = "Bloco", cex.title = 1, columns = 3),
#'        data = PimentelTb14.5.1,
#'        ylab = "Produção de Leite (em kg)",
#'        xlab = "Tratamento Utilizado")
#'
NULL