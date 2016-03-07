#' @name PimentelPg72
#' @title Ensaio de alimentação de leitoas
#' @description Experimento realizado pelos técnicos Manoel Becker,
#'     Luís Paulin Neto, Geraldo Leme da Rocha e Benjamin Cintra, no
#'     qual dois tratamentos foram estudados (feno de alfafa e feno
#'     de quicuio), aplicados a 8 leitoas Duroc Jersey bem homogêneas.
#'     A quatro leitoas, escolhidas por sorteio, foi fornecida a
#'     ração com feno de alfafa, e às quatro restantes, a ração com
#'     feno de quicuio. Por fim, foram observados os ganhos de peso
#'     no período experimental de três meses.
#' @format data.frame com 8 observações e 2 variáveis, em que
#'
#' \describe{
#'
#' \item{feno}{Fator de 2 níveis qualitativos, que são os diferentes
#'     tipos de feno.}
#'
#' \item{ganhopeso}{Aumento do peso das leitoas, observado em
#'     quilogramas.}
#'
#' }
#' @keywords DIC feno
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba: FEALQ.
#' @examples
#'
#' library(lattice)
#' xyplot(jitter(ganhopeso) ~ feno, 
#'        data= PimentelPg72,
#'        xlab = "Tipo de Feno",
#'        ylab = "Ganho de Peso")
#'
NULL