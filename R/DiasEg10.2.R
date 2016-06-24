#' @name DiasEg10.2
#' @title Percentual de Germinação
#' @description Experimento em delineamento inteiramente casualizado
#'     onde são avaliados os percentuais de germinação de sementes de 2
#'     cultivares, submetidas a 6 tempos de condicionamento osmótico, em
#'     um ensaio de parcela subdividida com 4 repetições.
#' @format Um \code{data.frame} com 48 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{cult}}{Fator categórico que representa as cultivares.}
#'
#' \item{\code{tempo}}{Fator categórico que representa os tempos de
#'     condicionamento. Como não é conhecida a escala real do tempo
#'     (horas, dias, etc), optou-se por manter como fator categórico. O
#'     tempo é o fator da subparcela.}
#'
#' \item{\code{rept}}{Inteiro que identifica as repetições.}
#'
#' \item{\code{pg}}{Percentual de germinação das sementes.}
#'
#' }
#' @keywords DIC PS
#' @source Dias, L. A. S., Barros, W. S. (2009). Biometria
#'     Experimental. Viçosa, MG: UFV. (Exemplo 10.2, pág. 286)
#' @examples
#'
#' library(lattice)
#'
#' data(DiasEg10.2)
#' str(DiasEg10.2)
#'
#' xtabs(~cult + tempo, data = DiasEg10.2)
#'
#' xyplot(pg ~ tempo, groups = cult, data = DiasEg10.2,
#'        type = c("p", "a"), jitter.x = TRUE,
#'        auto.key = list(title = "Cultivares", cex.title = 1.1,
#'                        columns = 2),
#'        xlab = "Tempo de condicionamento osmótico",
#'        ylab = "Percentagem de germinação")
#'
NULL
