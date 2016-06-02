#' @name PimentelTb9.4.1
#' @title Brix de Variedades de Mangueira em Faces Diferentes da Planta
#' @description Experimento que mediu o grau brix de frutos de 5
#'     variedades de mangueira, colhidos de 3 pés por variedade. De cada
#'     pé foram coletados 4 frutos, um em cada lado da planta voltado
#'     para os pontos cardeais (N, S, L e O). Este ensaio pode ser
#'     considerado como em parcelas subdivididas, sendo cada parcela uma
#'     mangueira, e as subparcelas são as 4 faces de cada árvore,
#'     correspondentes aos 4 pontos cardeais.
#' @format Um \code{data.frame} com 60 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{direcao}}{Fator de 4 níveis qualitativos que são os 4 os
#'     pontos cardeais Norte, Sul, Leste e Oeste.}
#'
#' \item{\code{varied}}{Fator de 5 níveis qualitativos que são as
#'     variedades de mangueira.}
#'
#' \item{\code{brix}}{Brix do fruto da magueira (unidade de medida não
#'     informada).}
#'
#' }
#' @keywords PS
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística Experimental
#'     (15th ed.). Piracicaba, SP: FEALQ. (Tabela 9.4.1, pág. 175)
#' @examples
#'
#' library(lattice)
#'
#' data(PimentelTb9.4.1)
#' str(PimentelTb9.4.1)
#'
#' xyplot(brix ~ varied,
#'        groups = direcao, type = c("p", "a"),
#'        data = PimentelTb9.4.1,
#'        xlab = "Variedades",
#'        ylab = "Brix",
#'        auto.key = list(title = "Direção", cex.title = 1.1,
#'                        columns = 2))
#'
NULL
