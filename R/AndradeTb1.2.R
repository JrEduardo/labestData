#' @name AndradeTb1.2
#' @title Experimento de Produção de Milho em função do Nitrogênio
#' @description Experimento que tem como objetivo verificar o
#'     comportamento da produção de milho sob o efeito de diferentes
#'     doses de nitrogênio. Para cada dose de nitrogênio foram plantados
#'     cinco canteiros de terra de \eqn{10m^{2}} cada. Portanto o
#'     tamanho da amostra para cada dose de nitrogênio é cinco.
#' @format Um \code{data.frame} com 25 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator de 5 níveis qualitativos que são as dosagens
#'     de Nitrogênio, em \eqn{kg.ha^{-1}}.}
#'
#' \item{\code{rept}}{Fator de 5 níveis qualitativos que são as
#'     repetições do experimento.}
#'
#' \item{\code{prod}}{Produção de milho, em \eqn{kg.ha^{-1}}.}
#'
#' }
#' @keywords DBC
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Tabela
#'     1.1, pág. 37)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeTb1.2)
#' str(AndradeTb1.2)
#'
#' xyplot(prod ~ trat,
#'        groups = rept,
#'        data = AndradeTb1.2,
#'        type = c("p", "a"),
#'        auto.key = list(title = "Repetições",
#'                        cex.title = 1.1,
#'                        columns = 5),
#'        xlab = "Dosagem de Nitrogênio (em kg/ha)",
#'        ylab = "Produção de Milho (em kg/ha)")
#'
NULL