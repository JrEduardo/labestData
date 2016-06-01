#' @name PaulaEx3.7.25
#' @title Pulsação Alterial em Repouso em Homens que Fuman
#' @description Os dados provém de uma amostra de 92 homens adultos que
#'     foram questionados sobre o hábito de fumar. Neles foi medido peso
#'     e pulsação, classificada como normal e alta. Deseja-se saber se a
#'     pulsação alta é influência pelo hábito de fumar, controlando-se
#'     para o efeito do peso.
#' @format Um \code{data.frame} com 92 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{pulsa}}{Fator categórico de 2 níveis que representa a
#'     classificação da pulsação em repouso em normal ou alta.}
#'
#' \item{\code{fuma}}{Fator categórico de 2 níveis referente ao hábito
#'     de fumar: sim ou não.}
#'
#' \item{\code{peso}}{Peso do indivíduo, em quilogramas (kg).}
#'
#' }
#' @keywords binomial
#' @source Paula, G. A. (2004). Modelos de regressão: com apoio
#'     computacional. São Paulo, SP: IME-USP. (Exercício 3.7.25,
#'     pág. 280)
#' @examples
#'
#' library(lattice)
#'
#' data(PaulaEx3.7.25)
#' str(PaulaEx3.7.25)
#'
#' xyplot(pulsa ~ peso, groups = fuma, data = PaulaEx3.7.25,
#'        jitter.y = TRUE,
#'        auto.key = list(columns = 2,
#'                        title = "Fumante", cex.title = 1.1),
#'        xlab = "Peso (kg)", ylab = "Pulsação em repouso")
#'
#' mosaicplot(xtabs(~fuma + pulsa, data = PaulaEx3.7.25))
#'
NULL
