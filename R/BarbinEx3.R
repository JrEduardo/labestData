#' @name BarbinEx3
#' @title Podridão Mole de Manga em Função do Tratamento Térmico
#' @description OS dados referen-se a notas (médias de 6 frutos)
#'     atribuída a podridão mole de manga (fruto) sob diferentes
#'     tratamentos térmicos, de um experimento inteiramente ao acaso
#'     realizado pelo Prof. Vladimir R. Sampaio, do Departamento de
#'     Horticultura, ESALQ-USP.
#' @format Um \code{data.frame} com 28 observações e 2 variáveis.
#' \describe{
#'
#' \item{\code{tterm}}{Fator categórico que indica o tratamento térmico.}
#'
#' \item{\code{nota}}{Nota atribuída a podridão mole de manga, valor
#'     resultante da média de 6 frutos avaliados.}
#'
#' }
#' @keywords DIC
#' @source Barbin, D. (2013). Planejamento e Análise Estatística de
#'     Experimentos Agronômicos (2nd ed.). Londrina, PR:
#'     Mecenas. (Exercício 3, pág. 119)
#' @examples
#'
#' library(lattice)
#'
#' data(BarbinEx3)
#'
#' str(BarbinEx3)
#'
#' xyplot(nota ~ tterm, data = BarbinEx3,
#'        type = c("p", "a"),
#'        xlab = "Tratamentos térmicos",
#'        ylab = "Nota")
#'
NULL
