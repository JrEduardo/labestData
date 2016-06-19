#' @name PimentelTb21.5.1
#' @title Porcentagem de Plantas Doentes
#' @description Ensaio inteiramente casualizado para avaliar a
#'     porcentagem de plantas doentes em um experimento de tomateiros
#'     onde foi estudado um fator de 3 níveis. Para análise dos
#'     resultados pode-se considerar o de Kruskal- Wallis.
#' @format Um \code{data.frame} com 12 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de 3 níveis qualitativos, que são os
#'     tratamentos.}
#'
#' \item{\code{doentes}}{Porcentagem de plantas doentes em um ensaio de
#'     tomateiros.}
#'
#' }
#' @keywords DIC
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 21.5.1, pág. 384)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb21.5.1)
#' str(PimentelTb21.5.1)
#'
#' xyplot(doentes ~ trat,
#'        data = PimentelTb21.5.1,
#'        type = c("a", "p"),
#'        ylab = "Porcentagem de plantas doentes",
#'        xlab = "Tratamento")
#'
NULL
