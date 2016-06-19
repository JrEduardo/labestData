#' @name PimentelTb16.3.1
#' @title Suscetibilidade de Variedades de Soja ao Ataque de Nematóides
#' @description Experimento de Arruda (1952), em blocos casualizados, em
#'     que se compararam 21 variedades de soja para estudar sua
#'     suscetibilidade ao ataque de nematóides. Em cada parcela foram
#'     colocadas plantas da variedade Abura, bastante suscetível a
#'     nematóides cuja infestação seria proporcional à quantidade de
#'     nematoides do solo. Tanto as raízes das variedades estudadas como
#'     as da variedade padrão tiveram sua infestação avaliada a olho,
#'     com atribuição de notas de 0 (sem ataque aparente) a cinco (com
#'     infestação severa). Das variedades estudadas, apenas 15 foram
#'     registradas.
#' @format Um \code{data.frame} com 60 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{bloc}}{Fator de 4 níveis qualitativos, usado para
#'     controle local.}
#'
#' \item{\code{varied}}{Fator de 15 níveis qualitativos, que são as
#'     variedades de soja.}
#'
#' \item{\code{X}}{Média das notas para infestação nas plantas da
#'     variedade padrão, suscetível ao ataque de nematoide.}
#'
#' \item{\code{Y}}{Média das notas para infestação nas plantas das
#'     variedades estudadas.}
#'
#' }
#' @keywords DBC COV
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 16.3.1, pág. 306)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb16.3.1)
#' str(PimentelTb16.3.1)
#'
#' PimentelTb16.3.1$varied <- with(PimentelTb16.3.1,
#'                                 reorder(varied, Y))
#'
#' cex <- with(PimentelTb16.3.1, {
#'     x <- X - min(X)
#'     cex <- x/max(x)
#'     cex <- 0.5 + 1 * cex
#'     nums <- function(x) seq(min(x), max(x), length.out = 5)
#'     key <- list(text = list(formatC(nums(x), digits = 1)),
#'                 points = list(cex = nums(cex), pch = 1),
#'                 title = "Nematóides nas cultivar suscestível",
#'                 cex.title = 1.1,
#'                 columns = 5)
#'     return(list(cex = cex, key = key))
#' })
#'
#' xyplot(Y ~ varied, data = PimentelTb16.3.1,
#'        cex = cex$cex, key = cex$key,
#'        ylab = "Nível de infestação de nematoides",
#'        xlab = "Variedade")
#'
NULL
