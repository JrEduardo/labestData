#' @name PimentelTb13.5.1
#' @title Grupo de Experimentos de Adubação de Cana-de-açúcar
#' @description Conjunto de 38 ensaios fatoriais de \eqn{3^{3}} com N, P
#'     e K, em cana-de-açúçar, com dados de cana-planta e soca, obtidos
#'     por Strauss (1951). O nutriente foi aplicado nas doses de zero,
#'     60 e 120 \eqn{kg.ha^{-1}} de \eqn{P_2O_5}, só na cana-planta.
#' @format Um \code{data.frame} com 228 observações e 4 variáveis, em
#'     que
#'
#' \describe{
#'
#' \item{\code{safra}}{Fator de 2 níveis qualitativos, que as safras da
#'     cana-planta e da cana-soca.}
#'
#' \item{\code{P}}{Fator de 3 níveis qualitativos, que são as doses de
#'     fósforo (P), em kg ha\eqn{^{-1}} de P\eqn{_2}O\eqn{_5}.}
#'
#' \item{\code{prod}}{Médias de produção nas parcelas de 38 ensaios de
#'     adubação de cana-de-açúcar.}
#'
#' \item{\code{ue}}{Inteiro que identifica a unidade experimental que
#'     foi medida na safra da planta-cana e cana-soca.}
#'
#' }
#' @keywords GE
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 13.5.1, pág. 259)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb13.5.1)
#' str(PimentelTb13.5.1)
#'
#' xyplot(prod ~ P,
#'        groups = safra,
#'        auto.key = list(title = "Safra", cex.title = 1,
#'                        columns = 2),
#'        type = c("a", "p"),
#'        data = PimentelTb13.5.1,
#'        ylab = expression("Produção de cana-de-açúcar"~(ton~ha^{-1})),
#'        xlab = expression(P[2]*O[5]~(kg~ha^{-1})))
#'
#' da <- reshape2::dcast(data = PimentelTb13.5.1,
#'                       formula = ue ~ safra,
#'                       value.var = "prod")
#' str(da)
#'
#' da <- merge(da, PimentelTb13.5.1[, c("ue", "P")],
#'             by = "ue", all.x = TRUE, all.y = FALSE)
#'
#' xyplot(soca ~ planta, groups = P, data = da,
#'        type = c("p", "r"), aspect = "iso", grid = TRUE,
#'        xlab = "Produção da cana-planta",
#'        ylab = "Produção da cana-soca",
#'        auto.key = list(title = expression(P[2]*O[5]~(kg~ha^{-1})),
#'                        cex.title = 1.1, columns = 3))
#'
NULL
