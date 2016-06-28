#' @name StorckTb2
#' @title Peso das Plantas 30 ap\enc{ó}{o}s a Semeadura
#' @description Experimento referente ao peso das plantas aos 30 dias
#'     após a semeadura.
#' @format data.frame com 20 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{trat}{Fator de níveis nominais que são os tratamento
#'     aplicados.}
#'
#' \item{rep}{Número inteiro que identifica as repetições de cada
#'     tratamento.}
#'
#' \item{peso}{Peso das plantas 30 dias após a semeadura.}
#'
#' }
#' @keywords DIC
#' @source Storck, L., Garcia, B. C., Lopes, S. J., Estefanel,
#'     V. (2011). Experimentação Vegetal (3th ed.). Santa Maria, RS:
#'     UFMS. (Tabela 2, pág. 21)
#' @examples
#'
#' library(lattice)
#'
#' data(StorckTb2)
#' str(StorckTb2)
#'
#' xyplot(peso ~ trat,
#'        data = StorckTb2,
#'        ylab = "Peso das plantas",
#'        xlab = "Tratamentos")
#'
NULL
