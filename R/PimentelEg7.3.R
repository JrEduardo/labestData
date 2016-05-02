#' @name PimentelEg7.3
#' @title Experimento de Adubação Mineral e Adubação com Vinhaça
#' @description Experimento fatorial, de \eqn{2^{2}}, em que os fatores
#'     eram adubação mineral completa e adubação com vinhaça. As
#'     parcelas foram dispostas em blocos ao acaso.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{mineral}}{Fator de 2 níveis qualitativos, que é usado
#'     para o controle do efeito que a Adubação Mineral Completa causa
#'     no experimento, sendo que a variável assume 1 quando houver
#'     Adubação Mineral Completa na parcela e -1 caso contrário.}
#'
#' \item{\code{vinhaca}}{Fator de 2 níveis qualitativos, que é usado
#'     para o controle do efeito que a Adubação com Vinhaça causa no
#'     experimento, sendo que a variável assume 1 quando houver Adubação
#'     com Vinhaça na parcela e -1 caso contrário.}
#'
#' \item{\code{y}}{Coeficiente medido em função das 3 variáveis do
#'     experimento (bloco, mineral e vinhaca).}
#'
#' }
#' @keywords FAT2
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Exemplo 7.3)
#' @examples
#'
#' library(lattice)
#'
#'xyplot(y ~ mineral + vinhaca,
#'       groups = bloco,
#'       data = PimentelEg7.3,
#'       xlab = "",
#'       ylab = "Coeficiente Medido",
#'       strip = strip.custom(factor.levels =
#'                                c("Adubação Mineral",
#'                                  "Adubação com Vinhaça")))
#'
#'
NULL