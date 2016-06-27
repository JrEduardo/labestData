#' @name VieiraPg57.1
#' @title Dados de um Experimento em Blocos Casualizados
#' @description Resultados de um experimento em delineamento de blocos
#'     casualizados que estudou o efeito de um fator de 3 níveis
#'     categóricos sobre uma variável resposta representada na escala
#'     dos números inteiros.
#' @format Um \code{data.frame} com 12 observações e 3 variáveis, em que
#'
#' \describe{
#'
#' \item{\code{trat}}{Fator categórico 3 níveis.}
#'
#' \item{\code{bloc}}{Fator de 5 níveis, usado para controle local.}
#'
#' \item{\code{resp}}{Variável resposta em números inteiros.}
#'
#' }
#' @keywords DBC
#' @source Vieira, S. (1999).  Estatística experimental (2th ed.).  São
#'     Paulo, SP: Atlas. (pág. 57, exercício 3).
#' @examples
#'
#' data(VieiraPg57.1)
#'
#' str(VieiraPg57.1)
#'
#' library(lattice)
#'
#' xyplot(resp ~ trat, groups = bloc, data = VieiraPg57.1,
#'        type = "o", xlab = "Tratamento", ylab = "Resposta")
#'
NULL
