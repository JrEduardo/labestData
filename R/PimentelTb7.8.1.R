#' @name PimentelTb7.8.1
#' @title Experimento de Acidez de Variedades de Mangas
#' @description Experimento fatorial, de 6 x 3 x 3, referente a acidez
#'     de 6 variedades de mangas, em 3 meses do ano e em 3 anos
#'     agrícolas sucessivos reproduzidos de um trabalho de Simão (1960).
#' @format Um \code{data.frame} com 54 observações e 4 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{mes}}{Fator de 3 níveis qualitativos, que representam 3
#'     meses distintos do ano, sendo: Novembro (N); Dezembro (D);
#'     Janeiro (J).}
#'
#' \item{\code{ano}}{Fator de 3 níveis qualitativos, que representam 3
#'     anos consecutivos, são eles: 1957; 1958; 1959.}
#'
#' \item{\code{varied}}{Fator de 6 níveis qualitativos, que são as 6
#'     variedades de manga.}
#'
#' \item{\code{acidez}}{Acidez das mangas sobre uma escala arbitrária.}
#'
#' }
#' @keywords FAT3
#' @source Pimentel-Gomes, F. (2009). Curso de Estatística
#'     Experimental (15th ed.). Piracicaba, SP: FEALQ. (Tabela 7.8.1)
#' @examples
#'
#' library(lattice)
#'
#' grafico1 <- xyplot(acidez ~ varied,
#'                    groups = ano,
#'                    data = PimentelTb7.8.1,
#'                    xlab = "Variedades de Manga separadas por Ano",
#'                    ylab = "Acidez das Mangas")
#'
#' grafico2 <- xyplot(acidez ~ varied,
#'                    groups = mes,
#'                    data = PimentelTb7.8.1,
#'                    xlab = "Variedades de Manga separadas por Mês",
#'                    ylab = "Acidez das Mangas")
#'
#' print(grafico1, position = c(0, 0, 0.5, 1), more = TRUE)
#'
#' print(grafico2, position = c(0.5, 0, 1, 1))
#'
NULL