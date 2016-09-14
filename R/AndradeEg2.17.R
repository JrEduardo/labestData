#' @name AndradeEg2.17
#' @title Comprimento e Peso de \emph{Penaeus Paulensis}
#' @description Comprimento do corpo \eqn{X_c}, dado em mm, e peso
#'     \eqn{X_p} de fêmeas, dado em g, de Penaeus paulensis (Crustacea,
#'     Decapoda, Penaidae), obtidos nas despescas dos viveiros do Centro
#'     de Ciências Agrárias (CCA) da Universidade Federal de Santa
#'     Catarina (UFSC). 
#' @format Um \code{data.frame} com 18 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{Xc}}{Comprimento do Corpo em mm.}
#'
#' \item{\code{Peso}}{Peso em gramas.}
#'
#' }
#' @keywords AAS
#' @source Estatística para as ciências agrárias e biológicas: com
#'     noções de experimentação / Dalton F. Andrade, Paulo J. Ogliari.
#'     2. ed. rev. e ampl. - Florianópolis: Ed. da UFSC, 2010. (Exemplo
#'     2.17, pág. 128)
#' @examples
#'
#' library(lattice)
#'
#' data(AndradeEg2.17)
#' str(AndradeEg2.17)
#'
#' xyplot(jitter(Xp) ~ Xc,
#'        data = AndradeEg2.17,
#'        type = c("p", "r"),
#'        xlab = "Comprimento do Corpo (em mm)",
#'        ylab = "Peso (em gramas)")
#'
NULL