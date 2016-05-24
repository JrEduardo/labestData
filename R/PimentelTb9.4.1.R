#' @name PimentelTb9.4.1
#' @title Experimento de Brix de Variedades de Mangueira
#' @description Experimento referente ao brix de frutos de 5 variedades
#'     de mangueira, colhidos de 3 pés por variedade. De cada pé foram
#'     coletados 4 frutos, um de cada um dos pontos cardeais. Este
#'     ensaio pode ser considerado como em parcelas subdivididas, sendo
#'     cada parcela uma mangueira, e as subparcelas são as 4 faces de
#'     cada árvore, correspondentes aos 4 pontos cardeais.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{direcao}}{Fator de 4 níveis qualitativos, que são os 4
#'     principais pontos cardeais (Norte, Sul, Leste e Oeste).}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos, que são as
#'     diferentes variedades de mangueira.}
#'
#' \item{\code{brix}}{Brix de mangas de diversas variedades, sendo este
#'     a média de 4 frutos}
#'
#' }
#' @keywords PSS
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 9.4.1)
#' @examples
#'
#' library(lattice)
#'
#' xyplot(brix ~ varied,
#'        groups = direcao,
#'        data = PimentelTb9.4.1,
#'        xlab = "Variedade ordenada em Pontos Cardeais",
#'        ylab = "Brix")
#'
#'
NULL