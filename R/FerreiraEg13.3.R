#' @name FerreiraEg13.3
#' @title Classifica\enc{çã}{ca}o de Solos na Regi\enc{ã}{a}o Amaz\enc{ô}{o}nica
#' @description Dados amostrais relativos ao teor de zinco (\emph{Zn}) e
#'     ferro \emph{Fe}, em ppm, obtidos em solos de pastagem e de
#'     floresta na região amazônica.
#' @format Um \code{data.frame} com 30 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pop}}{Fator de dois níveis que indica a qual população a
#'     observação pertence, F se provém da floresta e P se provém de
#'     pastagem.}
#'
#' \item{\code{zinco}}{Teor de zinco (\emph{Zn}) do solo, em ppm.}
#'
#' \item{\code{ferro}}{Teor de ferro (\emph{Fe}) do solo, em ppm.}
#'
#' }
#' @keywords AnaDisc
#' @source D. F. (2011). Estatística Multivariada (2nd ed.). Lavras, MG:
#'     Editora UFLA. (Exemplo 13.3, pág. 596-597)
#' @examples
#'
#' data(FerreiraEg13.3)
#' str(FerreiraEg13.3)
#'
#' library(lattice)
#'
#' xyplot(zinco ~ ferro, groups = pop, data = FerreiraEg13.3,
#'        grid = TRUE, lwd = 2,
#'        auto.key = list(
#'            title = "População", cex.title = 1,
#'            corner = c(0.95, 0.90), points = TRUE))
#'
#' (discr <- MASS::lda(pop ~ zinco + ferro, data = FerreiraEg13.3))
#' plot(discr)
#'
#' table(predict(discr)$class, FerreiraEg13.3$pop)
#'
NULL
