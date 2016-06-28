#' @name PimentelEg7.4
#' @title Experimento de Aduba\enc{çã}{ca}o com Torta de Filtro e Adubo Mineral
#' @description Experimento fatorial 2\eqn{^{2}} em que os fatores eram
#'     adubo mineral e torta dos filtros de Oliver de usinas de açúcar.
#' @format Um \code{data.frame} com 16 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloco}}{Fator de 4 níveis qualitativos usado para
#'     controle local.}
#'
#' \item{\code{mineral}}{Fator de 2 níveis métricos codificados que
#'     representa a aplicação de adubo mineral, sendo que a variável
#'     assume 1, quando houver adubo mineral na parcela e -1 caso
#'     contrário.}
#'
#' \item{\code{torta}}{Fator de 2 níveis métricos codificados que
#'     representa a utilização de torta dos filtros de Oliver de usinas
#'     de açúcar, sendo que a variável assume 1, quando houver torta na
#'     parcela e -1 caso contrário.}
#'
#' \item{\code{y}}{Respoata medida no ensaio.}
#'
#' }
#' @keywords FAT2
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Exemplo 7.4, pág. 120)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelEg7.4)
#' str(PimentelEg7.4)
#'
#' xtabs(~mineral + torta, data = PimentelEg7.4)
#'
#' xyplot(y ~ mineral, groups = torta, data = PimentelEg7.4,
#'        type = c("p", "a"),
#'        xlab = "Adubo mineral",
#'        ylab = "Resposta",
#'        auto.key = list(columns = 2,
#'                        title = "Torta", cex.title = 1.1))
#'
NULL
