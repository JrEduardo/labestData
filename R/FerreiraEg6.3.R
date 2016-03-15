#' @name FerreiraEg6.3
#' @title Avaliação dos Solos de Pastagem e Capoeira Nova da Amazônia
#' @description Os dados referem-se a avaliação de parcelas de solo da
#'     Amazônia. Os atributos quantidade de cálcio, magnésio e saturação
#'     de bases foram avaliados em parcelas de solo sob os sistemas de
#'     uso: pastagem, com 13 observações e capoeira nova, com 30
#'     observações.
#' @format Um \code{data.frame} com 43 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{solo}}{Fator que indica o sistema de uso da parcela de
#'     solo. \code{CN} para Capoeira Nova e \code{P} para Pastagem.}
#'
#' \item{\code{Ca}}{Teor de cálcio na parcela de solo.}
#'
#' \item{\code{Mg}}{Teor de magnésio na parcela de solo.}
#'
#' \item{\code{SB}}{Índice de saturação de bases calculado na parcela de
#' solo.}
#'
#' }
#' @keywords TODO
#' @source Ferreira, D. F. (2011). Estatística Multivariada (2nd
#'     ed.). Lavras, MG: Editora UFLA. (Exemplo 6.3 pág. 240-241 e
#'     exemplo 6.6 pág. 268-269)
#'
#' @examples
#' data(FerreiraEg6.3)
#' 
#' library(lattice)
#' 
#' splom(~ FerreiraEg6.3[2:4], groups = solo, data = FerreiraEg6.3,
#'       type = c("p", "smooth"), grid = TRUE,
#'       auto.key = list(columns = 2, title = "Tipo de solo"))
#' 
#' # Matrizes de covariâncias e correlações
#' by(FerreiraEg6.3[2:4], FerreiraEg6.3[1], cov)
#' by(FerreiraEg6.3[2:4], FerreiraEg6.3[1], cor)
#'
NULL
